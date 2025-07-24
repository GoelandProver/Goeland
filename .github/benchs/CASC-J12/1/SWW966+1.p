fof(ax171,axiom,
    pred_attacker(name_A) ).

fof(ax113,axiom,
    ! [VAR_V_70X30] :
      ( pred_attacker(VAR_V_70X30)
     <= pred_attacker(tuple_out_3(VAR_V_70X30)) ) ).

fof(ax183,axiom,
    ! [VAR_0X40SID_554,VAR_AENC_NA_A_552,VAR_SIGN_A_PKA_553] :
      ( pred_attacker(tuple_client_B_out_4(constr_aenc(tuple_2(constr_xor(constr_tuple_2_get_0x30_bitstring(constr_adec(VAR_AENC_NA_A_552,name_skB)),name_B),name_Nb(VAR_0X40SID_554)),constr_tuple_2_get_1_bitstring(constr_checksign(VAR_SIGN_A_PKA_553,constr_pkey(name_skS))))))
     <= ( pred_eq_bitstring_bitstring(name_A,constr_tuple_2_get_1(constr_adec(VAR_AENC_NA_A_552,name_skB)))
        & pred_attacker(tuple_client_B_in_2(VAR_SIGN_A_PKA_553))
        & pred_eq_bitstring_bitstring(name_A,constr_tuple_2_get_0x30(constr_checksign(VAR_SIGN_A_PKA_553,constr_pkey(name_skS))))
        & pred_attacker(tuple_client_B_in_3(VAR_AENC_NA_A_552)) ) ) ).

fof(ax90,axiom,
    name_skB != name_skS ).

fof(ax41,axiom,
    name_c != constr_CONST_3 ).

fof(ax105,axiom,
    ! [VAR_V_53] :
      ( pred_attacker(VAR_V_53)
     => pred_attacker(constr_tuple_2_get_1_bitstring(VAR_V_53)) ) ).

fof(ax161,axiom,
    pred_attacker(constr_CONST_1) ).

fof(ax107,axiom,
    ! [VAR_V_57] :
      ( pred_attacker(constr_tuple_2_get_0x30_bitstring(VAR_V_57))
     <= pred_attacker(VAR_V_57) ) ).

fof(ax135,axiom,
    ! [VAR_V_155,VAR_V_156] :
      ( pred_attacker(VAR_V_155)
     <= pred_attacker(tuple_client_B_out_1(VAR_V_155,VAR_V_156)) ) ).

fof(ax25,axiom,
    constr_CONST_3 != constr_CONST_2 ).

fof(ax71,axiom,
    name_c != name_B ).

fof(ax126,axiom,
    ! [VAR_V_124] :
      ( pred_attacker(VAR_V_124)
     => pred_attacker(constr_getmess(VAR_V_124)) ) ).

fof(ax79,axiom,
    name_I != name_skB ).

fof(ax178,axiom,
    pred_attacker(tuple_out_3(constr_pkey(name_skS))) ).

fof(ax100,axiom,
    ! [VAR_X0X30_9,VAR_X1_10X30] : VAR_X0X30_9 = constr_tuple_2_get_0x30_bitstring(tuple_2(VAR_X0X30_9,VAR_X1_10X30)) ).

fof(ax114,axiom,
    ! [VAR_V_73] :
      ( pred_attacker(tuple_out_2(VAR_V_73))
     <= pred_attacker(VAR_V_73) ) ).

fof(ax39,axiom,
    constr_CONST_3 != name_B ).

fof(ax7,axiom,
    name_I != constr_CONST_0x30 ).

fof(ax176,axiom,
    pred_attacker(tuple_out_1(constr_pkey(name_skA))) ).

fof(ax32,axiom,
    constr_CONST_2 != name_objective ).

fof(ax33,axiom,
    constr_CONST_2 != name_skA ).

fof(ax147,axiom,
    ! [VAR_V_193,VAR_V_194] :
      ( ( pred_attacker(VAR_V_193)
        & pred_attacker(VAR_V_194) )
     => pred_attacker(tuple_client_A_out_1(VAR_V_193,VAR_V_194)) ) ).

fof(ax70,axiom,
    name_B != name_I ).

fof(ax103,axiom,
    ! [VAR_X_42,VAR_Y_43] : pred_eq_bitstring_bitstring(VAR_X_42,VAR_Y_43) ).

