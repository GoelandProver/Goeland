fof(ax23,axiom,
    constr_CONST_3 != constr_CONST_2 ).

fof(ax76,axiom,
    name_skA != name_skS ).

fof(ax9,axiom,
    constr_CONST_0x30 != name_skA ).

fof(ax149,axiom,
    pred_attacker(name_c) ).

fof(ax145,axiom,
    ! [VAR_V_235,VAR_V_236] :
      ( pred_attacker(VAR_V_235)
     <= pred_attacker(tuple_2(VAR_V_235,VAR_V_236)) ) ).

fof(ax8,axiom,
    constr_CONST_0x30 != name_objective ).

fof(ax118,axiom,
    ! [VAR_V_148,VAR_V_149] :
      ( pred_attacker(VAR_V_149)
     <= pred_attacker(tuple_client_B_out_1(VAR_V_148,VAR_V_149)) ) ).

fof(ax35,axiom,
    constr_CONST_3 != name_B ).

fof(ax108,axiom,
    ! [VAR_V_114] :
      ( pred_attacker(constr_getmess(VAR_V_114))
     <= pred_attacker(VAR_V_114) ) ).

fof(ax109,axiom,
    pred_attacker(tuple_false) ).

fof(ax83,axiom,
    ! [VAR_X0X30_9,VAR_X1_10X30] : VAR_X0X30_9 = constr_tuple_2_get_0x30_bitstring(tuple_2(VAR_X0X30_9,VAR_X1_10X30)) ).

fof(ax39,axiom,
    name_skA != constr_CONST_3 ).

fof(ax96,axiom,
    ! [VAR_V_63] :
      ( pred_attacker(VAR_V_63)
     => pred_attacker(tuple_out_2(VAR_V_63)) ) ).

fof(ax50,axiom,
    name_B != name_A ).

fof(ax70,axiom,
    name_skB != name_c ).

fof(ax51,axiom,
    name_I != name_A ).

fof(ax110,axiom,
    ! [VAR_V_117,VAR_V_118] :
      ( pred_attacker(constr_enc(VAR_V_117,VAR_V_118))
     <= ( pred_attacker(VAR_V_117)
        & pred_attacker(VAR_V_118) ) ) ).

fof(ax67,axiom,
    name_skS != name_I ).

fof(ax158,axiom,
    pred_attacker(tuple_out_2(constr_pkey(name_skB))) ).

fof(ax13,axiom,
    constr_CONST_1 != constr_CONST_3 ).

fof(ax38,axiom,
    name_objective != constr_CONST_3 ).

fof(ax155,axiom,
    pred_table(tuple_keys(name_A,constr_pkey(name_skA))) ).

fof(ax7,axiom,
    constr_CONST_0x30 != name_c ).

fof(ax52,axiom,
    name_A != name_c ).

fof(ax136,axiom,
    ! [VAR_V_211,VAR_V_212] :
      ( ( pred_attacker(VAR_V_212)
        & pred_attacker(VAR_V_211) )
     => pred_attacker(constr_checksign(VAR_V_211,VAR_V_212)) ) ).

fof(ax115,axiom,
    ! [VAR_V_133] :
      ( pred_attacker(VAR_V_133)
     <= pred_attacker(tuple_client_B_out_4(VAR_V_133)) ) ).

fof(ax150,axiom,
    pred_attacker(name_I) ).

fof(ax114,axiom,
    ! [VAR_V_130X30] :
      ( pred_attacker(tuple_client_B_out_4(VAR_V_130X30))
     <= pred_attacker(VAR_V_130X30) ) ).

fof(ax160,axiom,
    pred_attacker(tuple_client_A_out_1(name_A,name_I)) ).

fof(ax73,axiom,
    name_skB != name_objective ).

fof(ax69,axiom,
    name_c != name_skA ).

