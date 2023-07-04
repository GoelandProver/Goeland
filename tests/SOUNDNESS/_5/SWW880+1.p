%------------------------------------------------------------------------------
% File     : SWW880+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : infer_eComplete__3__t_compat_pure_add_constraints_2__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : infer_eComplete__3__t_compat_pure_add_constraints_2__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.33 v8.1.0, 0.50 v7.5.0, 0.60 v7.4.0, 0.33 v7.3.0
% Syntax   : Number of formulae    :   46 (   9 unt;   0 def)
%            Number of atoms       :  210 (  33 equ)
%            Maximal formula atoms :   15 (   4 avg)
%            Number of connectives :  209 (  45   ~;  28   |;  49   &)
%                                         (  40 <=>;  47  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   11 (   6 avg)
%            Maximal term depth    :   11 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   29 (  29 usr;   7 con; 0-3 aty)
%            Number of variables   :  134 ( 131   !;   3   ?)
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

fof('thm.combin.C_DEF',axiom,
    ! [V_27C_27,V_27A_27,V_27B_27,Vx,Vx0,Vx1] : s__02(V_27C_27,c_27const_2ecombin_2eC_27__03(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,V_27C_27)),Vx),s__02(V_27B_27,Vx0),s__02(V_27A_27,Vx1))) = s__02(V_27C_27,chapp__02(s__02(cfun__02(V_27B_27,V_27C_27),chapp__02(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,V_27C_27)),Vx),s__02(V_27A_27,Vx1))),s__02(V_27B_27,Vx0))) ).

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

fof('thm.pair.ABS_PAIR_THM',axiom,
    ! [V_27A_27,V_27B_27,V_27x_27] :
    ? [V_27q_27,V_27r_27] : s__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),V_27x_27) = s__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),c_27const_2epair_2e_2c_27__02(s__02(V_27A_27,V_27q_27),s__02(V_27B_27,V_27r_27))) ).

fof('thm.pair.UNCURRY_DEF',axiom,
    ! [V_27C_27,V_27A_27,V_27B_27,V_27f_27,V_27x_27,V_27y_27] : s__02(V_27C_27,chapp__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),V_27C_27),c_27const_2epair_2eUNCURRY_27__01(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,V_27C_27)),V_27f_27))),s__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),c_27const_2epair_2e_2c_27__02(s__02(V_27A_27,V_27x_27),s__02(V_27B_27,V_27y_27))))) = s__02(V_27C_27,chapp__02(s__02(cfun__02(V_27B_27,V_27C_27),chapp__02(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,V_27C_27)),V_27f_27),s__02(V_27A_27,V_27x_27))),s__02(V_27B_27,V_27y_27))) ).

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

fof('thm.unify.t_unify_unifier',axiom,
    ! [V_27t2_27,V_27t1_27,V_27sx_27,V_27s_27] :
      ( ( p__01(s__02(cbool__00,c_27const_2eunify_2et__wfs_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_27))))
        & s__02(c_27type_2eoption_2eoption_27__01(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00)),c_27const_2eunify_2et__unify_27__03(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_27),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27t1_27),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27t2_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00)),c_27const_2eoption_2eSOME_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27sx_27))) )
     => ( p__01(s__02(cbool__00,c_27const_2eunify_2et__wfs_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27sx_27))))
        & p__01(s__02(cbool__00,c_27const_2efinite__map_2eSUBMAP_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_27),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27sx_27))))
        & s__02(c_27type_2einfer__t_2einfer__t_27__00,c_27const_2eunify_2et__walkstar_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27sx_27),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27t1_27))) = s__02(c_27type_2einfer__t_2einfer__t_27__00,c_27const_2eunify_2et__walkstar_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27sx_27),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27t2_27))) ) ) ).

