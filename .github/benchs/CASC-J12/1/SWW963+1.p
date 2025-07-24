fof(ax32,axiom,
    name_skS != constr_CONST_2 ).

fof(ax26,axiom,
    name_B != constr_CONST_2 ).

fof(ax46,axiom,
    name_objective != constr_CONST_4 ).

fof(ax27,axiom,
    constr_CONST_2 != name_I ).

fof(ax22,axiom,
    constr_CONST_1 != name_skS ).

fof(ax137,axiom,
    ! [VAR_V_224,VAR_V_225] :
      ( pred_attacker(tuple_client_B_out_1(VAR_V_224,VAR_V_225))
     => pred_attacker(VAR_V_224) ) ).

fof(ax99,axiom,
    ! [VAR_V_78] :
      ( pred_attacker(constr_tuple_2_get_1_bitstring(VAR_V_78))
     <= pred_attacker(VAR_V_78) ) ).

fof(ax80,axiom,
    ! [VAR_K_44,VAR_M_0X30] : constr_checksign(constr_sign(VAR_M_0X30,VAR_K_44),constr_pkey(VAR_K_44)) = VAR_M_0X30 ).

fof(ax57,axiom,
    name_I != name_B ).

fof(ax143,axiom,
    ! [VAR_V_243] :
      ( pred_attacker(tuple_client_B_in_2(VAR_V_243))
     <= pred_attacker(VAR_V_243) ) ).

fof(ax25,axiom,
    name_A != constr_CONST_2 ).

fof(ax70,axiom,
    name_c != name_skB ).

fof(ax171,axiom,
    ! [VAR_V_376,VAR_V_377] :
      ( pred_attacker(tuple_2(VAR_V_376,VAR_V_377))
     <= ( pred_attacker(VAR_V_376)
        & pred_attacker(VAR_V_377) ) ) ).

fof(ax36,axiom,
    name_I != constr_CONST_3 ).

fof(ax186,axiom,
    pred_attacker(tuple_out_3(constr_pkey(name_skS))) ).

fof(ax13,axiom,
    constr_CONST_1 != constr_CONST_3 ).

fof(ax190,axiom,
    pred_attacker(tuple_client_B_out_1(name_B,name_A)) ).

fof(ax116,axiom,
    ! [VAR_V_129,VAR_V_130X30] :
      ( pred_attacker(tuple_key_retrieval_server_in_1(VAR_V_129,VAR_V_130X30))
     => pred_attacker(VAR_V_130X30) ) ).

fof(ax56,axiom,
    name_skS != name_A ).

fof(ax146,axiom,
    ! [VAR_V_252] :
      ( pred_attacker(tuple_client_A_out_5(VAR_V_252))
     => pred_attacker(VAR_V_252) ) ).

fof(ax141,axiom,
    ! [VAR_V_237] :
      ( pred_attacker(tuple_client_B_in_3(VAR_V_237))
     <= pred_attacker(VAR_V_237) ) ).

fof(co0,conjecture,
    pred_attacker(name_objective) ).

fof(ax126,axiom,
    ! [VAR_V_180X30,VAR_V_181] :
      ( ( pred_attacker(VAR_V_180X30)
        & pred_attacker(VAR_V_181) )
     => pred_attacker(constr_ecb_enc_1(VAR_V_180X30,VAR_V_181)) ) ).

fof(ax24,axiom,
    constr_CONST_2 != constr_CONST_4 ).

fof(ax83,axiom,
    ! [VAR_K_34,VAR_X1_32,VAR_X2_33] : constr_ecb_dec_2(constr_ecb_enc_2(VAR_X1_32,VAR_X2_33,constr_pkey(VAR_K_34)),VAR_K_34) = tuple_2(VAR_X1_32,VAR_X2_33) ).

fof(ax124,axiom,
    ! [VAR_V_168,VAR_V_169,VAR_V_170X30,VAR_V_171] :
      ( ( pred_attacker(VAR_V_169)
        & pred_attacker(VAR_V_170X30)
        & pred_attacker(VAR_V_171)
        & pred_attacker(VAR_V_168) )
     => pred_attacker(constr_ecb_enc_3(VAR_V_168,VAR_V_169,VAR_V_170X30,VAR_V_171)) ) ).

fof(ax67,axiom,
    name_I != name_skS ).

fof(ax108,axiom,
    ! [VAR_V_98] :
      ( pred_attacker(VAR_V_98)
     => pred_attacker(tuple_out_2(VAR_V_98)) ) ).

fof(ax6,axiom,
    name_I != constr_CONST_0x30 ).

fof(ax4,axiom,
    name_A != constr_CONST_0x30 ).