fof(ax131,axiom,
    ! [VAR_V_194,VAR_V_195] :
      ( pred_attacker(VAR_V_195)
     <= pred_attacker(tuple_client_A_out_1(VAR_V_194,VAR_V_195)) ) ).

fof(ax107,axiom,
    ! [VAR_V_110X30,VAR_V_111] :
      ( pred_attacker(tuple_key_register_server_in_1(VAR_V_110X30,VAR_V_111))
     => pred_attacker(VAR_V_111) ) ).

fof(ax71,axiom,
    name_c != name_skS ).

fof(ax89,axiom,
    ! [VAR_V_47] :
      ( pred_attacker(VAR_V_47)
     => pred_attacker(constr_tuple_2_get_0x30_bitstring(VAR_V_47)) ) ).

fof(ax167,axiom,
    ! [VAR_HOST_642,VAR_PK_643] :
      ( pred_table(tuple_keys(VAR_HOST_642,VAR_PK_643))
     <= ( name_A != VAR_HOST_642
        & pred_attacker(tuple_key_register_server_in_1(VAR_HOST_642,VAR_PK_643))
        & name_B != VAR_HOST_642 ) ) ).

fof(ax128,axiom,
    ! [VAR_V_179] :
      ( pred_attacker(tuple_client_A_out_3(VAR_V_179))
     => pred_attacker(VAR_V_179) ) ).

fof(ax134,axiom,
    ! [VAR_V_20X304] :
      ( pred_attacker(tuple_client_A_in_2(VAR_V_20X304))
     <= pred_attacker(VAR_V_20X304) ) ).

fof(ax84,axiom,
    ! [VAR_X0X30_7,VAR_X1_8] : constr_tuple_2_get_1(tuple_2(VAR_X0X30_7,VAR_X1_8)) = VAR_X1_8 ).

fof(ax147,axiom,
    ! [VAR_V_241,VAR_V_242] :
      ( pred_attacker(VAR_V_241)
     <= ( pred_attacker(VAR_V_242)
        & pred_mess(VAR_V_242,VAR_V_241) ) ) ).

fof(ax18,axiom,
    name_c != constr_CONST_1 ).

fof(ax25,axiom,
    constr_CONST_2 != name_A ).

fof(ax68,axiom,
    name_c != name_objective ).

fof(ax14,axiom,
    constr_CONST_1 != constr_CONST_4 ).

fof(ax10,axiom,
    name_skB != constr_CONST_0x30 ).

fof(ax130,axiom,
    ! [VAR_V_191,VAR_V_192] :
      ( pred_attacker(VAR_V_191)
     <= pred_attacker(tuple_client_A_out_1(VAR_V_191,VAR_V_192)) ) ).

fof(ax117,axiom,
    ! [VAR_V_145,VAR_V_146] :
      ( pred_attacker(VAR_V_145)
     <= pred_attacker(tuple_client_B_out_1(VAR_V_145,VAR_V_146)) ) ).

fof(ax64,axiom,
    name_objective != name_I ).

fof(ax21,axiom,
    constr_CONST_1 != name_skB ).

fof(ax5,axiom,
    constr_CONST_0x30 != name_B ).

fof(ax95,axiom,
    ! [VAR_V_60X30] :
      ( pred_attacker(tuple_out_3(VAR_V_60X30))
     => pred_attacker(VAR_V_60X30) ) ).

fof(ax44,axiom,
    name_I != constr_CONST_4 ).

fof(ax86,axiom,
    ! [VAR_X_36,VAR_Y_37] : pred_eq_bitstring_bitstring(VAR_X_36,VAR_Y_37) ).