fof(ax129,axiom,
    ! [VAR_V_131,VAR_V_132] :
      ( ( pred_attacker(VAR_V_131)
        & pred_attacker(VAR_V_132) )
     => pred_attacker(constr_dec(VAR_V_131,VAR_V_132)) ) ).

fof(ax80,axiom,
    name_skS != name_I ).

fof(ax156,axiom,
    ! [VAR_V_229,VAR_V_230X30] :
      ( ( pred_attacker(VAR_V_230X30)
        & pred_attacker(VAR_V_229) )
     => pred_attacker(constr_adec(VAR_V_229,VAR_V_230X30)) ) ).

fof(ax76,axiom,
    name_I != name_c ).

fof(ax84,axiom,
    name_skS != name_c ).

fof(ax3,axiom,
    constr_CONST_4 != constr_CONST_0x30 ).

fof(ax137,axiom,
    ! [VAR_V_162] :
      ( pred_attacker(tuple_client_B_in_5(VAR_V_162))
     <= pred_attacker(VAR_V_162) ) ).

fof(ax138,axiom,
    ! [VAR_V_165] :
      ( pred_attacker(tuple_client_B_in_5(VAR_V_165))
     => pred_attacker(VAR_V_165) ) ).

fof(ax120,axiom,
    ! [VAR_V_93,VAR_V_94] :
      ( pred_attacker(tuple_key_retrieval_server_in_1(VAR_V_93,VAR_V_94))
     <= ( pred_attacker(VAR_V_93)
        & pred_attacker(VAR_V_94) ) ) ).

fof(ax75,axiom,
    name_skS != name_B ).

fof(ax144,axiom,
    ! [VAR_V_183] :
      ( pred_attacker(VAR_V_183)
     <= pred_attacker(tuple_client_A_out_5(VAR_V_183)) ) ).

fof(ax174,axiom,
    pred_table(tuple_keys(name_A,constr_pkey(name_skA))) ).

fof(ax17,axiom,
    constr_CONST_1 != name_A ).

fof(ax43,axiom,
    constr_CONST_3 != name_skA ).

fof(ax55,axiom,
    constr_ZERO != name_A ).

fof(ax85,axiom,
    name_objective != name_skA ).

fof(ax143,axiom,
    ! [VAR_V_180X30] :
      ( pred_attacker(tuple_client_A_out_5(VAR_V_180X30))
     <= pred_attacker(VAR_V_180X30) ) ).

fof(ax185,axiom,
    ! [VAR_DST_620X30,VAR_PKDST_621,VAR_SRC_622] :
      ( ( pred_attacker(tuple_key_retrieval_server_in_1(VAR_SRC_622,VAR_DST_620X30))
        & pred_table(tuple_keys(VAR_DST_620X30,VAR_PKDST_621)) )
     => pred_attacker(tuple_key_retrieval_server_out_2(constr_sign(tuple_2(VAR_DST_620X30,VAR_PKDST_621),name_skS))) ) ).

fof(ax29,axiom,
    name_B != constr_CONST_2 ).

fof(ax118,axiom,
    ! [VAR_V_86] :
      ( pred_attacker(VAR_V_86)
     => pred_attacker(tuple_key_retrieval_server_out_2(VAR_V_86)) ) ).

fof(ax82,axiom,
    name_skA != name_c ).

fof(ax115,axiom,
    ! [VAR_V_76] :
      ( pred_attacker(VAR_V_76)
     <= pred_attacker(tuple_out_2(VAR_V_76)) ) ).

fof(ax111,axiom,
    ! [VAR_V_65] :
      ( pred_attacker(VAR_V_65)
     => pred_attacker(constr_pkey(VAR_V_65)) ) ).

fof(ax165,axiom,
    ! [VAR_V_248,VAR_V_249] :
      ( pred_attacker(VAR_V_249)
     <= pred_attacker(tuple_2(VAR_V_248,VAR_V_249)) ) ).

fof(ax101,axiom,
    ! [VAR_X0X30_7,VAR_X1_8] : VAR_X1_8 = constr_tuple_2_get_1(tuple_2(VAR_X0X30_7,VAR_X1_8)) ).