fof(ax132,axiom,
    ! [VAR_V_20X303] :
      ( pred_attacker(VAR_V_20X303)
     => pred_attacker(tuple_client_B_out_6(VAR_V_20X303)) ) ).

fof(ax134,axiom,
    ! [VAR_V_20X309] :
      ( pred_attacker(VAR_V_20X309)
     => pred_attacker(tuple_client_B_out_4(VAR_V_20X309)) ) ).

fof(ax75,axiom,
    name_skB != name_skA ).

fof(ax122,axiom,
    ! [VAR_V_152,VAR_V_153] :
      ( ( pred_attacker(VAR_V_152)
        & pred_attacker(VAR_V_153) )
     => pred_attacker(constr_enc(VAR_V_152,VAR_V_153)) ) ).

fof(ax85,axiom,
    ! [VAR_K_29,VAR_X1_26,VAR_X2_27,VAR_X3_28,VAR_X4_0X30] : tuple_4(constr_ecb_enc_1(VAR_X1_26,VAR_K_29),constr_ecb_enc_1(VAR_X2_27,VAR_K_29),constr_ecb_enc_1(VAR_X3_28,VAR_K_29),constr_ecb_enc_1(VAR_X4_0X30,VAR_K_29)) = constr_ecb_enc_4(VAR_X1_26,VAR_X2_27,VAR_X3_28,VAR_X4_0X30,VAR_K_29) ).

fof(ax174,axiom,
    ! [VAR_V_390X30,VAR_V_391] :
      ( pred_attacker(VAR_V_390X30)
     <= ( pred_mess(VAR_V_391,VAR_V_390X30)
        & pred_attacker(VAR_V_391) ) ) ).

fof(ax93,axiom,
    ! [VAR_X0X30_7,VAR_X1_8] : constr_tuple_2_get_1(tuple_2(VAR_X0X30_7,VAR_X1_8)) = VAR_X1_8 ).

fof(ax109,axiom,
    ! [VAR_V_10X301] :
      ( pred_attacker(tuple_out_2(VAR_V_10X301))
     => pred_attacker(VAR_V_10X301) ) ).

fof(ax69,axiom,
    name_skA != name_c ).

fof(ax7,axiom,
    name_c != constr_CONST_0x30 ).

fof(ax162,axiom,
    ! [VAR_V_30X300X30,VAR_V_30X301,VAR_V_30X302,VAR_V_30X303] :
      ( pred_attacker(tuple_4(VAR_V_30X300X30,VAR_V_30X301,VAR_V_30X302,VAR_V_30X303))
     <= ( pred_attacker(VAR_V_30X301)
        & pred_attacker(VAR_V_30X303)
        & pred_attacker(VAR_V_30X302)
        & pred_attacker(VAR_V_30X300X30) ) ) ).

fof(ax64,axiom,
    name_objective != name_I ).

fof(ax115,axiom,
    ! [VAR_V_126,VAR_V_127] :
      ( pred_attacker(VAR_V_126)
     <= pred_attacker(tuple_key_retrieval_server_in_1(VAR_V_126,VAR_V_127)) ) ).

fof(ax49,axiom,
    constr_CONST_4 != name_skS ).

fof(ax71,axiom,
    name_skS != name_c ).

fof(ax21,axiom,
    name_skB != constr_CONST_1 ).

fof(ax179,axiom,
    pred_attacker(name_A) ).

fof(ax14,axiom,
    constr_CONST_1 != constr_CONST_4 ).

fof(ax98,axiom,
    ! [VAR_V_76] :
      ( pred_attacker(constr_tuple_3_get_0x30(VAR_V_76))
     <= pred_attacker(VAR_V_76) ) ).

fof(ax183,axiom,
    pred_table(tuple_keys(name_B,constr_pkey(name_skB))) ).

fof(ax123,axiom,
    ! [VAR_V_159,VAR_V_160X30,VAR_V_161,VAR_V_162,VAR_V_163] :
      ( ( pred_attacker(VAR_V_160X30)
        & pred_attacker(VAR_V_161)
        & pred_attacker(VAR_V_163)
        & pred_attacker(VAR_V_162)
        & pred_attacker(VAR_V_159) )
     => pred_attacker(constr_ecb_enc_4(VAR_V_159,VAR_V_160X30,VAR_V_161,VAR_V_162,VAR_V_163)) ) ).

fof(ax139,axiom,
    ! [VAR_V_231] :
      ( pred_attacker(tuple_client_B_in_5(VAR_V_231))
     <= pred_attacker(VAR_V_231) ) ).

