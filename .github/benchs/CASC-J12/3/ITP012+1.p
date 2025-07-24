fof(reserved_2Eho_2Enotfalse,axiom,
    ~ p(s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0)) ).

fof(arityeq1_2Ec_2Ebool_2E_7E_2E1,axiom,
    ! [X0_2E0] :
      ( p(s(tyop_2Emin_2Ebool,app_2E2(s(tyop_2Emin_2Efun(tyop_2Emin_2Ebool,tyop_2Emin_2Ebool),c_2Ebool_2E_7E_2E0),s(tyop_2Emin_2Ebool,X0_2E0))))
    <=> ~ p(s(tyop_2Emin_2Ebool,X0_2E0)) ) ).

fof(thm_2Ebool_2ENOT__FORALL__THM,axiom,
    ! [A_27a,V0P_2E0] :
      ( ? [V2x_2E0] : ~ p(s(tyop_2Emin_2Ebool,app_2E2(s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool),V0P_2E0),s(A_27a,V2x_2E0))))
    <=> ~ ! [V1x_2E0] : p(s(tyop_2Emin_2Ebool,app_2E2(s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool),V0P_2E0),s(A_27a,V1x_2E0)))) ) ).

fof(thm_2Ebool_2EIMP__F,axiom,
    ! [V0t_2E0] :
      ( ~ p(s(tyop_2Emin_2Ebool,V0t_2E0))
     <= ( p(s(tyop_2Emin_2Ebool,V0t_2E0))
       => p(s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0)) ) ) ).

fof(thm_2Esat_2EOR__DUAL3,axiom,
    ! [V0B_2E0,V1A_2E0] :
      ( ( ~ ( ~ p(s(tyop_2Emin_2Ebool,V1A_2E0))
            | p(s(tyop_2Emin_2Ebool,V0B_2E0)) )
       => p(s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0)) )
    <=> ( p(s(tyop_2Emin_2Ebool,V1A_2E0))
       => ( p(s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0))
         <= ~ p(s(tyop_2Emin_2Ebool,V0B_2E0)) ) ) ) ).

fof(thm_2Einteger_2EINT__DIVIDES__NEG,axiom,
    ! [V0p_2E0,V1q_2E0] :
      ( s(tyop_2Emin_2Ebool,c_2Einteger_2Eint__divides_2E2(s(tyop_2Einteger_2Eint,V0p_2E0),s(tyop_2Einteger_2Eint,V1q_2E0))) = s(tyop_2Emin_2Ebool,c_2Einteger_2Eint__divides_2E2(s(tyop_2Einteger_2Eint,c_2Einteger_2Eint__neg_2E1(s(tyop_2Einteger_2Eint,V0p_2E0))),s(tyop_2Einteger_2Eint,V1q_2E0)))
      & s(tyop_2Emin_2Ebool,c_2Einteger_2Eint__divides_2E2(s(tyop_2Einteger_2Eint,V0p_2E0),s(tyop_2Einteger_2Eint,c_2Einteger_2Eint__neg_2E1(s(tyop_2Einteger_2Eint,V1q_2E0))))) = s(tyop_2Emin_2Ebool,c_2Einteger_2Eint__divides_2E2(s(tyop_2Einteger_2Eint,V0p_2E0),s(tyop_2Einteger_2Eint,V1q_2E0))) ) ).

fof(reserved_2Elogic_2E_5C_2F,axiom,
    ! [V0_2E0,V1_2E0] :
      ( p(s(tyop_2Emin_2Ebool,c_2Ebool_2E_5C_2F_2E2(s(tyop_2Emin_2Ebool,V0_2E0),s(tyop_2Emin_2Ebool,V1_2E0))))
    <=> ( p(s(tyop_2Emin_2Ebool,V1_2E0))
        | p(s(tyop_2Emin_2Ebool,V0_2E0)) ) ) ).

fof(reserved_2Eho_2Etruth,axiom,
    p(s(tyop_2Emin_2Ebool,c_2Ebool_2ET_2E0)) ).