fof(ax86,axiom,
    name_objective != name_skB ).

fof(ax65,axiom,
    name_A != name_c ).

fof(ax139,axiom,
    ! [VAR_V_168] :
      ( pred_attacker(tuple_client_B_in_3(VAR_V_168))
     <= pred_attacker(VAR_V_168) ) ).

fof(ax159,axiom,
    pred_attacker(constr_CONST_3) ).

fof(ax20,axiom,
    constr_CONST_1 != name_c ).

fof(ax94,axiom,
    ! [VAR_K_0X30,VAR_M_0X30] : constr_checksign(constr_sign(VAR_M_0X30,VAR_K_0X30),constr_pkey(VAR_K_0X30)) = VAR_M_0X30 ).

fof(ax169,axiom,
    pred_attacker(name_I) ).

fof(ax128,axiom,
    ! [VAR_V_127,VAR_V_128] :
      ( ( pred_attacker(VAR_V_128)
        & pred_attacker(VAR_V_127) )
     => pred_attacker(constr_enc(VAR_V_127,VAR_V_128)) ) ).

fof(ax125,axiom,
    ! [VAR_V_120X30,VAR_V_121] :
      ( pred_attacker(tuple_key_register_server_in_1(VAR_V_120X30,VAR_V_121))
     => pred_attacker(VAR_V_121) ) ).

fof(ax132,axiom,
    ! [VAR_V_140X30] :
      ( pred_attacker(tuple_client_B_out_4(VAR_V_140X30))
     <= pred_attacker(VAR_V_140X30) ) ).

fof(ax6,axiom,
    name_B != constr_CONST_0x30 ).

fof(ax172,axiom,
    ! [VAR_V_256] : pred_equal(VAR_V_256,VAR_V_256) ).

fof(ax108,axiom,
    ! [VAR_V_59] :
      ( pred_attacker(VAR_V_59)
     => pred_attacker(constr_tuple_2_get_0x30(VAR_V_59)) ) ).

fof(ax116,axiom,
    ! [VAR_V_79] :
      ( pred_attacker(VAR_V_79)
     => pred_attacker(tuple_out_1(VAR_V_79)) ) ).

fof(ax151,axiom,
    ! [VAR_V_211] :
      ( pred_attacker(VAR_V_211)
     <= pred_attacker(tuple_client_A_in_4(VAR_V_211)) ) ).

fof(ax16,axiom,
    constr_CONST_1 != constr_ZERO ).

fof(ax18,axiom,
    constr_CONST_1 != name_B ).

fof(ax12,axiom,
    name_skS != constr_CONST_0x30 ).

fof(ax11,axiom,
    name_skB != constr_CONST_0x30 ).

fof(ax22,axiom,
    constr_CONST_1 != name_skA ).

fof(ax124,axiom,
    ! [VAR_V_117,VAR_V_118] :
      ( pred_attacker(VAR_V_117)
     <= pred_attacker(tuple_key_register_server_in_1(VAR_V_117,VAR_V_118)) ) ).

fof(ax154,axiom,
    ! [VAR_V_221,VAR_V_222] :
      ( ( pred_attacker(VAR_V_222)
        & pred_attacker(VAR_V_221) )
     => pred_attacker(constr_checksign(VAR_V_221,VAR_V_222)) ) ).

fof(ax182,axiom,
    pred_attacker(tuple_client_B_out_1(name_B,name_A)) ).

fof(ax38,axiom,
    constr_CONST_3 != name_A ).

fof(ax142,axiom,
    ! [VAR_V_177] :
      ( pred_attacker(VAR_V_177)
     <= pred_attacker(tuple_client_B_in_2(VAR_V_177)) ) ).

fof(ax112,axiom,
    ! [VAR_V_67] :
      ( pred_attacker(VAR_V_67)
     => pred_attacker(tuple_out_3(VAR_V_67)) ) ).

fof(ax66,axiom,
    name_objective != name_A ).

fof(ax157,axiom,
    pred_attacker(constr_ZERO) ).

fof(ax164,axiom,
    ! [VAR_V_245,VAR_V_246] :
      ( pred_attacker(VAR_V_245)
     <= pred_attacker(tuple_2(VAR_V_245,VAR_V_246)) ) ).

fof(ax24,axiom,
    constr_CONST_1 != name_skS ).