fof('thm.unify.t_walkstar_SUBMAP',axiom,
    ! [V_27s1_27,V_27s2_27,V_27t_27] :
      ( ( p__01(s__02(cbool__00,c_27const_2efinite__map_2eSUBMAP_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s1_27),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s2_27))))
        & p__01(s__02(cbool__00,c_27const_2eunify_2et__wfs_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s2_27)))) )
     => s__02(c_27type_2einfer__t_2einfer__t_27__00,c_27const_2eunify_2et__walkstar_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s2_27),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27t_27))) = s__02(c_27type_2einfer__t_2einfer__t_27__00,c_27const_2eunify_2et__walkstar_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s2_27),s__02(c_27type_2einfer__t_2einfer__t_27__00,c_27const_2eunify_2et__walkstar_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s1_27),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27t_27))))) ) ).

fof('thm.unify.t_unify_wfs',axiom,
    ! [V_27s1_27,V_27t1_27,V_27t2_27,V_27s2_27] :
      ( ( p__01(s__02(cbool__00,c_27const_2eunify_2et__wfs_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s1_27))))
        & s__02(c_27type_2eoption_2eoption_27__01(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00)),c_27const_2eunify_2et__unify_27__03(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s1_27),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27t1_27),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27t2_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00)),c_27const_2eoption_2eSOME_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s2_27))) )
     => p__01(s__02(cbool__00,c_27const_2eunify_2et__wfs_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s2_27)))) ) ).

fof('thm.unify.t_compat_def',axiom,
    ! [V_27s_27,V_27s_7c39_7c_27] :
      ( p__01(s__02(cbool__00,c_27const_2eunify_2et__compat_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_27),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_7c39_7c_27))))
    <=> ( p__01(s__02(cbool__00,c_27const_2eunify_2et__wfs_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_27))))
        & p__01(s__02(cbool__00,c_27const_2eunify_2et__wfs_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_7c39_7c_27))))
        & ! [V_27t_27] : s__02(c_27type_2einfer__t_2einfer__t_27__00,c_27const_2eunify_2et__walkstar_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_7c39_7c_27),s__02(c_27type_2einfer__t_2einfer__t_27__00,c_27const_2eunify_2et__walkstar_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_27),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27t_27))))) = s__02(c_27type_2einfer__t_2einfer__t_27__00,c_27const_2eunify_2et__walkstar_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_7c39_7c_27),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27t_27))) ) ) ).

fof('thm.infer.pure_add_constraints_def',axiom,
    ( ! [V_27s_7c39_7c_27,V_27s_27] :
        ( p__01(s__02(cbool__00,c_27const_2einfer_2epure__add__constraints_27__03(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2einfer__t_2einfer__t_27__00,c_27type_2einfer__t_2einfer__t_27__00)),c_27const_2elist_2eNIL_27__00),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_7c39_7c_27))))
      <=> s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_27) = s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_7c39_7c_27) )
    & ! [V_27t2_27,V_27t1_27,V_27s1_27,V_27s_7c39_7c_27,V_27rest_27] :
        ( p__01(s__02(cbool__00,c_27const_2einfer_2epure__add__constraints_27__03(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s1_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2einfer__t_2einfer__t_27__00,c_27type_2einfer__t_2einfer__t_27__00)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2epair_2eprod_27__02(c_27type_2einfer__t_2einfer__t_27__00,c_27type_2einfer__t_2einfer__t_27__00),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27t1_27),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27t2_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2einfer__t_2einfer__t_27__00,c_27type_2einfer__t_2einfer__t_27__00)),V_27rest_27))),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_7c39_7c_27))))
      <=> ? [V_27s2_27] :
            ( s__02(c_27type_2eoption_2eoption_27__01(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00)),c_27const_2eunify_2et__unify_27__03(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s1_27),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27t1_27),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27t2_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00)),c_27const_2eoption_2eSOME_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s2_27)))
            & p__01(s__02(cbool__00,c_27const_2einfer_2epure__add__constraints_27__03(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s2_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2einfer__t_2einfer__t_27__00,c_27type_2einfer__t_2einfer__t_27__00)),V_27rest_27),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_7c39_7c_27)))) ) ) ) ).