fof(ax87,axiom,
    ! [VAR_K_0X30,VAR_X1_21,VAR_X2_22] : constr_ecb_enc_2(VAR_X1_21,VAR_X2_22,VAR_K_0X30) = tuple_2(constr_ecb_enc_1(VAR_X1_21,VAR_K_0X30),constr_ecb_enc_1(VAR_X2_22,VAR_K_0X30)) ).

fof(ax170,axiom,
    ! [VAR_V_370X30,VAR_V_371,VAR_V_372] :
      ( pred_attacker(VAR_V_372)
     <= pred_attacker(tuple_3(VAR_V_370X30,VAR_V_371,VAR_V_372)) ) ).

fof(ax188,axiom,
    ! [VAR_0X40SID_512,VAR_SIGN_I_PKI_511] :
      ( ( pred_attacker(tuple_client_A_in_2(VAR_SIGN_I_PKI_511))
        & pred_eq_bitstring_bitstring(name_I,constr_tuple_2_get_0x30(constr_checksign(VAR_SIGN_I_PKI_511,constr_pkey(name_skS)))) )
     => pred_attacker(tuple_client_A_out_3(constr_ecb_enc_2(name_Na(VAR_0X40SID_512),name_A,constr_tuple_2_get_1_bitstring(constr_checksign(VAR_SIGN_I_PKI_511,constr_pkey(name_skS)))))) ) ).

fof(ax184,axiom,
    pred_attacker(tuple_out_1(constr_pkey(name_skA))) ).

fof(ax117,axiom,
    ! [VAR_V_134,VAR_V_135] :
      ( pred_attacker(tuple_key_register_server_in_1(VAR_V_134,VAR_V_135))
     <= ( pred_attacker(VAR_V_135)
        & pred_attacker(VAR_V_134) ) ) ).

fof(ax111,axiom,
    ! [VAR_V_10X307] :
      ( pred_attacker(tuple_out_1(VAR_V_10X307))
     => pred_attacker(VAR_V_10X307) ) ).

fof(ax76,axiom,
    name_skA != name_skS ).

fof(ax118,axiom,
    ! [VAR_V_142,VAR_V_143] :
      ( pred_attacker(VAR_V_142)
     <= pred_attacker(tuple_key_register_server_in_1(VAR_V_142,VAR_V_143)) ) ).

fof(ax33,axiom,
    constr_CONST_4 != constr_CONST_3 ).

fof(ax43,axiom,
    constr_CONST_4 != name_B ).

fof(ax40,axiom,
    name_skB != constr_CONST_3 ).

fof(ax163,axiom,
    ! [VAR_V_324,VAR_V_325,VAR_V_326,VAR_V_327] :
      ( pred_attacker(tuple_4(VAR_V_324,VAR_V_325,VAR_V_326,VAR_V_327))
     => pred_attacker(VAR_V_324) ) ).

fof(ax8,axiom,
    name_objective != constr_CONST_0x30 ).

fof(ax105,axiom,
    ! [VAR_V_90X30] :
      ( pred_attacker(constr_pkey(VAR_V_90X30))
     <= pred_attacker(VAR_V_90X30) ) ).

fof(ax189,axiom,
    ! [VAR_0X40SID_577,VAR_ECB_ENC_NA_NI_I_576,VAR_SIGN_I_PKI_578] :
      ( ( pred_eq_bitstring_bitstring(name_Na(VAR_0X40SID_577),constr_tuple_3_get_0x30(constr_ecb_dec_3(VAR_ECB_ENC_NA_NI_I_576,name_skA)))
        & pred_attacker(tuple_client_A_in_4(VAR_ECB_ENC_NA_NI_I_576))
        & pred_eq_bitstring_bitstring(name_I,constr_tuple_2_get_0x30(constr_checksign(VAR_SIGN_I_PKI_578,constr_pkey(name_skS))))
        & pred_attacker(tuple_client_A_in_2(VAR_SIGN_I_PKI_578))
        & pred_eq_bitstring_bitstring(name_I,constr_tuple_3_get_2(constr_ecb_dec_3(VAR_ECB_ENC_NA_NI_I_576,name_skA))) )
     => pred_attacker(tuple_client_A_out_5(constr_ecb_enc_1(constr_tuple_3_get_1_bitstring(constr_ecb_dec_3(VAR_ECB_ENC_NA_NI_I_576,name_skA)),constr_tuple_2_get_1_bitstring(constr_checksign(VAR_SIGN_I_PKI_578,constr_pkey(name_skS)))))) ) ).

fof(ax66,axiom,
    name_skB != name_I ).

fof(ax181,axiom,
    ! [VAR_V_396] : pred_attacker(name_new0x2Dname(VAR_V_396)) ).

fof(ax53,axiom,
    name_A != name_objective ).

fof(ax160,axiom,
    pred_attacker(constr_CONST_1) ).