fof(thm_2Ebool_2ENOT__CLAUSES,axiom,
    ( ! [V0t_2E0] :
        ( ~ ~ p(s(tyop_2Emin_2Ebool,V0t_2E0))
      <=> p(s(tyop_2Emin_2Ebool,V0t_2E0)) )
    & ( p(s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0))
    <=> ~ p(s(tyop_2Emin_2Ebool,c_2Ebool_2ET_2E0)) )
    & ( ~ p(s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0))
    <=> p(s(tyop_2Emin_2Ebool,c_2Ebool_2ET_2E0)) ) ) ).

fof(thm_2Esat_2Edc__disj,axiom,
    ! [V0r_2E0,V1q_2E0,V2p_2E0] :
      ( ( ( ~ p(s(tyop_2Emin_2Ebool,V1q_2E0))
          | p(s(tyop_2Emin_2Ebool,V2p_2E0)) )
        & ( p(s(tyop_2Emin_2Ebool,V2p_2E0))
          | ~ p(s(tyop_2Emin_2Ebool,V0r_2E0)) )
        & ( ~ p(s(tyop_2Emin_2Ebool,V2p_2E0))
          | p(s(tyop_2Emin_2Ebool,V0r_2E0))
          | p(s(tyop_2Emin_2Ebool,V1q_2E0)) ) )
    <=> ( p(s(tyop_2Emin_2Ebool,V2p_2E0))
      <=> ( p(s(tyop_2Emin_2Ebool,V0r_2E0))
          | p(s(tyop_2Emin_2Ebool,V1q_2E0)) ) ) ) ).

fof(reserved_2Equant_2E_3F,axiom,
    ! [A_27a,V0f_2E0] :
      ( p(s(tyop_2Emin_2Ebool,c_2Ebool_2E_3F_2E1(s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool),V0f_2E0))))
    <=> ? [V1x_2E0] : p(s(tyop_2Emin_2Ebool,app_2E2(s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool),V0f_2E0),s(A_27a,V1x_2E0)))) ) ).

fof(thm_2Esat_2Edc__conj,axiom,
    ! [V0r_2E0,V1q_2E0,V2p_2E0] :
      ( ( ( p(s(tyop_2Emin_2Ebool,V0r_2E0))
          & p(s(tyop_2Emin_2Ebool,V1q_2E0)) )
      <=> p(s(tyop_2Emin_2Ebool,V2p_2E0)) )
    <=> ( ( ~ p(s(tyop_2Emin_2Ebool,V2p_2E0))
          | p(s(tyop_2Emin_2Ebool,V0r_2E0)) )
        & ( ~ p(s(tyop_2Emin_2Ebool,V2p_2E0))
          | p(s(tyop_2Emin_2Ebool,V1q_2E0)) )
        & ( ~ p(s(tyop_2Emin_2Ebool,V0r_2E0))
          | ~ p(s(tyop_2Emin_2Ebool,V1q_2E0))
          | p(s(tyop_2Emin_2Ebool,V2p_2E0)) ) ) ) ).

fof(thm_2Ebool_2EFORALL__AND__THM,axiom,
    ! [A_27a,V0P_2E0,V1Q_2E0] :
      ( ! [V2x_2E0] :
          ( p(s(tyop_2Emin_2Ebool,app_2E2(s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool),V1Q_2E0),s(A_27a,V2x_2E0))))
          & p(s(tyop_2Emin_2Ebool,app_2E2(s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool),V0P_2E0),s(A_27a,V2x_2E0)))) )
    <=> ( ! [V3x_2E0] : p(s(tyop_2Emin_2Ebool,app_2E2(s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool),V0P_2E0),s(A_27a,V3x_2E0))))
        & ! [V4x_2E0] : p(s(tyop_2Emin_2Ebool,app_2E2(s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool),V1Q_2E0),s(A_27a,V4x_2E0)))) ) ) ).

fof(arityeq2_2Ec_2Ebool_2E_2F_5C_2E2,axiom,
    ! [X0_2E0,X1_2E0] :
      ( p(s(tyop_2Emin_2Ebool,app_2E2(s(tyop_2Emin_2Efun(tyop_2Emin_2Ebool,tyop_2Emin_2Ebool),app_2E2(s(tyop_2Emin_2Efun(tyop_2Emin_2Ebool,tyop_2Emin_2Efun(tyop_2Emin_2Ebool,tyop_2Emin_2Ebool)),c_2Ebool_2E_2F_5C_2E0),s(tyop_2Emin_2Ebool,X0_2E0))),s(tyop_2Emin_2Ebool,X1_2E0))))
    <=> ( p(s(tyop_2Emin_2Ebool,X1_2E0))
        & p(s(tyop_2Emin_2Ebool,X0_2E0)) ) ) ).