fof(ax95,axiom,
    ! [VAR_X_18] : constr_xor(VAR_X_18,VAR_X_18) = constr_ZERO ).

fof(ax150,axiom,
    ! [VAR_V_20X308] :
      ( pred_attacker(tuple_client_A_in_4(VAR_V_20X308))
     <= pred_attacker(VAR_V_20X308) ) ).

fof(ax78,axiom,
    name_skA != name_I ).

fof(ax77,axiom,
    name_objective != name_I ).

fof(ax168,axiom,
    pred_attacker(name_c) ).

fof(ax1,axiom,
    constr_CONST_2 != constr_CONST_0x30 ).

fof(ax68,axiom,
    name_skB != name_A ).

fof(ax106,axiom,
    ! [VAR_V_55] :
      ( pred_attacker(VAR_V_55)
     => pred_attacker(constr_tuple_2_get_1(VAR_V_55)) ) ).

fof(ax175,axiom,
    pred_table(tuple_keys(name_B,constr_pkey(name_skB))) ).

fof(ax60,axiom,
    constr_ZERO != name_skA ).

fof(ax173,axiom,
    ! [VAR_V_257] : pred_attacker(name_new0x2Dname(VAR_V_257)) ).

fof(ax62,axiom,
    name_skS != constr_ZERO ).

fof(ax74,axiom,
    name_skB != name_B ).

fof(ax2,axiom,
    constr_CONST_0x30 != constr_CONST_3 ).

fof(ax50,axiom,
    constr_CONST_4 != name_c ).

fof(ax117,axiom,
    ! [VAR_V_82] :
      ( pred_attacker(tuple_out_1(VAR_V_82))
     => pred_attacker(VAR_V_82) ) ).

fof(ax141,axiom,
    ! [VAR_V_174] :
      ( pred_attacker(tuple_client_B_in_2(VAR_V_174))
     <= pred_attacker(VAR_V_174) ) ).

fof(ax69,axiom,
    name_A != name_skS ).

fof(ax96,axiom,
    ! [VAR_X_17] : VAR_X_17 = constr_xor(VAR_X_17,constr_ZERO) ).

fof(ax140,axiom,
    ! [VAR_V_171] :
      ( pred_attacker(tuple_client_B_in_3(VAR_V_171))
     => pred_attacker(VAR_V_171) ) ).

fof(ax152,axiom,
    ! [VAR_V_214] :
      ( pred_attacker(VAR_V_214)
     => pred_attacker(tuple_client_A_in_2(VAR_V_214)) ) ).

fof(ax155,axiom,
    ! [VAR_V_225,VAR_V_226] :
      ( pred_attacker(constr_aenc(VAR_V_225,VAR_V_226))
     <= ( pred_attacker(VAR_V_226)
        & pred_attacker(VAR_V_225) ) ) ).

fof(ax163,axiom,
    ! [VAR_V_237,VAR_V_238] :
      ( pred_attacker(tuple_2(VAR_V_237,VAR_V_238))
     <= ( pred_attacker(VAR_V_237)
        & pred_attacker(VAR_V_238) ) ) ).

fof(ax104,axiom,
    ! [VAR_V_50X30,VAR_V_51] :
      ( pred_attacker(constr_xor(VAR_V_50X30,VAR_V_51))
     <= ( pred_attacker(VAR_V_50X30)
        & pred_attacker(VAR_V_51) ) ) ).

fof(ax88,axiom,
    name_skA != name_skB ).

fof(ax31,axiom,
    constr_CONST_2 != name_c ).

fof(ax48,axiom,
    constr_CONST_4 != name_B ).

fof(ax158,axiom,
    pred_attacker(constr_CONST_4) ).

fof(ax92,axiom,
    ! [VAR_K_22,VAR_M_21] : constr_dec(constr_enc(VAR_M_21,VAR_K_22),VAR_K_22) = VAR_M_21 ).

fof(ax97,axiom,
    ! [VAR_X_15,VAR_Y_16] : constr_xor(VAR_Y_16,VAR_X_15) = constr_xor(VAR_X_15,VAR_Y_16) ).

fof(ax119,axiom,
    ! [VAR_V_89] :
      ( pred_attacker(tuple_key_retrieval_server_out_2(VAR_V_89))
     => pred_attacker(VAR_V_89) ) ).