fof(ax148,axiom,
    ! [VAR_V_258] :
      ( pred_attacker(VAR_V_258)
     <= pred_attacker(tuple_client_A_out_3(VAR_V_258)) ) ).

fof(ax52,axiom,
    name_c != name_A ).

fof(ax16,axiom,
    name_B != constr_CONST_1 ).

fof(ax176,axiom,
    pred_attacker(name_c) ).

fof(ax65,axiom,
    name_skA != name_I ).

fof(ax19,axiom,
    constr_CONST_1 != name_objective ).

fof(ax140,axiom,
    ! [VAR_V_234] :
      ( pred_attacker(tuple_client_B_in_5(VAR_V_234))
     => pred_attacker(VAR_V_234) ) ).

fof(ax142,axiom,
    ! [VAR_V_240X30] :
      ( pred_attacker(tuple_client_B_in_3(VAR_V_240X30))
     => pred_attacker(VAR_V_240X30) ) ).

fof(ax63,axiom,
    name_I != name_c ).

fof(ax5,axiom,
    name_B != constr_CONST_0x30 ).

fof(ax2,axiom,
    constr_CONST_3 != constr_CONST_0x30 ).

fof(ax129,axiom,
    ! [VAR_V_192,VAR_V_193] :
      ( ( pred_attacker(VAR_V_192)
        & pred_attacker(VAR_V_193) )
     => pred_attacker(constr_ecb_dec_2(VAR_V_192,VAR_V_193)) ) ).

fof(ax44,axiom,
    name_I != constr_CONST_4 ).

fof(ax48,axiom,
    name_skB != constr_CONST_4 ).

fof(ax81,axiom,
    ! [VAR_K_43,VAR_X1_39,VAR_X2_40X30,VAR_X3_41,VAR_X4_42] : tuple_4(VAR_X1_39,VAR_X2_40X30,VAR_X3_41,VAR_X4_42) = constr_ecb_dec_4(constr_ecb_enc_4(VAR_X1_39,VAR_X2_40X30,VAR_X3_41,VAR_X4_42,constr_pkey(VAR_K_43)),VAR_K_43) ).

fof(ax130,axiom,
    ! [VAR_V_196,VAR_V_197] :
      ( pred_attacker(constr_ecb_dec_1(VAR_V_196,VAR_V_197))
     <= ( pred_attacker(VAR_V_196)
        & pred_attacker(VAR_V_197) ) ) ).

fof(ax167,axiom,
    ! [VAR_V_347,VAR_V_348,VAR_V_349] :
      ( pred_attacker(tuple_3(VAR_V_347,VAR_V_348,VAR_V_349))
     <= ( pred_attacker(VAR_V_348)
        & pred_attacker(VAR_V_349)
        & pred_attacker(VAR_V_347) ) ) ).

fof(ax120,axiom,
    ! [VAR_V_149] :
      ( pred_attacker(VAR_V_149)
     => pred_attacker(constr_getmess(VAR_V_149)) ) ).

fof(ax38,axiom,
    constr_CONST_3 != name_objective ).

fof(ax28,axiom,
    name_c != constr_CONST_2 ).

fof(ax103,axiom,
    pred_attacker(tuple_true) ).

fof(ax55,axiom,
    name_skB != name_A ).

fof(ax41,axiom,
    constr_CONST_3 != name_skS ).

fof(ax84,axiom,
    ! [VAR_K_31,VAR_X1_30X30] : VAR_X1_30X30 = constr_ecb_dec_1(constr_ecb_enc_1(VAR_X1_30X30,constr_pkey(VAR_K_31)),VAR_K_31) ).

fof(ax158,axiom,
    pred_attacker(constr_CONST_3) ).

fof(ax191,axiom,
    ! [VAR_0X40SID_687,VAR_ECB_ENC_NA_A_685,VAR_SIGN_A_PKA_686] :
      ( ( pred_attacker(tuple_client_B_in_3(VAR_ECB_ENC_NA_A_685))
        & pred_attacker(tuple_client_B_in_2(VAR_SIGN_A_PKA_686))
        & pred_eq_bitstring_bitstring(name_A,constr_tuple_2_get_0x30(constr_checksign(VAR_SIGN_A_PKA_686,constr_pkey(name_skS))))
        & pred_eq_bitstring_bitstring(name_A,constr_tuple_2_get_1(constr_ecb_dec_2(VAR_ECB_ENC_NA_A_685,name_skB))) )
     => pred_attacker(tuple_client_B_out_4(constr_ecb_enc_3(constr_tuple_2_get_0x30_bitstring(constr_ecb_dec_2(VAR_ECB_ENC_NA_A_685,name_skB)),name_Nb(VAR_0X40SID_687),name_B,constr_tuple_2_get_1_bitstring(constr_checksign(VAR_SIGN_A_PKA_686,constr_pkey(name_skS)))))) ) ).

