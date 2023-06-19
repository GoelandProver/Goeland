%------------------------------------------------------------------------------
% File     : SWW883+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : cfHeapsBase__35__SEP_IMPPOST_unfold__brokendep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : cfHeapsBase__35__SEP_IMPPOST_unfold__brokendep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.33 v7.3.0
% Syntax   : Number of formulae    :   10 (   3 unt;   0 def)
%            Number of atoms       :   28 (  10 equ)
%            Maximal formula atoms :    8 (   2 avg)
%            Number of connectives :   21 (   3   ~;   1   |;   4   &)
%                                         (   6 <=>;   7  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    9 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   14 (  14 usr;   6 con; 0-2 aty)
%            Number of variables   :   20 (  20   !;   0   ?)
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

fof('thm.cfHeapsBase.SEP_IMPPOST_def',axiom,
    ! [V_27Q1_27,V_27Q2_27] :
      ( p__01(s__02(cbool__00,c_27const_2ecfHeapsBase_2eSEP__IMPPOST_27__02(s__02(cfun__02(c_27type_2ecfHeapsBase_2eres_27__00,cfun__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),cbool__00)),V_27Q1_27),s__02(cfun__02(c_27type_2ecfHeapsBase_2eres_27__00,cfun__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),cbool__00)),V_27Q2_27))))
    <=> ! [V_27r_27] : p__01(s__02(cbool__00,c_27const_2eset__sep_2eSEP__IMP_27__02(s__02(cfun__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2ecfHeapsBase_2eres_27__00,cfun__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),cbool__00)),V_27Q1_27),s__02(c_27type_2ecfHeapsBase_2eres_27__00,V_27r_27))),s__02(cfun__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2ecfHeapsBase_2eres_27__00,cfun__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),cbool__00)),V_27Q2_27),s__02(c_27type_2ecfHeapsBase_2eres_27__00,V_27r_27)))))) ) ).

fof(conjecture,conjecture,
    ! [V_27Q1_27,V_27Q2_27] :
      ( p__01(s__02(cbool__00,c_27const_2ecfHeapsBase_2eSEP__IMPPOST_27__02(s__02(cfun__02(c_27type_2ecfHeapsBase_2eres_27__00,cfun__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),cbool__00)),V_27Q1_27),s__02(cfun__02(c_27type_2ecfHeapsBase_2eres_27__00,cfun__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),cbool__00)),V_27Q2_27))))
    <=> ( ! [V_27v_27] : p__01(s__02(cbool__00,c_27const_2eset__sep_2eSEP__IMP_27__02(s__02(cfun__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2ecfHeapsBase_2eres_27__00,cfun__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),cbool__00)),V_27Q1_27),s__02(c_27type_2ecfHeapsBase_2eres_27__00,c_27const_2ecfHeapsBase_2eVal_27__01(s__02(c_27type_2esemanticPrimitives_2ev_27__00,V_27v_27))))),s__02(cfun__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2ecfHeapsBase_2eres_27__00,cfun__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),cbool__00)),V_27Q2_27),s__02(c_27type_2ecfHeapsBase_2eres_27__00,c_27const_2ecfHeapsBase_2eVal_27__01(s__02(c_27type_2esemanticPrimitives_2ev_27__00,V_27v_27))))))))
        & ! [V_27v_27] : p__01(s__02(cbool__00,c_27const_2eset__sep_2eSEP__IMP_27__02(s__02(cfun__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2ecfHeapsBase_2eres_27__00,cfun__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),cbool__00)),V_27Q1_27),s__02(c_27type_2ecfHeapsBase_2eres_27__00,c_27const_2ecfHeapsBase_2eExn_27__01(s__02(c_27type_2esemanticPrimitives_2ev_27__00,V_27v_27))))),s__02(cfun__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2ecfHeapsBase_2eres_27__00,cfun__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),cbool__00)),V_27Q2_27),s__02(c_27type_2ecfHeapsBase_2eres_27__00,c_27const_2ecfHeapsBase_2eExn_27__01(s__02(c_27type_2esemanticPrimitives_2ev_27__00,V_27v_27)))))))) ) ) ).

%------------------------------------------------------------------------------