fof(ax64,axiom,
    name_A != name_I ).

fof(ax36,axiom,
    constr_CONST_4 != constr_CONST_3 ).

fof(ax58,axiom,
    name_c != constr_ZERO ).

fof(ax5,axiom,
    constr_CONST_0x30 != name_A ).

fof(ax49,axiom,
    constr_CONST_4 != name_I ).

fof(ax122,axiom,
    ! [VAR_V_10X304,VAR_V_10X305] :
      ( pred_attacker(VAR_V_10X305)
     <= pred_attacker(tuple_key_retrieval_server_in_1(VAR_V_10X304,VAR_V_10X305)) ) ).

fof(ax127,axiom,
    pred_attacker(tuple_false) ).

fof(ax56,axiom,
    name_B != constr_ZERO ).

fof(ax27,axiom,
    constr_ZERO != constr_CONST_2 ).

fof(ax44,axiom,
    name_skB != constr_CONST_3 ).

fof(co0,conjecture,
    ! [VAR_V_683] : pred_attacker(tuple_2(name_Nb(VAR_V_683),name_objective)) ).

fof(ax160,axiom,
    pred_attacker(constr_CONST_2) ).

fof(ax145,axiom,
    ! [VAR_V_186] :
      ( pred_attacker(tuple_client_A_out_3(VAR_V_186))
     <= pred_attacker(VAR_V_186) ) ).

fof(ax8,axiom,
    constr_CONST_0x30 != name_c ).

fof(ax35,axiom,
    name_skS != constr_CONST_2 ).

fof(ax181,axiom,
    ! [VAR_0X40SID_436,VAR_AENC_NA_XOR_I_NI_435,VAR_SIGN_I_PKI_437] :
      ( pred_attacker(tuple_client_A_out_5(constr_aenc(constr_tuple_2_get_1_bitstring(constr_adec(VAR_AENC_NA_XOR_I_NI_435,name_skA)),constr_tuple_2_get_1_bitstring(constr_checksign(VAR_SIGN_I_PKI_437,constr_pkey(name_skS))))))
     <= ( pred_eq_bitstring_bitstring(name_I,constr_xor(constr_tuple_2_get_0x30_bitstring(constr_adec(VAR_AENC_NA_XOR_I_NI_435,name_skA)),name_Na(VAR_0X40SID_436)))
        & pred_attacker(tuple_client_A_in_2(VAR_SIGN_I_PKI_437))
        & pred_eq_bitstring_bitstring(name_I,constr_tuple_2_get_0x30(constr_checksign(VAR_SIGN_I_PKI_437,constr_pkey(name_skS))))
        & pred_attacker(tuple_client_A_in_4(VAR_AENC_NA_XOR_I_NI_435)) ) ) ).

fof(ax37,axiom,
    constr_CONST_3 != constr_ZERO ).

fof(ax121,axiom,
    ! [VAR_V_10X301,VAR_V_10X302] :
      ( pred_attacker(tuple_key_retrieval_server_in_1(VAR_V_10X301,VAR_V_10X302))
     => pred_attacker(VAR_V_10X301) ) ).

fof(ax53,axiom,
    name_skB != constr_CONST_4 ).

fof(ax14,axiom,
    constr_CONST_3 != constr_CONST_1 ).

fof(ax87,axiom,
    name_objective != name_skS ).

fof(ax21,axiom,
    name_objective != constr_CONST_1 ).

fof(ax130,axiom,
    ! [VAR_V_134] :
      ( pred_attacker(VAR_V_134)
     => pred_attacker(tuple_client_B_out_6(VAR_V_134)) ) ).

fof(ax98,axiom,
    ! [VAR_X_13,VAR_Y_14,VAR_Z_0X30] : constr_xor(VAR_X_13,constr_xor(VAR_Y_14,VAR_Z_0X30)) = constr_xor(constr_xor(VAR_X_13,VAR_Y_14),VAR_Z_0X30) ).

fof(ax45,axiom,
    name_skS != constr_CONST_3 ).

fof(ax54,axiom,
    constr_CONST_4 != name_skS ).

fof(ax40,axiom,
    name_I != constr_CONST_3 ).