fof('thm.infer_eComplete.pure_add_constraints_success',axiom,
    ! [V_27s_27,V_27constraints_27,V_27s_7c39_7c_27] :
      ( ( p__01(s__02(cbool__00,c_27const_2eunify_2et__wfs_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_27))))
        & p__01(s__02(cbool__00,c_27const_2einfer_2epure__add__constraints_27__03(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2einfer__t_2einfer__t_27__00,c_27type_2einfer__t_2einfer__t_27__00)),V_27constraints_27),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_7c39_7c_27)))) )
     => ( p__01(s__02(cbool__00,c_27const_2efinite__map_2eSUBMAP_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_27),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_7c39_7c_27))))
        & p__01(s__02(cbool__00,c_27const_2epred__set_2eSUBSET_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),c_27const_2efinite__map_2eFDOM_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_27))),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),c_27const_2efinite__map_2eFDOM_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_7c39_7c_27))))))
        & p__01(s__02(cbool__00,c_27const_2eunify_2et__compat_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_27),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_7c39_7c_27))))
        & p__01(s__02(cbool__00,c_27const_2eunify_2et__wfs_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_7c39_7c_27)))) ) ) ).

fof(conjecture,conjecture,
    ! [V__1] :
      ( ! [V_27x_27,V_27sx_27,V_27y_27] :
          ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2einfer__t_2einfer__t_27__00,cbool__00),chapp__02(s__02(cfun__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),cfun__02(c_27type_2einfer__t_2einfer__t_27__00,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2einfer__t_2einfer__t_27__00,cfun__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),cfun__02(c_27type_2einfer__t_2einfer__t_27__00,cbool__00))),V__1),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27x_27))),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27sx_27))),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27y_27))))
        <=> s__02(c_27type_2einfer__t_2einfer__t_27__00,c_27const_2eunify_2et__walkstar_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27sx_27),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27x_27))) = s__02(c_27type_2einfer__t_2einfer__t_27__00,c_27const_2eunify_2et__walkstar_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27sx_27),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27y_27))) )
     => ! [V__0] :
          ( ! [V_27sx_27,V_27x_27] : s__02(cfun__02(c_27type_2einfer__t_2einfer__t_27__00,cbool__00),chapp__02(s__02(cfun__02(c_27type_2einfer__t_2einfer__t_27__00,cfun__02(c_27type_2einfer__t_2einfer__t_27__00,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),cfun__02(c_27type_2einfer__t_2einfer__t_27__00,cfun__02(c_27type_2einfer__t_2einfer__t_27__00,cbool__00))),V__0),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27sx_27))),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27x_27))) = s__02(cfun__02(c_27type_2einfer__t_2einfer__t_27__00,cbool__00),chapp__02(s__02(cfun__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),cfun__02(c_27type_2einfer__t_2einfer__t_27__00,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2einfer__t_2einfer__t_27__00,cfun__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),cfun__02(c_27type_2einfer__t_2einfer__t_27__00,cbool__00))),V__1),s__02(c_27type_2einfer__t_2einfer__t_27__00,V_27x_27))),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27sx_27)))
         => ! [V_27ls_27,V_27s_27,V_27sx_27] :
              ( ( p__01(s__02(cbool__00,c_27const_2eunify_2et__wfs_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_27))))
                & p__01(s__02(cbool__00,c_27const_2einfer_2epure__add__constraints_27__03(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27s_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2einfer__t_2einfer__t_27__00,c_27type_2einfer__t_2einfer__t_27__00)),V_27ls_27),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27sx_27)))) )
             => p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2einfer__t_2einfer__t_27__00,c_27type_2einfer__t_2einfer__t_27__00),cbool__00),c_27const_2epair_2eUNCURRY_27__01(s__02(cfun__02(c_27type_2einfer__t_2einfer__t_27__00,cfun__02(c_27type_2einfer__t_2einfer__t_27__00,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),cfun__02(c_27type_2einfer__t_2einfer__t_27__00,cfun__02(c_27type_2einfer__t_2einfer__t_27__00,cbool__00))),V__0),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2einfer__t_2einfer__t_27__00),V_27sx_27))))),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2einfer__t_2einfer__t_27__00,c_27type_2einfer__t_2einfer__t_27__00)),V_27ls_27)))) ) ) ) ).

%------------------------------------------------------------------------------
