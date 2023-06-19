%------------------------------------------------------------------------------
% File     : SWW851+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : misc__198__REVERSE_REPLICATE__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : misc__198__REVERSE_REPLICATE__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0
% Syntax   : Number of formulae    :   15 (   7 unt;   0 def)
%            Number of atoms       :   31 (  18 equ)
%            Maximal formula atoms :    8 (   2 avg)
%            Number of connectives :   19 (   3   ~;   1   |;   6   &)
%                                         (   6 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Maximal term depth    :    7 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   16 (  16 usr;   6 con; 0-2 aty)
%            Number of variables   :   36 (  36   !;   0   ?)
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

fof('thm.bool.FORALL_SIMP',axiom,
    ! [V_27A_27,V_27t_27] :
      ( ! [V_27x_27] : p__01(s__02(cbool__00,V_27t_27))
    <=> p__01(s__02(cbool__00,V_27t_27)) ) ).

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

fof('thm.num.INDUCTION',axiom,
    ! [V_27P_27] :
      ( ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))))
        & ! [V_27n_27] :
            ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))))
           => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2eSUC_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27)))))) ) )
     => ! [V_27n_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27)))) ) ).

fof('thm.list.REVERSE_DEF',axiom,
    ! [V_27A_27] :
      ( s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eREVERSE_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00)
      & ! [V_27h_27,V_27t_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eREVERSE_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eREVERSE_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))))) ) ).

fof('thm.list.SNOC_APPEND',axiom,
    ! [V_27A_27,V_27x_27,V_27l_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eSNOC_27__02(s__02(V_27A_27,V_27x_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27x_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))))) ).

fof('thm.rich_list.REPLICATE',axiom,
    ! [V_27A_27] :
      ( ! [V_27x_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2erich__list_2eREPLICATE_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(V_27A_27,V_27x_27))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00)
      & ! [V_27n_27,V_27x_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2erich__list_2eREPLICATE_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2eSUC_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(V_27A_27,V_27x_27))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27x_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2erich__list_2eREPLICATE_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(V_27A_27,V_27x_27))))) ) ).

fof('thm.misc.SNOC_REPLICATE',axiom,
    ! [V_27A_27,V_27n_27,V_27x_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eSNOC_27__02(s__02(V_27A_27,V_27x_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2erich__list_2eREPLICATE_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(V_27A_27,V_27x_27))))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2erich__list_2eREPLICATE_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2eSUC_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(V_27A_27,V_27x_27))) ).

fof(conjecture,conjecture,
    ! [V_27A_27,V_27n_27,V_27x_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eREVERSE_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2erich__list_2eREPLICATE_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(V_27A_27,V_27x_27))))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2erich__list_2eREPLICATE_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(V_27A_27,V_27x_27))) ).

%------------------------------------------------------------------------------