fof(ax113,axiom,
    ! [VAR_V_114] :
      ( pred_attacker(tuple_key_retrieval_server_out_2(VAR_V_114))
     => pred_attacker(VAR_V_114) ) ).

fof(ax165,axiom,
    ! [VAR_V_334,VAR_V_335,VAR_V_336,VAR_V_337] :
      ( pred_attacker(VAR_V_336)
     <= pred_attacker(tuple_4(VAR_V_334,VAR_V_335,VAR_V_336,VAR_V_337)) ) ).

fof(ax161,axiom,
    pred_attacker(constr_CONST_0x30) ).

fof(ax10,axiom,
    constr_CONST_0x30 != name_skB ).

fof(ax35,axiom,
    constr_CONST_3 != name_B ).

fof(ax47,axiom,
    constr_CONST_4 != name_skA ).

fof(ax182,axiom,
    pred_table(tuple_keys(name_A,constr_pkey(name_skA))) ).

fof(ax91,axiom,
    ! [VAR_X0X30_11,VAR_X1_12,VAR_X2_13] : constr_tuple_3_get_2(tuple_3(VAR_X0X30_11,VAR_X1_12,VAR_X2_13)) = VAR_X2_13 ).

fof(ax185,axiom,
    pred_attacker(tuple_out_2(constr_pkey(name_skB))) ).

fof(ax173,axiom,
    ! [VAR_V_387,VAR_V_388] :
      ( pred_attacker(tuple_2(VAR_V_387,VAR_V_388))
     => pred_attacker(VAR_V_388) ) ).

fof(ax68,axiom,
    name_c != name_objective ).

fof(ax175,axiom,
    ! [VAR_V_392,VAR_V_393] :
      ( pred_mess(VAR_V_393,VAR_V_392)
     <= ( pred_attacker(VAR_V_393)
        & pred_attacker(VAR_V_392) ) ) ).

fof(ax51,axiom,
    name_I != name_A ).

fof(ax194,axiom,
    ! [VAR_HOST_813,VAR_PK_814] :
      ( ( pred_attacker(tuple_key_register_server_in_1(VAR_HOST_813,VAR_PK_814))
        & name_A != VAR_HOST_813
        & VAR_HOST_813 != name_B )
     => pred_table(tuple_keys(VAR_HOST_813,VAR_PK_814)) ) ).

fof(ax156,axiom,
    ! [VAR_V_290X30,VAR_V_291] :
      ( ( pred_attacker(VAR_V_291)
        & pred_attacker(VAR_V_290X30) )
     => pred_attacker(constr_checksign(VAR_V_290X30,VAR_V_291)) ) ).

fof(ax45,axiom,
    constr_CONST_4 != name_c ).

fof(ax73,axiom,
    name_objective != name_skB ).

fof(ax42,axiom,
    constr_CONST_4 != name_A ).

fof(ax11,axiom,
    constr_CONST_0x30 != name_skS ).

fof(ax135,axiom,
    ! [VAR_V_212] :
      ( pred_attacker(tuple_client_B_out_4(VAR_V_212))
     => pred_attacker(VAR_V_212) ) ).

fof(ax128,axiom,
    ! [VAR_V_188,VAR_V_189] :
      ( pred_attacker(constr_ecb_dec_3(VAR_V_188,VAR_V_189))
     <= ( pred_attacker(VAR_V_189)
        & pred_attacker(VAR_V_188) ) ) ).

fof(ax58,axiom,
    name_c != name_B ).

fof(ax72,axiom,
    name_objective != name_skA ).

fof(ax187,axiom,
    pred_attacker(tuple_client_A_out_1(name_A,name_I)) ).

fof(ax20,axiom,
    name_skA != constr_CONST_1 ).

fof(ax18,axiom,
    name_c != constr_CONST_1 ).

fof(ax159,axiom,
    pred_attacker(constr_CONST_2) ).

fof(ax155,axiom,
    ! [VAR_V_286] :
      ( pred_attacker(tuple_client_A_in_2(VAR_V_286))
     => pred_attacker(VAR_V_286) ) ).

fof(ax168,axiom,
    ! [VAR_V_362,VAR_V_363,VAR_V_364] :
      ( pred_attacker(VAR_V_362)
     <= pred_attacker(tuple_3(VAR_V_362,VAR_V_363,VAR_V_364)) ) ).

fof(ax77,axiom,
    name_skS != name_skB ).