fof(ax162,axiom,
    ! [VAR_0X40SID_415,VAR_AENC_NA_NI_416,VAR_SIGN_I_PKI_417] :
      ( pred_attacker(tuple_client_A_out_5(constr_aenc(constr_tuple_2_get_1_bitstring(constr_adec(VAR_AENC_NA_NI_416,name_skA)),constr_tuple_2_get_1_bitstring(constr_checksign(VAR_SIGN_I_PKI_417,constr_pkey(name_skS))))))
     <= ( pred_eq_bitstring_bitstring(name_I,constr_tuple_2_get_0x30(constr_checksign(VAR_SIGN_I_PKI_417,constr_pkey(name_skS))))
        & pred_attacker(tuple_client_A_in_2(VAR_SIGN_I_PKI_417))
        & pred_attacker(tuple_client_A_in_4(VAR_AENC_NA_NI_416))
        & pred_eq_bitstring_bitstring(name_Na(VAR_0X40SID_415),constr_tuple_2_get_0x30(constr_adec(VAR_AENC_NA_NI_416,name_skA))) ) ) ).

fof(ax27,axiom,
    name_I != constr_CONST_2 ).

fof(ax166,axiom,
    ! [VAR_DST_588,VAR_PKDST_589,VAR_SRC_590X30] :
      ( pred_attacker(tuple_key_retrieval_server_out_2(constr_sign(tuple_2(VAR_DST_588,VAR_PKDST_589),name_skS)))
     <= ( pred_table(tuple_keys(VAR_DST_588,VAR_PKDST_589))
        & pred_attacker(tuple_key_retrieval_server_in_1(VAR_SRC_590X30,VAR_DST_588)) ) ) ).

fof(ax148,axiom,
    ! [VAR_V_243,VAR_V_244] :
      ( ( pred_attacker(VAR_V_243)
        & pred_attacker(VAR_V_244) )
     => pred_mess(VAR_V_244,VAR_V_243) ) ).

fof(ax113,axiom,
    ! [VAR_V_127] :
      ( pred_attacker(tuple_client_B_out_6(VAR_V_127))
     => pred_attacker(VAR_V_127) ) ).

fof(ax100,axiom,
    ! [VAR_V_76] :
      ( pred_attacker(VAR_V_76)
     => pred_attacker(tuple_key_retrieval_server_out_2(VAR_V_76)) ) ).

fof(ax57,axiom,
    name_I != name_B ).

fof(ax15,axiom,
    name_A != constr_CONST_1 ).

fof(ax121,axiom,
    ! [VAR_V_158] :
      ( pred_attacker(tuple_client_B_in_3(VAR_V_158))
     <= pred_attacker(VAR_V_158) ) ).

fof(ax126,axiom,
    ! [VAR_V_173] :
      ( pred_attacker(VAR_V_173)
     <= pred_attacker(tuple_client_A_out_5(VAR_V_173)) ) ).

fof(ax53,axiom,
    name_objective != name_A ).

fof(ax82,axiom,
    ! [VAR_X0X30_11,VAR_X1_12] : constr_tuple_2_get_1_bitstring(tuple_2(VAR_X0X30_11,VAR_X1_12)) = VAR_X1_12 ).

fof(ax34,axiom,
    constr_CONST_3 != name_A ).

fof(ax111,axiom,
    ! [VAR_V_121,VAR_V_122] :
      ( pred_attacker(constr_dec(VAR_V_121,VAR_V_122))
     <= ( pred_attacker(VAR_V_121)
        & pred_attacker(VAR_V_122) ) ) ).

fof(ax133,axiom,
    ! [VAR_V_20X301] :
      ( pred_attacker(tuple_client_A_in_4(VAR_V_20X301))
     => pred_attacker(VAR_V_20X301) ) ).

fof(ax60,axiom,
    name_B != name_skA ).

fof(ax49,axiom,
    name_skS != constr_CONST_4 ).

fof(ax30,axiom,
    name_skA != constr_CONST_2 ).

fof(ax116,axiom,
    ! [VAR_V_137,VAR_V_138] :
      ( ( pred_attacker(VAR_V_137)
        & pred_attacker(VAR_V_138) )
     => pred_attacker(tuple_client_B_out_1(VAR_V_137,VAR_V_138)) ) ).