fof(reserved_2Eho_2Es__thm,axiom,
    ! [A_27a,A_27b,A_27c,V0f_2E0,V1g_2E0,V2x_2E0] : s(A_27c,app_2E2(s(tyop_2Emin_2Efun(A_27b,A_27c),app_2E2(s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Efun(A_27b,A_27c)),V0f_2E0),s(A_27a,V2x_2E0))),s(A_27b,app_2E2(s(tyop_2Emin_2Efun(A_27a,A_27b),V1g_2E0),s(A_27a,V2x_2E0))))) = s(A_27c,app_2E2(s(tyop_2Emin_2Efun(A_27a,A_27c),app_2E2(s(tyop_2Emin_2Efun(tyop_2Emin_2Efun(A_27a,A_27b),tyop_2Emin_2Efun(A_27a,A_27c)),app_2E2(s(tyop_2Emin_2Efun(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Efun(A_27b,A_27c)),tyop_2Emin_2Efun(tyop_2Emin_2Efun(A_27a,A_27b),tyop_2Emin_2Efun(A_27a,A_27c))),combin_s_2E0),s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Efun(A_27b,A_27c)),V0f_2E0))),s(tyop_2Emin_2Efun(A_27a,A_27b),V1g_2E0))),s(A_27a,V2x_2E0))) ).

fof(thm_2Einteger_2EINT__DIVIDES__RADD,axiom,
    ! [V0p_2E0,V1q_2E0,V2r_2E0] :
      ( s(tyop_2Emin_2Ebool,c_2Einteger_2Eint__divides_2E2(s(tyop_2Einteger_2Eint,V0p_2E0),s(tyop_2Einteger_2Eint,V2r_2E0))) = s(tyop_2Emin_2Ebool,c_2Einteger_2Eint__divides_2E2(s(tyop_2Einteger_2Eint,V0p_2E0),s(tyop_2Einteger_2Eint,c_2Einteger_2Eint__add_2E2(s(tyop_2Einteger_2Eint,V2r_2E0),s(tyop_2Einteger_2Eint,V1q_2E0)))))
     <= p(s(tyop_2Emin_2Ebool,c_2Einteger_2Eint__divides_2E2(s(tyop_2Einteger_2Eint,V0p_2E0),s(tyop_2Einteger_2Eint,V1q_2E0)))) ) ).

fof(reserved_2Eho_2Eboolext,axiom,
    ! [V0_2E0,V1_2E0] :
      ( s(tyop_2Emin_2Ebool,V1_2E0) = s(tyop_2Emin_2Ebool,V0_2E0)
     <= ( p(s(tyop_2Emin_2Ebool,V1_2E0))
      <=> p(s(tyop_2Emin_2Ebool,V0_2E0)) ) ) ).

fof(reserved_2Eho_2Ek__thm,axiom,
    ! [A_27a,A_27b,V0x_2E0,V1y_2E0] : s(A_27a,V0x_2E0) = s(A_27a,app_2E2(s(tyop_2Emin_2Efun(A_27b,A_27a),app_2E2(s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Efun(A_27b,A_27a)),combin_k_2E0),s(A_27a,V0x_2E0))),s(A_27b,V1y_2E0))) ).

fof(reserved_2Elogic_2E_2F_5C,axiom,
    ! [V0_2E0,V1_2E0] :
      ( ( p(s(tyop_2Emin_2Ebool,V0_2E0))
        & p(s(tyop_2Emin_2Ebool,V1_2E0)) )
    <=> p(s(tyop_2Emin_2Ebool,c_2Ebool_2E_2F_5C_2E2(s(tyop_2Emin_2Ebool,V0_2E0),s(tyop_2Emin_2Ebool,V1_2E0)))) ) ).