fof(ax131,axiom,
    ! [VAR_V_20X300X30,VAR_V_20X301] :
      ( pred_attacker(constr_dec(VAR_V_20X300X30,VAR_V_20X301))
     <= ( pred_attacker(VAR_V_20X301)
        & pred_attacker(VAR_V_20X300X30) ) ) ).

fof(ax112,axiom,
    ! [VAR_V_111] :
      ( pred_attacker(tuple_key_retrieval_server_out_2(VAR_V_111))
     <= pred_attacker(VAR_V_111) ) ).

fof(ax164,axiom,
    ! [VAR_V_329,VAR_V_330X30,VAR_V_331,VAR_V_332] :
      ( pred_attacker(VAR_V_330X30)
     <= pred_attacker(tuple_4(VAR_V_329,VAR_V_330X30,VAR_V_331,VAR_V_332)) ) ).

fof(ax166,axiom,
    ! [VAR_V_339,VAR_V_340X30,VAR_V_341,VAR_V_342] :
      ( pred_attacker(VAR_V_342)
     <= pred_attacker(tuple_4(VAR_V_339,VAR_V_340X30,VAR_V_341,VAR_V_342)) ) ).

fof(ax78,axiom,
    ! [VAR_K_48,VAR_M_47] : VAR_M_47 = constr_dec(constr_enc(VAR_M_47,VAR_K_48),VAR_K_48) ).

fof(ax180,axiom,
    ! [VAR_V_395] : pred_equal(VAR_V_395,VAR_V_395) ).

fof(ax125,axiom,
    ! [VAR_V_175,VAR_V_176,VAR_V_177] :
      ( ( pred_attacker(VAR_V_175)
        & pred_attacker(VAR_V_177)
        & pred_attacker(VAR_V_176) )
     => pred_attacker(constr_ecb_enc_2(VAR_V_175,VAR_V_176,VAR_V_177)) ) ).

fof(ax59,axiom,
    name_objective != name_B ).

fof(ax96,axiom,
    ! [VAR_V_72] :
      ( pred_attacker(VAR_V_72)
     => pred_attacker(constr_tuple_3_get_2(VAR_V_72)) ) ).

fof(ax97,axiom,
    ! [VAR_V_74] :
      ( pred_attacker(constr_tuple_3_get_1_bitstring(VAR_V_74))
     <= pred_attacker(VAR_V_74) ) ).

fof(ax79,axiom,
    ! [VAR_K_46,VAR_M_45] : constr_getmess(constr_sign(VAR_M_45,VAR_K_46)) = VAR_M_45 ).

fof(ax86,axiom,
    ! [VAR_K_25,VAR_X1_23,VAR_X2_24,VAR_X3_0X30] : constr_ecb_enc_3(VAR_X1_23,VAR_X2_24,VAR_X3_0X30,VAR_K_25) = tuple_3(constr_ecb_enc_1(VAR_X1_23,VAR_K_25),constr_ecb_enc_1(VAR_X2_24,VAR_K_25),constr_ecb_enc_1(VAR_X3_0X30,VAR_K_25)) ).

fof(ax39,axiom,
    name_skA != constr_CONST_3 ).

fof(ax60,axiom,
    name_skA != name_B ).

fof(ax88,axiom,
    ! [VAR_X0X30_18,VAR_X1_19,VAR_X2_20X30] : constr_tuple_3_get_1_bitstring(tuple_3(VAR_X0X30_18,VAR_X1_19,VAR_X2_20X30)) = VAR_X1_19 ).

fof(ax192,axiom,
    ! [VAR_0X40SID_717,VAR_ECB_ENC_NA_A_719,VAR_ECB_ENC_NB_718,VAR_SIGN_A_PKA_720X30] :
      ( pred_attacker(tuple_client_B_out_6(name_objective))
     <= ( pred_eq_bitstring_bitstring(name_Nb(VAR_0X40SID_717),constr_ecb_dec_1(VAR_ECB_ENC_NB_718,name_skB))
        & pred_attacker(tuple_client_B_in_5(VAR_ECB_ENC_NB_718))
        & pred_eq_bitstring_bitstring(name_A,constr_tuple_2_get_1(constr_ecb_dec_2(VAR_ECB_ENC_NA_A_719,name_skB)))
        & pred_eq_bitstring_bitstring(name_A,constr_tuple_2_get_0x30(constr_checksign(VAR_SIGN_A_PKA_720X30,constr_pkey(name_skS))))
        & pred_attacker(tuple_client_B_in_2(VAR_SIGN_A_PKA_720X30))
        & pred_attacker(tuple_client_B_in_3(VAR_ECB_ENC_NA_A_719)) ) ) ).