fof(ax59,axiom,
    name_objective != name_B ).

fof(ax58,axiom,
    name_B != name_c ).

fof(ax152,axiom,
    pred_attacker(name_A) ).

fof(ax112,axiom,
    ! [VAR_V_124] :
      ( pred_attacker(VAR_V_124)
     => pred_attacker(tuple_client_B_out_6(VAR_V_124)) ) ).

fof(ax146,axiom,
    ! [VAR_V_238,VAR_V_239] :
      ( pred_attacker(VAR_V_239)
     <= pred_attacker(tuple_2(VAR_V_238,VAR_V_239)) ) ).

fof(ax104,axiom,
    ! [VAR_V_94,VAR_V_95] :
      ( pred_attacker(tuple_key_retrieval_server_in_1(VAR_V_94,VAR_V_95))
     => pred_attacker(VAR_V_95) ) ).

fof(ax132,axiom,
    ! [VAR_V_198] :
      ( pred_attacker(VAR_V_198)
     => pred_attacker(tuple_client_A_in_4(VAR_V_198)) ) ).

fof(ax31,axiom,
    constr_CONST_2 != name_skB ).

fof(ax6,axiom,
    name_I != constr_CONST_0x30 ).

fof(ax137,axiom,
    ! [VAR_V_215,VAR_V_216] :
      ( pred_attacker(constr_aenc(VAR_V_215,VAR_V_216))
     <= ( pred_attacker(VAR_V_216)
        & pred_attacker(VAR_V_215) ) ) ).

fof(ax4,axiom,
    name_A != constr_CONST_0x30 ).

fof(ax151,axiom,
    pred_attacker(name_B) ).

fof(ax153,axiom,
    ! [VAR_V_246] : pred_equal(VAR_V_246,VAR_V_246) ).

fof(ax42,axiom,
    constr_CONST_4 != name_A ).

fof(ax135,axiom,
    ! [VAR_V_20X307] :
      ( pred_attacker(tuple_client_A_in_2(VAR_V_20X307))
     => pred_attacker(VAR_V_20X307) ) ).

fof(ax163,axiom,
    pred_attacker(tuple_client_B_out_1(name_B,name_A)) ).

fof(ax32,axiom,
    constr_CONST_2 != name_skS ).

fof(ax85,axiom,
    ! [VAR_X0X30_0X30,VAR_X1_0X30] : VAR_X0X30_0X30 = constr_tuple_2_get_0x30(tuple_2(VAR_X0X30_0X30,VAR_X1_0X30)) ).

fof(ax3,axiom,
    constr_CONST_4 != constr_CONST_0x30 ).

fof(ax119,axiom,
    ! [VAR_V_152] :
      ( pred_attacker(tuple_client_B_in_5(VAR_V_152))
     <= pred_attacker(VAR_V_152) ) ).

fof(ax29,axiom,
    constr_CONST_2 != name_objective ).

fof(ax17,axiom,
    constr_CONST_1 != name_I ).

fof(ax97,axiom,
    ! [VAR_V_66] :
      ( pred_attacker(tuple_out_2(VAR_V_66))
     => pred_attacker(VAR_V_66) ) ).

fof(ax55,axiom,
    name_skB != name_A ).

fof(ax79,axiom,
    ! [VAR_K_16,VAR_M_15] : constr_dec(constr_enc(VAR_M_15,VAR_K_16),VAR_K_16) = VAR_M_15 ).

fof(ax61,axiom,
    name_B != name_skB ).

fof(ax66,axiom,
    name_skB != name_I ).

fof(ax154,axiom,
    ! [VAR_V_247] : pred_attacker(name_new0x2Dname(VAR_V_247)) ).

fof(ax129,axiom,
    ! [VAR_V_183,VAR_V_184] :
      ( ( pred_attacker(VAR_V_184)
        & pred_attacker(VAR_V_183) )
     => pred_attacker(tuple_client_A_out_1(VAR_V_183,VAR_V_184)) ) ).