fof(thm_2Ebool_2EIMP__ANTISYM__AX,axiom,
    ! [V0t1_2E0,V1t2_2E0] :
      ( ( ( p(s(tyop_2Emin_2Ebool,V0t1_2E0))
         <= p(s(tyop_2Emin_2Ebool,V1t2_2E0)) )
       => s(tyop_2Emin_2Ebool,V1t2_2E0) = s(tyop_2Emin_2Ebool,V0t1_2E0) )
     <= ( p(s(tyop_2Emin_2Ebool,V1t2_2E0))
       <= p(s(tyop_2Emin_2Ebool,V0t1_2E0)) ) ) ).

fof(reserved_2Elogic_2E_3D,axiom,
    ! [A_27a,V0_2E0,V1_2E0] :
      ( s(A_27a,V1_2E0) = s(A_27a,V0_2E0)
    <=> p(s(tyop_2Emin_2Ebool,c_2Emin_2E_3D_2E2(s(A_27a,V0_2E0),s(A_27a,V1_2E0)))) ) ).

fof(reserved_2Equant_2E_21,axiom,
    ! [A_27a,V0f_2E0] :
      ( ! [V1x_2E0] : p(s(tyop_2Emin_2Ebool,app_2E2(s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool),V0f_2E0),s(A_27a,V1x_2E0))))
    <=> p(s(tyop_2Emin_2Ebool,c_2Ebool_2E_21_2E1(s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool),V0f_2E0)))) ) ).

fof(thm_2Einteger_2EINT__DIVIDES__RSUB,conjecture,
    ! [V0p_2E0,V1q_2E0,V2r_2E0] :
      ( s(tyop_2Emin_2Ebool,c_2Einteger_2Eint__divides_2E2(s(tyop_2Einteger_2Eint,V0p_2E0),s(tyop_2Einteger_2Eint,V2r_2E0))) = s(tyop_2Emin_2Ebool,c_2Einteger_2Eint__divides_2E2(s(tyop_2Einteger_2Eint,V0p_2E0),s(tyop_2Einteger_2Eint,c_2Einteger_2Eint__sub_2E2(s(tyop_2Einteger_2Eint,V2r_2E0),s(tyop_2Einteger_2Eint,V1q_2E0)))))
     <= p(s(tyop_2Emin_2Ebool,c_2Einteger_2Eint__divides_2E2(s(tyop_2Einteger_2Eint,V0p_2E0),s(tyop_2Einteger_2Eint,V1q_2E0)))) ) ).

fof(thm_2Ebool_2EEQ__CLAUSES,axiom,
    ! [V0t_2E0] :
      ( ( s(tyop_2Emin_2Ebool,c_2Ebool_2ET_2E0) = s(tyop_2Emin_2Ebool,V0t_2E0)
      <=> p(s(tyop_2Emin_2Ebool,V0t_2E0)) )
      & ( s(tyop_2Emin_2Ebool,V0t_2E0) = s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0)
      <=> ~ p(s(tyop_2Emin_2Ebool,V0t_2E0)) )
      & ( ~ p(s(tyop_2Emin_2Ebool,V0t_2E0))
      <=> s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0) = s(tyop_2Emin_2Ebool,V0t_2E0) )
      & ( p(s(tyop_2Emin_2Ebool,V0t_2E0))
      <=> s(tyop_2Emin_2Ebool,V0t_2E0) = s(tyop_2Emin_2Ebool,c_2Ebool_2ET_2E0) ) ) ).

fof(reserved_2Eho_2Eeq__ext,axiom,
    ! [A_27a,A_27b,V0f_2E0,V1g_2E0] :
      ( s(tyop_2Emin_2Efun(A_27a,A_27b),V1g_2E0) = s(tyop_2Emin_2Efun(A_27a,A_27b),V0f_2E0)
     <= ! [V2x_2E0] : s(A_27b,app_2E2(s(tyop_2Emin_2Efun(A_27a,A_27b),V1g_2E0),s(A_27a,V2x_2E0))) = s(A_27b,app_2E2(s(tyop_2Emin_2Efun(A_27a,A_27b),V0f_2E0),s(A_27a,V2x_2E0))) ) ).

fof(thm_2Ebool_2EF__IMP,axiom,
    ! [V0t_2E0] :
      ( ~ p(s(tyop_2Emin_2Ebool,V0t_2E0))
     => ( p(s(tyop_2Emin_2Ebool,V0t_2E0))
       => p(s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0)) ) ) ).