fof(ax92,axiom,
    ! [VAR_X0X30_9,VAR_X1_10X30,VAR_X2_0X30] : constr_tuple_3_get_0x30(tuple_3(VAR_X0X30_9,VAR_X1_10X30,VAR_X2_0X30)) = VAR_X0X30_9 ).

fof(ax89,axiom,
    ! [VAR_X0X30_16,VAR_X1_17] : VAR_X1_17 = constr_tuple_2_get_1_bitstring(tuple_2(VAR_X0X30_16,VAR_X1_17)) ).

fof(ax74,axiom,
    name_objective != name_skS ).

fof(ax152,axiom,
    ! [VAR_V_277] :
      ( pred_attacker(tuple_client_A_in_4(VAR_V_277))
     <= pred_attacker(VAR_V_277) ) ).

fof(ax127,axiom,
    ! [VAR_V_184,VAR_V_185] :
      ( ( pred_attacker(VAR_V_184)
        & pred_attacker(VAR_V_185) )
     => pred_attacker(constr_ecb_dec_4(VAR_V_184,VAR_V_185)) ) ).

fof(ax136,axiom,
    ! [VAR_V_216,VAR_V_217] :
      ( pred_attacker(tuple_client_B_out_1(VAR_V_216,VAR_V_217))
     <= ( pred_attacker(VAR_V_216)
        & pred_attacker(VAR_V_217) ) ) ).

fof(ax153,axiom,
    ! [VAR_V_280X30] :
      ( pred_attacker(VAR_V_280X30)
     <= pred_attacker(tuple_client_A_in_4(VAR_V_280X30)) ) ).

fof(ax145,axiom,
    ! [VAR_V_249] :
      ( pred_attacker(VAR_V_249)
     => pred_attacker(tuple_client_A_out_5(VAR_V_249)) ) ).

fof(ax157,axiom,
    pred_attacker(constr_CONST_4) ).

fof(ax144,axiom,
    ! [VAR_V_246] :
      ( pred_attacker(VAR_V_246)
     <= pred_attacker(tuple_client_B_in_2(VAR_V_246)) ) ).

fof(ax106,axiom,
    ! [VAR_V_92] :
      ( pred_attacker(VAR_V_92)
     => pred_attacker(tuple_out_3(VAR_V_92)) ) ).

fof(ax23,axiom,
    constr_CONST_3 != constr_CONST_2 ).

fof(ax172,axiom,
    ! [VAR_V_384,VAR_V_385] :
      ( pred_attacker(tuple_2(VAR_V_384,VAR_V_385))
     => pred_attacker(VAR_V_384) ) ).

fof(ax17,axiom,
    name_I != constr_CONST_1 ).

fof(ax100,axiom,
    ! [VAR_V_80X30] :
      ( pred_attacker(constr_tuple_2_get_1(VAR_V_80X30))
     <= pred_attacker(VAR_V_80X30) ) ).

fof(ax1,axiom,
    constr_CONST_2 != constr_CONST_0x30 ).

fof(ax30,axiom,
    constr_CONST_2 != name_skA ).

fof(ax54,axiom,
    name_A != name_skA ).

fof(ax110,axiom,
    ! [VAR_V_10X304] :
      ( pred_attacker(VAR_V_10X304)
     => pred_attacker(tuple_out_1(VAR_V_10X304)) ) ).

fof(ax90,axiom,
    ! [VAR_X0X30_14,VAR_X1_15] : constr_tuple_2_get_0x30_bitstring(tuple_2(VAR_X0X30_14,VAR_X1_15)) = VAR_X0X30_14 ).

fof(ax62,axiom,
    name_B != name_skS ).

fof(ax15,axiom,
    constr_CONST_1 != name_A ).

fof(ax0,axiom,
    constr_CONST_1 != constr_CONST_0x30 ).

fof(ax178,axiom,
    pred_attacker(name_B) ).

fof(ax102,axiom,
    ! [VAR_V_84] :
      ( pred_attacker(VAR_V_84)
     => pred_attacker(constr_tuple_2_get_0x30(VAR_V_84)) ) ).

fof(ax169,axiom,
    ! [VAR_V_366,VAR_V_367,VAR_V_368] :
      ( pred_attacker(tuple_3(VAR_V_366,VAR_V_367,VAR_V_368))
     => pred_attacker(VAR_V_367) ) ).

fof(ax95,axiom,
    ! [VAR_X_65,VAR_Y_66] : pred_eq_bitstring_bitstring(VAR_X_65,VAR_Y_66) ).

fof(ax133,axiom,
    ! [VAR_V_20X306] :
      ( pred_attacker(VAR_V_20X306)
     <= pred_attacker(tuple_client_B_out_6(VAR_V_20X306)) ) ).