fof(ax19,axiom,
    constr_CONST_1 != name_objective ).

fof(ax80,axiom,
    ! [VAR_K_14,VAR_M_13] : constr_getmess(constr_sign(VAR_M_13,VAR_K_14)) = VAR_M_13 ).

fof(ax11,axiom,
    constr_CONST_0x30 != name_skS ).

fof(ax99,axiom,
    ! [VAR_V_72] :
      ( pred_attacker(tuple_out_1(VAR_V_72))
     => pred_attacker(VAR_V_72) ) ).

fof(ax140,axiom,
    pred_attacker(constr_CONST_3) ).

fof(ax161,axiom,
    ! [VAR_0X40SID_367,VAR_SIGN_I_PKI_366] :
      ( pred_attacker(tuple_client_A_out_3(constr_aenc(tuple_2(name_Na(VAR_0X40SID_367),name_A),constr_tuple_2_get_1_bitstring(constr_checksign(VAR_SIGN_I_PKI_366,constr_pkey(name_skS))))))
     <= ( pred_attacker(tuple_client_A_in_2(VAR_SIGN_I_PKI_366))
        & pred_eq_bitstring_bitstring(name_I,constr_tuple_2_get_0x30(constr_checksign(VAR_SIGN_I_PKI_366,constr_pkey(name_skS)))) ) ) ).

fof(ax127,axiom,
    ! [VAR_V_176] :
      ( pred_attacker(VAR_V_176)
     => pred_attacker(tuple_client_A_out_3(VAR_V_176)) ) ).

fof(ax164,axiom,
    ! [VAR_0X40SID_524,VAR_AENC_NA_A_522,VAR_SIGN_A_PKA_523] :
      ( ( pred_eq_bitstring_bitstring(name_A,constr_tuple_2_get_1(constr_adec(VAR_AENC_NA_A_522,name_skB)))
        & pred_attacker(tuple_client_B_in_3(VAR_AENC_NA_A_522))
        & pred_attacker(tuple_client_B_in_2(VAR_SIGN_A_PKA_523))
        & pred_eq_bitstring_bitstring(name_A,constr_tuple_2_get_0x30(constr_checksign(VAR_SIGN_A_PKA_523,constr_pkey(name_skS)))) )
     => pred_attacker(tuple_client_B_out_4(constr_aenc(tuple_2(constr_tuple_2_get_0x30_bitstring(constr_adec(VAR_AENC_NA_A_522,name_skB)),name_Nb(VAR_0X40SID_524)),constr_tuple_2_get_1_bitstring(constr_checksign(VAR_SIGN_A_PKA_523,constr_pkey(name_skS)))))) ) ).

fof(ax103,axiom,
    ! [VAR_V_91,VAR_V_92] :
      ( pred_attacker(tuple_key_retrieval_server_in_1(VAR_V_91,VAR_V_92))
     => pred_attacker(VAR_V_91) ) ).

fof(ax139,axiom,
    pred_attacker(constr_CONST_4) ).

fof(ax92,axiom,
    ! [VAR_V_52,VAR_V_53] :
      ( pred_attacker(constr_sign(VAR_V_52,VAR_V_53))
     <= ( pred_attacker(VAR_V_53)
        & pred_attacker(VAR_V_52) ) ) ).

fof(ax81,axiom,
    ! [VAR_K_0X30,VAR_M_0X30] : VAR_M_0X30 = constr_checksign(constr_sign(VAR_M_0X30,VAR_K_0X30),constr_pkey(VAR_K_0X30)) ).

fof(ax120,axiom,
    ! [VAR_V_155] :
      ( pred_attacker(VAR_V_155)
     <= pred_attacker(tuple_client_B_in_5(VAR_V_155)) ) ).

fof(ax159,axiom,
    pred_attacker(tuple_out_3(constr_pkey(name_skS))) ).