fof(thm_2Esat_2Edc__eq,axiom,
    ! [V0r_2E0,V1q_2E0,V2p_2E0] :
      ( ( s(tyop_2Emin_2Ebool,V1q_2E0) = s(tyop_2Emin_2Ebool,V0r_2E0)
      <=> p(s(tyop_2Emin_2Ebool,V2p_2E0)) )
    <=> ( ( p(s(tyop_2Emin_2Ebool,V2p_2E0))
          | ~ p(s(tyop_2Emin_2Ebool,V1q_2E0))
          | ~ p(s(tyop_2Emin_2Ebool,V0r_2E0)) )
        & ( p(s(tyop_2Emin_2Ebool,V0r_2E0))
          | ~ p(s(tyop_2Emin_2Ebool,V2p_2E0))
          | ~ p(s(tyop_2Emin_2Ebool,V1q_2E0)) )
        & ( p(s(tyop_2Emin_2Ebool,V1q_2E0))
          | ~ p(s(tyop_2Emin_2Ebool,V2p_2E0))
          | ~ p(s(tyop_2Emin_2Ebool,V0r_2E0)) )
        & ( p(s(tyop_2Emin_2Ebool,V2p_2E0))
          | p(s(tyop_2Emin_2Ebool,V0r_2E0))
          | p(s(tyop_2Emin_2Ebool,V1q_2E0)) ) ) ) ).

fof(reserved_2Eho_2Ei__thm,axiom,
    ! [A_27a,V0x_2E0] : s(A_27a,V0x_2E0) = s(A_27a,app_2E2(s(tyop_2Emin_2Efun(A_27a,A_27a),combin_i_2E0),s(A_27a,V0x_2E0))) ).

fof(thm_2Esat_2EAND__INV2,axiom,
    ! [V0A_2E0] :
      ( ( ( p(s(tyop_2Emin_2Ebool,V0A_2E0))
         => p(s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0)) )
       => p(s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0)) )
     <= ( ~ p(s(tyop_2Emin_2Ebool,V0A_2E0))
       => p(s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0)) ) ) ).

fof(thm_2Esat_2EOR__DUAL2,axiom,
    ! [V0B_2E0,V1A_2E0] :
      ( ( ~ ( p(s(tyop_2Emin_2Ebool,V1A_2E0))
            | p(s(tyop_2Emin_2Ebool,V0B_2E0)) )
       => p(s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0)) )
    <=> ( ( p(s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0))
         <= p(s(tyop_2Emin_2Ebool,V1A_2E0)) )
       => ( p(s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0))
         <= ~ p(s(tyop_2Emin_2Ebool,V0B_2E0)) ) ) ) ).

fof(arityeq2_2Ec_2Einteger_2Eint__sub_2E2,axiom,
    ! [X0_2E0,X1_2E0] : s(tyop_2Einteger_2Eint,app_2E2(s(tyop_2Emin_2Efun(tyop_2Einteger_2Eint,tyop_2Einteger_2Eint),app_2E2(s(tyop_2Emin_2Efun(tyop_2Einteger_2Eint,tyop_2Emin_2Efun(tyop_2Einteger_2Eint,tyop_2Einteger_2Eint)),c_2Einteger_2Eint__sub_2E0),s(tyop_2Einteger_2Eint,X0_2E0))),s(tyop_2Einteger_2Eint,X1_2E0))) = s(tyop_2Einteger_2Eint,c_2Einteger_2Eint__sub_2E2(s(tyop_2Einteger_2Eint,X0_2E0),s(tyop_2Einteger_2Eint,X1_2E0))) ).

fof(reserved_2Elogic_2E_3D_3D_3E,axiom,
    ! [V0_2E0,V1_2E0] :
      ( ( p(s(tyop_2Emin_2Ebool,V1_2E0))
       <= p(s(tyop_2Emin_2Ebool,V0_2E0)) )
    <=> p(s(tyop_2Emin_2Ebool,c_2Emin_2E_3D_3D_3E_2E2(s(tyop_2Emin_2Ebool,V0_2E0),s(tyop_2Emin_2Ebool,V1_2E0)))) ) ).