fof(ax154,axiom,
    ! [VAR_V_283] :
      ( pred_attacker(tuple_client_A_in_2(VAR_V_283))
     <= pred_attacker(VAR_V_283) ) ).

fof(ax31,axiom,
    constr_CONST_2 != name_skB ).

fof(ax37,axiom,
    name_c != constr_CONST_3 ).

fof(ax138,axiom,
    ! [VAR_V_227,VAR_V_228] :
      ( pred_attacker(tuple_client_B_out_1(VAR_V_227,VAR_V_228))
     => pred_attacker(VAR_V_228) ) ).

fof(ax9,axiom,
    constr_CONST_0x30 != name_skA ).

fof(ax107,axiom,
    ! [VAR_V_95] :
      ( pred_attacker(tuple_out_3(VAR_V_95))
     => pred_attacker(VAR_V_95) ) ).

fof(ax114,axiom,
    ! [VAR_V_118,VAR_V_119] :
      ( pred_attacker(tuple_key_retrieval_server_in_1(VAR_V_118,VAR_V_119))
     <= ( pred_attacker(VAR_V_118)
        & pred_attacker(VAR_V_119) ) ) ).

fof(ax50,axiom,
    name_A != name_B ).

fof(ax104,axiom,
    ! [VAR_V_87,VAR_V_88] :
      ( ( pred_attacker(VAR_V_87)
        & pred_attacker(VAR_V_88) )
     => pred_attacker(constr_sign(VAR_V_87,VAR_V_88)) ) ).

fof(ax101,axiom,
    ! [VAR_V_82] :
      ( pred_attacker(constr_tuple_2_get_0x30_bitstring(VAR_V_82))
     <= pred_attacker(VAR_V_82) ) ).

fof(ax82,axiom,
    ! [VAR_K_38,VAR_X1_35,VAR_X2_36,VAR_X3_37] : tuple_3(VAR_X1_35,VAR_X2_36,VAR_X3_37) = constr_ecb_dec_3(constr_ecb_enc_3(VAR_X1_35,VAR_X2_36,VAR_X3_37,constr_pkey(VAR_K_38)),VAR_K_38) ).

fof(ax61,axiom,
    name_B != name_skB ).

fof(ax29,axiom,
    constr_CONST_2 != name_objective ).

fof(ax149,axiom,
    ! [VAR_V_262,VAR_V_263] :
      ( pred_attacker(tuple_client_A_out_1(VAR_V_262,VAR_V_263))
     <= ( pred_attacker(VAR_V_263)
        & pred_attacker(VAR_V_262) ) ) ).

fof(ax147,axiom,
    ! [VAR_V_255] :
      ( pred_attacker(tuple_client_A_out_3(VAR_V_255))
     <= pred_attacker(VAR_V_255) ) ).

fof(ax34,axiom,
    name_A != constr_CONST_3 ).

fof(ax94,axiom,
    ! [VAR_X0X30_0X30,VAR_X1_0X30] : VAR_X0X30_0X30 = constr_tuple_2_get_0x30(tuple_2(VAR_X0X30_0X30,VAR_X1_0X30)) ).

fof(ax119,axiom,
    ! [VAR_V_145,VAR_V_146] :
      ( pred_attacker(tuple_key_register_server_in_1(VAR_V_145,VAR_V_146))
     => pred_attacker(VAR_V_146) ) ).

fof(ax193,axiom,
    ! [VAR_DST_759,VAR_PKDST_760X30,VAR_SRC_761] :
      ( pred_attacker(tuple_key_retrieval_server_out_2(constr_sign(tuple_2(VAR_DST_759,VAR_PKDST_760X30),name_skS)))
     <= ( pred_attacker(tuple_key_retrieval_server_in_1(VAR_SRC_761,VAR_DST_759))
        & pred_table(tuple_keys(VAR_DST_759,VAR_PKDST_760X30)) ) ) ).

fof(ax121,axiom,
    pred_attacker(tuple_false) ).

fof(ax12,axiom,
    constr_CONST_1 != constr_CONST_2 ).

fof(ax151,axiom,
    ! [VAR_V_273,VAR_V_274] :
      ( pred_attacker(tuple_client_A_out_1(VAR_V_273,VAR_V_274))
     => pred_attacker(VAR_V_274) ) ).

fof(ax3,axiom,
    constr_CONST_4 != constr_CONST_0x30 ).

fof(ax150,axiom,
    ! [VAR_V_270X30,VAR_V_271] :
      ( pred_attacker(tuple_client_A_out_1(VAR_V_270X30,VAR_V_271))
     => pred_attacker(VAR_V_270X30) ) ).

fof(ax177,axiom,
    pred_attacker(name_I) ).