fof(ax125,axiom,
    ! [VAR_V_170X30] :
      ( pred_attacker(VAR_V_170X30)
     => pred_attacker(tuple_client_A_out_5(VAR_V_170X30)) ) ).

fof(ax93,axiom,
    ! [VAR_V_55] :
      ( pred_attacker(constr_pkey(VAR_V_55))
     <= pred_attacker(VAR_V_55) ) ).

fof(ax65,axiom,
    name_skA != name_I ).

fof(ax157,axiom,
    pred_attacker(tuple_out_1(constr_pkey(name_skA))) ).

fof(ax91,axiom,
    pred_attacker(tuple_true) ).

fof(ax78,axiom,
    ! [VAR_K_18,VAR_M_17] : VAR_M_17 = constr_adec(constr_aenc(VAR_M_17,constr_pkey(VAR_K_18)),VAR_K_18) ).

fof(ax45,axiom,
    constr_CONST_4 != name_c ).

fof(ax2,axiom,
    constr_CONST_0x30 != constr_CONST_3 ).

fof(ax54,axiom,
    name_skA != name_A ).

fof(ax101,axiom,
    ! [VAR_V_79] :
      ( pred_attacker(VAR_V_79)
     <= pred_attacker(tuple_key_retrieval_server_out_2(VAR_V_79)) ) ).

fof(ax142,axiom,
    pred_attacker(constr_CONST_1) ).

fof(ax41,axiom,
    constr_CONST_3 != name_skS ).

fof(ax63,axiom,
    name_c != name_I ).

fof(ax77,axiom,
    name_skS != name_skB ).

fof(ax40,axiom,
    constr_CONST_3 != name_skB ).

fof(ax33,axiom,
    constr_CONST_3 != constr_CONST_4 ).

fof(ax36,axiom,
    name_I != constr_CONST_3 ).

fof(ax122,axiom,
    ! [VAR_V_161] :
      ( pred_attacker(tuple_client_B_in_3(VAR_V_161))
     => pred_attacker(VAR_V_161) ) ).

fof(ax46,axiom,
    constr_CONST_4 != name_objective ).

fof(ax138,axiom,
    ! [VAR_V_219,VAR_V_220X30] :
      ( ( pred_attacker(VAR_V_220X30)
        & pred_attacker(VAR_V_219) )
     => pred_attacker(constr_adec(VAR_V_219,VAR_V_220X30)) ) ).

fof(ax72,axiom,
    name_objective != name_skA ).

fof(ax156,axiom,
    pred_table(tuple_keys(name_B,constr_pkey(name_skB))) ).

fof(co0,conjecture,
    ! [VAR_V_651] : pred_attacker(tuple_2(name_Nb(VAR_V_651),name_objective)) ).

fof(ax28,axiom,
    constr_CONST_2 != name_c ).

fof(ax1,axiom,
    constr_CONST_2 != constr_CONST_0x30 ).

fof(ax0,axiom,
    constr_CONST_1 != constr_CONST_0x30 ).

fof(ax16,axiom,
    constr_CONST_1 != name_B ).

fof(ax124,axiom,
    ! [VAR_V_167] :
      ( pred_attacker(VAR_V_167)
     <= pred_attacker(tuple_client_B_in_2(VAR_V_167)) ) ).

fof(ax144,axiom,
    ! [VAR_V_227,VAR_V_228] :
      ( ( pred_attacker(VAR_V_228)
        & pred_attacker(VAR_V_227) )
     => pred_attacker(tuple_2(VAR_V_227,VAR_V_228)) ) ).

fof(ax74,axiom,
    name_skS != name_objective ).

fof(ax106,axiom,
    ! [VAR_V_10X307,VAR_V_10X308] :
      ( pred_attacker(VAR_V_10X307)
     <= pred_attacker(tuple_key_register_server_in_1(VAR_V_10X307,VAR_V_10X308)) ) ).

fof(ax48,axiom,
    name_skB != constr_CONST_4 ).