fof(thm_2Esat_2Edc__neg,axiom,
    ! [V0q_2E0,V1p_2E0] :
      ( ( p(s(tyop_2Emin_2Ebool,V1p_2E0))
      <=> ~ p(s(tyop_2Emin_2Ebool,V0q_2E0)) )
    <=> ( ( p(s(tyop_2Emin_2Ebool,V0q_2E0))
          | p(s(tyop_2Emin_2Ebool,V1p_2E0)) )
        & ( ~ p(s(tyop_2Emin_2Ebool,V1p_2E0))
          | ~ p(s(tyop_2Emin_2Ebool,V0q_2E0)) ) ) ) ).

fof(thm_2Ebool_2EDE__MORGAN__THM,axiom,
    ! [V0A_2E0,V1B_2E0] :
      ( ( ( ~ p(s(tyop_2Emin_2Ebool,V0A_2E0))
          | ~ p(s(tyop_2Emin_2Ebool,V1B_2E0)) )
      <=> ~ ( p(s(tyop_2Emin_2Ebool,V1B_2E0))
            & p(s(tyop_2Emin_2Ebool,V0A_2E0)) ) )
      & ( ( ~ p(s(tyop_2Emin_2Ebool,V0A_2E0))
          & ~ p(s(tyop_2Emin_2Ebool,V1B_2E0)) )
      <=> ~ ( p(s(tyop_2Emin_2Ebool,V1B_2E0))
            | p(s(tyop_2Emin_2Ebool,V0A_2E0)) ) ) ) ).

fof(arityeq2_2Ec_2Emin_2E_3D_2E2_2Emono_2EA_27a,axiom,
    ! [A_27a,X0_2E0,X1_2E0] :
      ( p(s(tyop_2Emin_2Ebool,app_2E2(s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool),app_2E2(s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool)),c_2Emin_2E_3D_2E0),s(A_27a,X0_2E0))),s(A_27a,X1_2E0))))
    <=> s(A_27a,X0_2E0) = s(A_27a,X1_2E0) ) ).

fof(thm_2Ebool_2EIMP__CLAUSES,axiom,
    ! [V0t_2E0] :
      ( ( ( p(s(tyop_2Emin_2Ebool,c_2Ebool_2ET_2E0))
         <= p(s(tyop_2Emin_2Ebool,V0t_2E0)) )
      <=> p(s(tyop_2Emin_2Ebool,c_2Ebool_2ET_2E0)) )
      & ( p(s(tyop_2Emin_2Ebool,c_2Ebool_2ET_2E0))
      <=> ( p(s(tyop_2Emin_2Ebool,V0t_2E0))
         => p(s(tyop_2Emin_2Ebool,V0t_2E0)) ) )
      & ( ( p(s(tyop_2Emin_2Ebool,V0t_2E0))
         => p(s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0)) )
      <=> ~ p(s(tyop_2Emin_2Ebool,V0t_2E0)) )
      & ( ( p(s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0))
         => p(s(tyop_2Emin_2Ebool,V0t_2E0)) )
      <=> p(s(tyop_2Emin_2Ebool,c_2Ebool_2ET_2E0)) )
      & ( ( p(s(tyop_2Emin_2Ebool,V0t_2E0))
         <= p(s(tyop_2Emin_2Ebool,c_2Ebool_2ET_2E0)) )
      <=> p(s(tyop_2Emin_2Ebool,V0t_2E0)) ) ) ).

fof(thm_2Ebool_2EDISJ__SYM,axiom,
    ! [V0A_2E0,V1B_2E0] :
      ( ( p(s(tyop_2Emin_2Ebool,V0A_2E0))
        | p(s(tyop_2Emin_2Ebool,V1B_2E0)) )
    <=> ( p(s(tyop_2Emin_2Ebool,V0A_2E0))
        | p(s(tyop_2Emin_2Ebool,V1B_2E0)) ) ) ).

fof(arityeq2_2Ec_2Ebool_2E_5C_2F_2E2,axiom,
    ! [X0_2E0,X1_2E0] :
      ( ( p(s(tyop_2Emin_2Ebool,X0_2E0))
        | p(s(tyop_2Emin_2Ebool,X1_2E0)) )
    <=> p(s(tyop_2Emin_2Ebool,app_2E2(s(tyop_2Emin_2Efun(tyop_2Emin_2Ebool,tyop_2Emin_2Ebool),app_2E2(s(tyop_2Emin_2Efun(tyop_2Emin_2Ebool,tyop_2Emin_2Efun(tyop_2Emin_2Ebool,tyop_2Emin_2Ebool)),c_2Ebool_2E_5C_2F_2E0),s(tyop_2Emin_2Ebool,X0_2E0))),s(tyop_2Emin_2Ebool,X1_2E0)))) ) ).