fof(ax93,axiom,
    ! [VAR_K_20X30,VAR_M_19] : VAR_M_19 = constr_getmess(constr_sign(VAR_M_19,VAR_K_20X30)) ).

fof(ax180,axiom,
    ! [VAR_0X40SID_377,VAR_SIGN_I_PKI_376] :
      ( ( pred_attacker(tuple_client_A_in_2(VAR_SIGN_I_PKI_376))
        & pred_eq_bitstring_bitstring(name_I,constr_tuple_2_get_0x30(constr_checksign(VAR_SIGN_I_PKI_376,constr_pkey(name_skS)))) )
     => pred_attacker(tuple_client_A_out_3(constr_aenc(tuple_2(name_Na(VAR_0X40SID_377),name_A),constr_tuple_2_get_1_bitstring(constr_checksign(VAR_SIGN_I_PKI_376,constr_pkey(name_skS)))))) ) ).

fof(ax59,axiom,
    name_objective != constr_ZERO ).

fof(ax89,axiom,
    name_skS != name_skA ).

fof(ax57,axiom,
    constr_ZERO != name_I ).

fof(ax13,axiom,
    constr_CONST_2 != constr_CONST_1 ).

fof(ax170,axiom,
    pred_attacker(name_B) ).

fof(ax153,axiom,
    ! [VAR_V_217] :
      ( pred_attacker(VAR_V_217)
     <= pred_attacker(tuple_client_A_in_2(VAR_V_217)) ) ).

fof(ax162,axiom,
    pred_attacker(constr_CONST_0x30) ).

fof(ax61,axiom,
    constr_ZERO != name_skB ).

fof(ax67,axiom,
    name_A != name_skA ).

fof(ax72,axiom,
    name_objective != name_B ).

fof(ax110,axiom,
    ! [VAR_V_62,VAR_V_63] :
      ( pred_attacker(constr_sign(VAR_V_62,VAR_V_63))
     <= ( pred_attacker(VAR_V_63)
        & pred_attacker(VAR_V_62) ) ) ).

fof(ax186,axiom,
    ! [VAR_HOST_674,VAR_PK_675] :
      ( pred_table(tuple_keys(VAR_HOST_674,VAR_PK_675))
     <= ( VAR_HOST_674 != name_A
        & pred_attacker(tuple_key_register_server_in_1(VAR_HOST_674,VAR_PK_675))
        & VAR_HOST_674 != name_B ) ) ).

fof(ax81,axiom,
    name_c != name_objective ).

fof(ax34,axiom,
    constr_CONST_2 != name_skB ).

fof(ax51,axiom,
    name_objective != constr_CONST_4 ).

fof(ax15,axiom,
    constr_CONST_1 != constr_CONST_4 ).

fof(ax4,axiom,
    constr_ZERO != constr_CONST_0x30 ).

fof(ax136,axiom,
    ! [VAR_V_158,VAR_V_159] :
      ( pred_attacker(tuple_client_B_out_1(VAR_V_158,VAR_V_159))
     => pred_attacker(VAR_V_159) ) ).

fof(ax167,axiom,
    ! [VAR_V_253,VAR_V_254] :
      ( pred_mess(VAR_V_254,VAR_V_253)
     <= ( pred_attacker(VAR_V_254)
        & pred_attacker(VAR_V_253) ) ) ).

fof(ax133,axiom,
    ! [VAR_V_143] :
      ( pred_attacker(tuple_client_B_out_4(VAR_V_143))
     => pred_attacker(VAR_V_143) ) ).

fof(ax52,axiom,
    name_skA != constr_CONST_4 ).

fof(ax177,axiom,
    pred_attacker(tuple_out_2(constr_pkey(name_skB))) ).

fof(ax131,axiom,
    ! [VAR_V_137] :
      ( pred_attacker(tuple_client_B_out_6(VAR_V_137))
     => pred_attacker(VAR_V_137) ) ).

fof(ax30,axiom,
    name_I != constr_CONST_2 ).

fof(ax102,axiom,
    ! [VAR_X0X30_0X30,VAR_X1_0X30] : constr_tuple_2_get_0x30(tuple_2(VAR_X0X30_0X30,VAR_X1_0X30)) = VAR_X0X30_0X30 ).

fof(ax109,axiom,
    pred_attacker(tuple_true) ).

