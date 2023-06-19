%------------------------------------------------------------------------------
% File     : SWW856+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : mlvector__3__length_toList__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : mlvector__3__length_toList__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0
% Syntax   : Number of formulae    :   11 (   7 unt;   0 def)
%            Number of atoms       :   15 (   9 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    5 (   1   ~;   1   |;   0   &)
%                                         (   1 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   3 avg)
%            Maximal term depth    :    7 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   13 (  13 usr;   4 con; 0-2 aty)
%            Number of variables   :   22 (  22   !;   0   ?)
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

fof('thm.bool.REFL_CLAUSE',axiom,
    ! [V_27A_27,V_27x_27] :
      ( s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27x_27)
    <=> p__01(s__02(cbool__00,cT__00)) ) ).

fof('thm.regexp_compiler.vector_induction',axiom,
    ! [V_27A_27,V_27P_27] :
      ( ! [V_27l_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2eregexp__compiler_2evector_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2eregexp__compiler_2evector_27__01(V_27A_27),c_27const_2eregexp__compiler_2eVector_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))))))
     => ! [V_27v_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2eregexp__compiler_2evector_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2eregexp__compiler_2evector_27__01(V_27A_27),V_27v_27)))) ) ).

fof('thm.mlvector.length_def',axiom,
    ! [V_27A_27,V_27l_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2eregexp__compiler_2elength_27__01(s__02(c_27type_2eregexp__compiler_2evector_27__01(V_27A_27),c_27const_2eregexp__compiler_2eVector_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))) ).

fof('thm.mlvector.toList_thm',axiom,
    ! [V_27A_27,V_27ls_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2emlvector_2etoList_27__01(s__02(c_27type_2eregexp__compiler_2evector_27__01(V_27A_27),c_27const_2eregexp__compiler_2eVector_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27ls_27))))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27ls_27) ).

fof(conjecture,conjecture,
    ! [V_27A_27,V_27vec_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2emlvector_2etoList_27__01(s__02(c_27type_2eregexp__compiler_2evector_27__01(V_27A_27),V_27vec_27))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2eregexp__compiler_2elength_27__01(s__02(c_27type_2eregexp__compiler_2evector_27__01(V_27A_27),V_27vec_27))) ).

%------------------------------------------------------------------------------