fof(thm_2Ebool_2ETRUTH,axiom,
    p(s(tyop_2Emin_2Ebool,c_2Ebool_2ET_2E0)) ).

fof(arityeq1_2Ec_2Ebool_2E_3F_2E1_2Emono_2EA_27a,axiom,
    ! [A_27a,X0_2E0] : s(tyop_2Emin_2Ebool,c_2Ebool_2E_3F_2E1(s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool),X0_2E0))) = s(tyop_2Emin_2Ebool,app_2E2(s(tyop_2Emin_2Efun(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool),tyop_2Emin_2Ebool),c_2Ebool_2E_3F_2E0),s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool),X0_2E0))) ).

fof(arityeq1_2Ec_2Einteger_2Eint__neg_2E1,axiom,
    ! [X0_2E0] : s(tyop_2Einteger_2Eint,c_2Einteger_2Eint__neg_2E1(s(tyop_2Einteger_2Eint,X0_2E0))) = s(tyop_2Einteger_2Eint,app_2E2(s(tyop_2Emin_2Efun(tyop_2Einteger_2Eint,tyop_2Einteger_2Eint),c_2Einteger_2Eint__neg_2E0),s(tyop_2Einteger_2Eint,X0_2E0))) ).

fof(thm_2Esat_2EAND__INV__IMP,axiom,
    ! [V0A_2E0] :
      ( ( p(s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0))
       <= ~ p(s(tyop_2Emin_2Ebool,V0A_2E0)) )
     <= p(s(tyop_2Emin_2Ebool,V0A_2E0)) ) ).

fof(thm_2Einteger_2Eint__sub,axiom,
    ! [V0x_2E0,V1y_2E0] : s(tyop_2Einteger_2Eint,c_2Einteger_2Eint__sub_2E2(s(tyop_2Einteger_2Eint,V0x_2E0),s(tyop_2Einteger_2Eint,V1y_2E0))) = s(tyop_2Einteger_2Eint,c_2Einteger_2Eint__add_2E2(s(tyop_2Einteger_2Eint,V0x_2E0),s(tyop_2Einteger_2Eint,c_2Einteger_2Eint__neg_2E1(s(tyop_2Einteger_2Eint,V1y_2E0))))) ).

fof(thm_2Esat_2ENOT__NOT,axiom,
    ! [V0t_2E0] :
      ( ~ ~ p(s(tyop_2Emin_2Ebool,V0t_2E0))
    <=> p(s(tyop_2Emin_2Ebool,V0t_2E0)) ) ).

fof(arityeq2_2Ec_2Einteger_2Eint__divides_2E2,axiom,
    ! [X0_2E0,X1_2E0] : s(tyop_2Emin_2Ebool,c_2Einteger_2Eint__divides_2E2(s(tyop_2Einteger_2Eint,X0_2E0),s(tyop_2Einteger_2Eint,X1_2E0))) = s(tyop_2Emin_2Ebool,app_2E2(s(tyop_2Emin_2Efun(tyop_2Einteger_2Eint,tyop_2Emin_2Ebool),app_2E2(s(tyop_2Emin_2Efun(tyop_2Einteger_2Eint,tyop_2Emin_2Efun(tyop_2Einteger_2Eint,tyop_2Emin_2Ebool)),c_2Einteger_2Eint__divides_2E0),s(tyop_2Einteger_2Eint,X0_2E0))),s(tyop_2Einteger_2Eint,X1_2E0))) ).

fof(reserved_2Elogic_2E_7E,axiom,
    ! [V0_2E0] :
      ( p(s(tyop_2Emin_2Ebool,c_2Ebool_2E_7E_2E1(s(tyop_2Emin_2Ebool,V0_2E0))))
    <=> ~ p(s(tyop_2Emin_2Ebool,V0_2E0)) ) ).