fof(ax73,axiom,
    name_skA != name_B ).

fof(ax123,axiom,
    ! [VAR_V_10X309,VAR_V_110X30] :
      ( ( pred_attacker(VAR_V_10X309)
        & pred_attacker(VAR_V_110X30) )
     => pred_attacker(tuple_key_register_server_in_1(VAR_V_10X309,VAR_V_110X30)) ) ).

fof(ax23,axiom,
    name_skB != constr_CONST_1 ).

fof(ax134,axiom,
    ! [VAR_V_147,VAR_V_148] :
      ( ( pred_attacker(VAR_V_148)
        & pred_attacker(VAR_V_147) )
     => pred_attacker(tuple_client_B_out_1(VAR_V_147,VAR_V_148)) ) ).

fof(ax184,axiom,
    ! [VAR_0X40SID_578,VAR_AENC_NA_A_580X30,VAR_AENC_NB_579,VAR_SIGN_A_PKA_581] :
      ( ( pred_eq_bitstring_bitstring(name_Nb(VAR_0X40SID_578),constr_adec(VAR_AENC_NB_579,name_skB))
        & pred_attacker(tuple_client_B_in_5(VAR_AENC_NB_579))
        & pred_eq_bitstring_bitstring(name_A,constr_tuple_2_get_0x30(constr_checksign(VAR_SIGN_A_PKA_581,constr_pkey(name_skS))))
        & pred_attacker(tuple_client_B_in_2(VAR_SIGN_A_PKA_581))
        & pred_attacker(tuple_client_B_in_3(VAR_AENC_NA_A_580X30))
        & pred_eq_bitstring_bitstring(name_A,constr_tuple_2_get_1(constr_adec(VAR_AENC_NA_A_580X30,name_skB))) )
     => pred_attacker(tuple_client_B_out_6(name_objective)) ) ).

fof(ax9,axiom,
    name_objective != constr_CONST_0x30 ).

fof(ax28,axiom,
    constr_CONST_2 != name_A ).

fof(ax19,axiom,
    constr_CONST_1 != name_I ).

fof(ax46,axiom,
    constr_ZERO != constr_CONST_4 ).

fof(ax42,axiom,
    name_objective != constr_CONST_3 ).

fof(ax0,axiom,
    constr_CONST_1 != constr_CONST_0x30 ).

fof(ax91,axiom,
    ! [VAR_K_24,VAR_M_23] : VAR_M_23 = constr_adec(constr_aenc(VAR_M_23,constr_pkey(VAR_K_24)),VAR_K_24) ).

fof(ax26,axiom,
    constr_CONST_4 != constr_CONST_2 ).

fof(ax63,axiom,
    name_A != name_B ).

fof(ax179,axiom,
    pred_attacker(tuple_client_A_out_1(name_A,name_I)) ).

fof(ax166,axiom,
    ! [VAR_V_251,VAR_V_252] :
      ( ( pred_attacker(VAR_V_252)
        & pred_mess(VAR_V_252,VAR_V_251) )
     => pred_attacker(VAR_V_251) ) ).

fof(ax47,axiom,
    constr_CONST_4 != name_A ).

fof(ax99,axiom,
    ! [VAR_X0X30_11,VAR_X1_12] : constr_tuple_2_get_1_bitstring(tuple_2(VAR_X0X30_11,VAR_X1_12)) = VAR_X1_12 ).

fof(ax10,axiom,
    name_skA != constr_CONST_0x30 ).

fof(ax146,axiom,
    ! [VAR_V_189] :
      ( pred_attacker(VAR_V_189)
     <= pred_attacker(tuple_client_A_out_3(VAR_V_189)) ) ).

fof(ax149,axiom,
    ! [VAR_V_20X304,VAR_V_20X305] :
      ( pred_attacker(VAR_V_20X305)
     <= pred_attacker(tuple_client_A_out_1(VAR_V_20X304,VAR_V_20X305)) ) ).

fof(ax148,axiom,
    ! [VAR_V_20X301,VAR_V_20X302] :
      ( pred_attacker(VAR_V_20X301)
     <= pred_attacker(tuple_client_A_out_1(VAR_V_20X301,VAR_V_20X302)) ) ).

fof(ax83,axiom,
    name_c != name_skB ).

