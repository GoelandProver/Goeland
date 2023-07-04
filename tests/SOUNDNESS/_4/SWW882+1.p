%------------------------------------------------------------------------------
% File     : SWW882+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : patProps__2__no_closures_Boolv__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : patProps__2__no_closures_Boolv__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0
% Syntax   : Number of formulae    :   11 (   7 unt;   0 def)
%            Number of atoms       :   22 (  15 equ)
%            Maximal formula atoms :    7 (   2 avg)
%            Number of connectives :   12 (   1   ~;   1   |;   7   &)
%                                         (   1 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   3 avg)
%            Maximal term depth    :    7 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   29 (  29 usr;  12 con; 0-3 aty)
%            Number of variables   :   25 (  25   !;   0   ?)
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

fof('thm.list.EVERY_DEF',axiom,
    ! [V_27A_27] :
      ( ! [V_27P_27] : s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))) = s__02(cbool__00,cT__00)
      & ! [V_27P_27,V_27h_27,V_27t_27] :
          ( p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))))
        <=> ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(V_27A_27,V_27h_27))))
            & p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27)))) ) ) ) ).

fof('thm.backend_common.false_tag_def',axiom,
    s__02(c_27type_2enum_2enum_27__00,c_27const_2ebackend__common_2efalse__tag_27__00) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) ).

fof('thm.backend_common.true_tag_def',axiom,
    s__02(c_27type_2enum_2enum_27__00,c_27const_2ebackend__common_2etrue__tag_27__00) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))) ).

fof('thm.patSem.Boolv_def',axiom,
    ! [V_27b_27] : s__02(c_27type_2epatSem_2ev_27__00,c_27const_2epatSem_2eBoolv_27__01(s__02(cbool__00,V_27b_27))) = s__02(c_27type_2epatSem_2ev_27__00,c_27const_2epatSem_2eConv_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,V_27b_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebackend__common_2etrue__tag_27__00),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebackend__common_2efalse__tag_27__00))),s__02(c_27type_2elist_2elist_27__01(c_27type_2epatSem_2ev_27__00),c_27const_2elist_2eNIL_27__00))) ).

fof('thm.patProps.no_closures_def',axiom,
    ! [V__0] :
      ( ! [V_27a_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2epatSem_2ev_27__00,cbool__00),V__0),s__02(c_27type_2epatSem_2ev_27__00,V_27a_27))) = s__02(cbool__00,c_27const_2epatProps_2eno__closures_27__01(s__02(c_27type_2epatSem_2ev_27__00,V_27a_27)))
     => ( ! [V_27v0_27] : s__02(cbool__00,c_27const_2epatProps_2eno__closures_27__01(s__02(c_27type_2epatSem_2ev_27__00,c_27const_2epatSem_2eLitv_27__01(s__02(c_27type_2east_2elit_27__00,V_27v0_27))))) = s__02(cbool__00,cT__00)
        & ! [V_27vs_27,V_27v1_27] : s__02(cbool__00,c_27const_2epatProps_2eno__closures_27__01(s__02(c_27type_2epatSem_2ev_27__00,c_27const_2epatSem_2eConv_27__02(s__02(c_27type_2enum_2enum_27__00,V_27v1_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2epatSem_2ev_27__00),V_27vs_27))))) = s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(c_27type_2epatSem_2ev_27__00,cbool__00),V__0),s__02(c_27type_2elist_2elist_27__01(c_27type_2epatSem_2ev_27__00),V_27vs_27)))
        & ! [V_27v3_27,V_27v2_27] : s__02(cbool__00,c_27const_2epatProps_2eno__closures_27__01(s__02(c_27type_2epatSem_2ev_27__00,c_27const_2epatSem_2eClosure_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2epatSem_2ev_27__00),V_27v2_27),s__02(c_27type_2epatLang_2eexp_27__00,V_27v3_27))))) = s__02(cbool__00,cF__00)
        & ! [V_27v6_27,V_27v5_27,V_27v4_27] : s__02(cbool__00,c_27const_2epatProps_2eno__closures_27__01(s__02(c_27type_2epatSem_2ev_27__00,c_27const_2epatSem_2eRecclosure_27__03(s__02(c_27type_2elist_2elist_27__01(c_27type_2epatSem_2ev_27__00),V_27v4_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2epatLang_2eexp_27__00),V_27v5_27),s__02(c_27type_2enum_2enum_27__00,V_27v6_27))))) = s__02(cbool__00,cF__00)
        & ! [V_27v7_27] : s__02(cbool__00,c_27const_2epatProps_2eno__closures_27__01(s__02(c_27type_2epatSem_2ev_27__00,c_27const_2epatSem_2eLoc_27__01(s__02(c_27type_2enum_2enum_27__00,V_27v7_27))))) = s__02(cbool__00,cT__00)
        & ! [V_27vs_27] : s__02(cbool__00,c_27const_2epatProps_2eno__closures_27__01(s__02(c_27type_2epatSem_2ev_27__00,c_27const_2epatSem_2eVectorv_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2epatSem_2ev_27__00),V_27vs_27))))) = s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(c_27type_2epatSem_2ev_27__00,cbool__00),V__0),s__02(c_27type_2elist_2elist_27__01(c_27type_2epatSem_2ev_27__00),V_27vs_27))) ) ) ).

fof(conjecture,conjecture,
    ! [V_27b_27] : p__01(s__02(cbool__00,c_27const_2epatProps_2eno__closures_27__01(s__02(c_27type_2epatSem_2ev_27__00,c_27const_2epatSem_2eBoolv_27__01(s__02(cbool__00,V_27b_27)))))) ).

%------------------------------------------------------------------------------
