%------------------------------------------------------------------------------
% File     : SWW860+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : asmProps__1__asm_deterministic__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : asmProps__1__asm_deterministic__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0
% Syntax   : Number of formulae    :   11 (   3 unt;   0 def)
%            Number of atoms       :   37 (  14 equ)
%            Maximal formula atoms :   10 (   3 avg)
%            Number of connectives :   28 (   2   ~;   1   |;   9   &)
%                                         (   6 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   16 (   6 avg)
%            Maximal term depth    :   15 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   34 (  34 usr;   5 con; 0-4 aty)
%            Number of variables   :   32 (  32   !;   0   ?)
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

fof('thm.bool.REFL_CLAUSE',axiom,
    ! [V_27A_27,V_27x_27] :
      ( s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27x_27)
    <=> p__01(s__02(cbool__00,cT__00)) ) ).

fof('thm.bool.EQ_SYM_EQ',axiom,
    ! [V_27A_27,V_27x_27,V_27y_27] :
      ( s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27y_27)
    <=> s__02(V_27A_27,V_27y_27) = s__02(V_27A_27,V_27x_27) ) ).

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

fof('thm.asmSem.asm_step_def',axiom,
    ! [V_27A_27,V__0] :
      ( ! [V_27s1_27,V_27r_27] :
          ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),chapp__02(s__02(cfun__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),cfun__02(c_27type_2enum_2enum_27__00,cbool__00)),V__0),s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s1_27))),s__02(c_27type_2enum_2enum_27__00,V_27r_27))))
        <=> s__02(c_27type_2enum_2enum_27__00,c_27const_2easmSem_2easm__state__lr_27__01(s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s1_27))) = s__02(c_27type_2enum_2enum_27__00,V_27r_27) )
     => ! [V_27c_27,V_27s1_27,V_27i_27,V_27s2_27] :
          ( p__01(s__02(cbool__00,c_27const_2easmSem_2easm__step_27__04(s__02(c_27type_2easm_2easm__config_27__01(V_27A_27),V_27c_27),s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s1_27),s__02(c_27type_2easm_2easm_27__01(V_27A_27),V_27i_27),s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s2_27))))
        <=> ( p__01(s__02(cbool__00,c_27const_2easmSem_2ebytes__in__memory_27__04(s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27const_2easmSem_2easm__state__pc_27__01(s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s1_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),c_27const_2easm_2easm__config__encode_27__02(s__02(c_27type_2easm_2easm__config_27__01(V_27A_27),V_27c_27),s__02(c_27type_2easm_2easm_27__01(V_27A_27),V_27i_27))),s__02(cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),c_27const_2easmSem_2easm__state__mem_27__01(s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s1_27))),s__02(cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),cbool__00),c_27const_2easmSem_2easm__state__mem__domain_27__01(s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s1_27))))))
            & p__01(s__02(cbool__00,c_27const_2eoption_2eoption__CASE_27__03(s__02(c_27type_2eoption_2eoption_27__01(c_27type_2enum_2enum_27__00),c_27const_2easm_2easm__config__link__reg_27__01(s__02(c_27type_2easm_2easm__config_27__01(V_27A_27),V_27c_27))),s__02(cbool__00,cT__00),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),chapp__02(s__02(cfun__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),cfun__02(c_27type_2enum_2enum_27__00,cbool__00)),V__0),s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s1_27))))))
            & s__02(cbool__00,c_27const_2easmSem_2easm__state__be_27__01(s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s1_27))) = s__02(cbool__00,c_27const_2easm_2easm__config__big__endian_27__01(s__02(c_27type_2easm_2easm__config_27__01(V_27A_27),V_27c_27)))
            & s__02(c_27type_2enum_2enum_27__00,c_27const_2easmSem_2easm__state__align_27__01(s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s1_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2easm_2easm__config__code__alignment_27__01(s__02(c_27type_2easm_2easm__config_27__01(V_27A_27),V_27c_27)))
            & s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),c_27const_2easmSem_2easm_27__03(s__02(c_27type_2easm_2easm_27__01(V_27A_27),V_27i_27),s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27const_2ewords_2eword__add_27__02(s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27const_2easmSem_2easm__state__pc_27__01(s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s1_27))),s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27const_2ewords_2en2w_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),c_27const_2easm_2easm__config__encode_27__02(s__02(c_27type_2easm_2easm__config_27__01(V_27A_27),V_27c_27),s__02(c_27type_2easm_2easm_27__01(V_27A_27),V_27i_27))))))))),s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s1_27))) = s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s2_27)
            & ~ p__01(s__02(cbool__00,c_27const_2easmSem_2easm__state__failed_27__01(s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s2_27))))
            & p__01(s__02(cbool__00,c_27const_2easm_2easm__ok_27__02(s__02(c_27type_2easm_2easm_27__01(V_27A_27),V_27i_27),s__02(c_27type_2easm_2easm__config_27__01(V_27A_27),V_27c_27)))) ) ) ) ).

fof(conjecture,conjecture,
    ! [V_27A_27,V_27c_27,V_27i_27,V_27s1_27,V_27s2_27,V_27s3_27] :
      ( ( p__01(s__02(cbool__00,c_27const_2easmSem_2easm__step_27__04(s__02(c_27type_2easm_2easm__config_27__01(V_27A_27),V_27c_27),s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s1_27),s__02(c_27type_2easm_2easm_27__01(V_27A_27),V_27i_27),s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s2_27))))
        & p__01(s__02(cbool__00,c_27const_2easmSem_2easm__step_27__04(s__02(c_27type_2easm_2easm__config_27__01(V_27A_27),V_27c_27),s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s1_27),s__02(c_27type_2easm_2easm_27__01(V_27A_27),V_27i_27),s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s3_27)))) )
     => s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s2_27) = s__02(c_27type_2easmSem_2easm__state_27__01(V_27A_27),V_27s3_27) ) ).

%------------------------------------------------------------------------------