fof(ax47,axiom,
    constr_CONST_4 != name_skA ).

fof(ax22,axiom,
    constr_CONST_1 != name_skS ).

fof(ax90,axiom,
    ! [VAR_V_49] :
      ( pred_attacker(constr_tuple_2_get_0x30(VAR_V_49))
     <= pred_attacker(VAR_V_49) ) ).

fof(ax123,axiom,
    ! [VAR_V_164] :
      ( pred_attacker(VAR_V_164)
     => pred_attacker(tuple_client_B_in_2(VAR_V_164)) ) ).

fof(ax20,axiom,
    name_skA != constr_CONST_1 ).

fof(ax88,axiom,
    ! [VAR_V_45] :
      ( pred_attacker(VAR_V_45)
     => pred_attacker(constr_tuple_2_get_1(VAR_V_45)) ) ).

fof(ax98,axiom,
    ! [VAR_V_69] :
      ( pred_attacker(VAR_V_69)
     => pred_attacker(tuple_out_1(VAR_V_69)) ) ).

fof(ax62,axiom,
    name_skS != name_B ).

fof(ax43,axiom,
    constr_CONST_4 != name_B ).

fof(ax141,axiom,
    pred_attacker(constr_CONST_2) ).

fof(ax56,axiom,
    name_skS != name_A ).

fof(ax165,axiom,
    ! [VAR_0X40SID_546,VAR_AENC_NA_A_548,VAR_AENC_NB_547,VAR_SIGN_A_PKA_549] :
      ( ( pred_attacker(tuple_client_B_in_2(VAR_SIGN_A_PKA_549))
        & pred_eq_bitstring_bitstring(name_A,constr_tuple_2_get_0x30(constr_checksign(VAR_SIGN_A_PKA_549,constr_pkey(name_skS))))
        & pred_attacker(tuple_client_B_in_3(VAR_AENC_NA_A_548))
        & pred_eq_bitstring_bitstring(name_A,constr_tuple_2_get_1(constr_adec(VAR_AENC_NA_A_548,name_skB)))
        & pred_attacker(tuple_client_B_in_5(VAR_AENC_NB_547))
        & pred_eq_bitstring_bitstring(name_Nb(VAR_0X40SID_546),constr_adec(VAR_AENC_NB_547,name_skB)) )
     => pred_attacker(tuple_client_B_out_6(name_objective)) ) ).

fof(ax102,axiom,
    ! [VAR_V_83,VAR_V_84] :
      ( ( pred_attacker(VAR_V_84)
        & pred_attacker(VAR_V_83) )
     => pred_attacker(tuple_key_retrieval_server_in_1(VAR_V_83,VAR_V_84)) ) ).

fof(ax26,axiom,
    name_B != constr_CONST_2 ).

fof(ax37,axiom,
    constr_CONST_3 != name_c ).

fof(ax94,axiom,
    ! [VAR_V_57] :
      ( pred_attacker(VAR_V_57)
     => pred_attacker(tuple_out_3(VAR_V_57)) ) ).

fof(ax24,axiom,
    constr_CONST_2 != constr_CONST_4 ).

fof(ax12,axiom,
    constr_CONST_2 != constr_CONST_1 ).

fof(ax87,axiom,
    ! [VAR_V_43] :
      ( pred_attacker(constr_tuple_2_get_1_bitstring(VAR_V_43))
     <= pred_attacker(VAR_V_43) ) ).

fof(ax143,axiom,
    pred_attacker(constr_CONST_0x30) ).

fof(ax75,axiom,
    name_skA != name_skB ).

fof(ax105,axiom,
    ! [VAR_V_99,VAR_V_10X300X30] :
      ( pred_attacker(tuple_key_register_server_in_1(VAR_V_99,VAR_V_10X300X30))
     <= ( pred_attacker(VAR_V_10X300X30)
        & pred_attacker(VAR_V_99) ) ) ).