fof(reserved_2Eho_2Ebool__cases__ax,axiom,
    ! [V0t_2E0] :
      ( s(tyop_2Emin_2Ebool,c_2Ebool_2EF_2E0) = s(tyop_2Emin_2Ebool,V0t_2E0)
      | s(tyop_2Emin_2Ebool,V0t_2E0) = s(tyop_2Emin_2Ebool,c_2Ebool_2ET_2E0) ) ).

fof(thm_2Ebool_2EDISJ__ASSOC,axiom,
    ! [V0A_2E0,V1B_2E0,V2C_2E0] :
      ( ( p(s(tyop_2Emin_2Ebool,V0A_2E0))
        | p(s(tyop_2Emin_2Ebool,V2C_2E0))
        | p(s(tyop_2Emin_2Ebool,V1B_2E0)) )
    <=> ( p(s(tyop_2Emin_2Ebool,V0A_2E0))
        | p(s(tyop_2Emin_2Ebool,V2C_2E0))
        | p(s(tyop_2Emin_2Ebool,V1B_2E0)) ) ) ).

fof(arityeq2_2Ec_2Einteger_2Eint__add_2E2,axiom,
    ! [X0_2E0,X1_2E0] : s(tyop_2Einteger_2Eint,app_2E2(s(tyop_2Emin_2Efun(tyop_2Einteger_2Eint,tyop_2Einteger_2Eint),app_2E2(s(tyop_2Emin_2Efun(tyop_2Einteger_2Eint,tyop_2Emin_2Efun(tyop_2Einteger_2Eint,tyop_2Einteger_2Eint)),c_2Einteger_2Eint__add_2E0),s(tyop_2Einteger_2Eint,X0_2E0))),s(tyop_2Einteger_2Eint,X1_2E0))) = s(tyop_2Einteger_2Eint,c_2Einteger_2Eint__add_2E2(s(tyop_2Einteger_2Eint,X0_2E0),s(tyop_2Einteger_2Eint,X1_2E0))) ).

fof(arityeq1_2Ec_2Ebool_2E_21_2E1_2Emono_2EA_27a,axiom,
    ! [A_27a,X0_2E0] : s(tyop_2Emin_2Ebool,c_2Ebool_2E_21_2E1(s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool),X0_2E0))) = s(tyop_2Emin_2Ebool,app_2E2(s(tyop_2Emin_2Efun(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool),tyop_2Emin_2Ebool),c_2Ebool_2E_21_2E0),s(tyop_2Emin_2Efun(A_27a,tyop_2Emin_2Ebool),X0_2E0))) ).

fof(thm_2Esat_2Edc__imp,axiom,
    ! [V0r_2E0,V1q_2E0,V2p_2E0] :
      ( ( ( p(s(tyop_2Emin_2Ebool,V2p_2E0))
          | p(s(tyop_2Emin_2Ebool,V1q_2E0)) )
        & ( ~ p(s(tyop_2Emin_2Ebool,V0r_2E0))
          | p(s(tyop_2Emin_2Ebool,V2p_2E0)) )
        & ( ~ p(s(tyop_2Emin_2Ebool,V2p_2E0))
          | p(s(tyop_2Emin_2Ebool,V0r_2E0))
          | ~ p(s(tyop_2Emin_2Ebool,V1q_2E0)) ) )
    <=> ( p(s(tyop_2Emin_2Ebool,V2p_2E0))
      <=> ( p(s(tyop_2Emin_2Ebool,V0r_2E0))
         <= p(s(tyop_2Emin_2Ebool,V1q_2E0)) ) ) ) ).

fof(arityeq2_2Ec_2Emin_2E_3D_3D_3E_2E2,axiom,
    ! [X0_2E0,X1_2E0] :
      ( ( p(s(tyop_2Emin_2Ebool,X1_2E0))
       <= p(s(tyop_2Emin_2Ebool,X0_2E0)) )
    <=> p(s(tyop_2Emin_2Ebool,app_2E2(s(tyop_2Emin_2Efun(tyop_2Emin_2Ebool,tyop_2Emin_2Ebool),app_2E2(s(tyop_2Emin_2Efun(tyop_2Emin_2Ebool,tyop_2Emin_2Efun(tyop_2Emin_2Ebool,tyop_2Emin_2Ebool)),c_2Emin_2E_3D_3D_3E_2E0),s(tyop_2Emin_2Ebool,X0_2E0))),s(tyop_2Emin_2Ebool,X1_2E0)))) ) ).

