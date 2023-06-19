%------------------------------------------------------------------------------
% File     : SWW887+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : labProps__4__read_reg_inc_pc__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : labProps__4__read_reg_inc_pc__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0
% Syntax   : Number of formulae    :    8 (   5 unt;   0 def)
%            Number of atoms       :   11 (   7 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    4 (   1   ~;   1   |;   0   &)
%                                         (   1 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   3 avg)
%            Maximal term depth    :   12 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   18 (  18 usr;   5 con; 0-2 aty)
%            Number of variables   :   15 (  15   !;   0   ?)
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

fof('thm.labSem.inc_pc_def',axiom,
    ! [V_27A_27,V_27B_27,V_27s_27] : s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),c_27const_2elabSem_2einc__pc_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))) = s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),c_27const_2elabSem_2estate__pc__fupd_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2ecombin_2eK_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2elabSem_2estate__pc_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))))))),s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))) ).

fof(conjecture,conjecture,
    ! [V_27A_27,V_27B_27,V_27s_27,V_27r_27] : s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27const_2elabSem_2estate__regs_27__02(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),c_27const_2elabSem_2einc__pc_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))),s__02(c_27type_2enum_2enum_27__00,V_27r_27))) = s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27const_2elabSem_2estate__regs_27__02(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27),s__02(c_27type_2enum_2enum_27__00,V_27r_27))) ).

%------------------------------------------------------------------------------
