%------------------------------------------------------------------------------
% File     : NUM669+4 : TPTP v8.1.0. Released v7.3.0.
% Domain   : Number theory
% Problem  : Grundlagen problem satz18b
% Version  : [Bro17] axioms : Especial.
% English  :

% Refs     : [Bro17] Brown (2017), Email to G. Sutcliffe
% Source   : [Br017]
% Names    :

% Status   : Theorem
% Rating   : 0.97 v7.4.0, 0.90 v7.3.0
% Syntax   : Number of formulae    :  444 ( 177 unt;   0 def)
%            Number of atoms       :  852 ( 111 equ)
%            Maximal formula atoms :    8 (   1 avg)
%            Number of connectives :  426 (  18   ~;  16   |;  25   &)
%                                         ( 221 <=>; 146  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   14 (   4 avg)
%            Maximal term depth    :    8 (   2 avg)
%            Number of predicates  :   12 (  11 usr;   1 prp; 0-3 aty)
%            Number of functors    :  329 ( 329 usr; 169 con; 0-5 aty)
%            Number of variables   :  852 ( 845   !;   7   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Translated by Isabelle from the THF version.
%------------------------------------------------------------------------------
% Explicit typings (24)
fof(gsy_c_HOL_Oundefined_001t__HOL__Obool,axiom,
    gg_bool(undefined_bool(bool)) ).

fof(gsy_c_HOL_Oundefined_001t__TPTP____Interpret__Oind,axiom,
    gg_TPTP_ind(undefined_TPTP_ind(tPTP_ind)) ).

fof(gsy_c_Scratch__tptp__translate__45846__17029_ONUM669__thf__4__p_Obnd__amone,axiom,
    ! [B_1,B_2] : gg_bool(scratc621603181_amone(B_1,B_2)) ).

fof(gsy_c_Scratch__tptp__translate__45846__17029_ONUM669__thf__4__p_Obnd__d__and,axiom,
    ! [B_1,B_2] : gg_bool(scratc610767008_d_and(B_1,B_2)) ).

fof(gsy_c_Scratch__tptp__translate__45846__17029_ONUM669__thf__4__p_Obnd__d__not,axiom,
    ! [B_1] : gg_bool(scratc718232188_d_not(B_1)) ).

fof(gsy_c_Scratch__tptp__translate__45846__17029_ONUM669__thf__4__p_Obnd__ec3,axiom,
    ! [B_1,B_2,B_3] : gg_bool(scratc1994269768nd_ec3(B_1,B_2,B_3)) ).

fof(gsy_c_Scratch__tptp__translate__45846__17029_ONUM669__thf__4__p_Obnd__ect,axiom,
    ! [B_1,B_2] : gg_TPTP_ind(scratc1994269833nd_ect(B_1,B_2)) ).

fof(gsy_c_Scratch__tptp__translate__45846__17029_ONUM669__thf__4__p_Obnd__emptyset,axiom,
    gg_TPTP_ind(scratc2095348162ptyset) ).

fof(gsy_c_Scratch__tptp__translate__45846__17029_ONUM669__thf__4__p_Obnd__eps,axiom,
    ! [B_1] : gg_TPTP_ind(scratc1995122619nd_eps(B_1)) ).

fof(gsy_c_Scratch__tptp__translate__45846__17029_ONUM669__thf__4__p_Obnd__ind,axiom,
    ! [B_1,B_2] : gg_TPTP_ind(scratc2028037426nd_ind(B_1,B_2)) ).

fof(gsy_c_Scratch__tptp__translate__45846__17029_ONUM669__thf__4__p_Obnd__l__ec,axiom,
    ! [B_1,B_2] : gg_bool(scratc2095815101d_l_ec(B_1,B_2)) ).

fof(gsy_c_Scratch__tptp__translate__45846__17029_ONUM669__thf__4__p_Obnd__n__1,axiom,
    gg_TPTP_ind(scratc98832752nd_n_1) ).

fof(gsy_c_Scratch__tptp__translate__45846__17029_ONUM669__thf__4__p_Obnd__nat,axiom,
    gg_TPTP_ind(scratc2068492180nd_nat) ).

fof(gsy_c_Scratch__tptp__translate__45846__17029_ONUM669__thf__4__p_Obnd__omega,axiom,
    gg_TPTP_ind(scratc1460043444_omega) ).

fof(gsy_c_Scratch__tptp__translate__45846__17029_ONUM669__thf__4__p_Obnd__or3,axiom,
    ! [B_1,B_2,B_3] : gg_bool(scratc2077868803nd_or3(B_1,B_2,B_3)) ).

fof(gsy_c_aa_001t__HOL__Obool_001t__HOL__Obool,axiom,
    ! [B_1,B_2] : gg_bool(aa_bool_bool(B_1,B_2)) ).

fof(gsy_c_aa_001t__TPTP____Interpret__Oind_001t__HOL__Obool,axiom,
    ! [B_1,B_2] : gg_bool(aa_TPTP_ind_bool(B_1,B_2)) ).

fof(gsy_c_aa_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind,axiom,
    ! [B_1,B_2] : gg_TPTP_ind(aa_TPTP_ind_TPTP_ind(B_1,B_2)) ).

fof(gsy_c_aa_001t__fun_It__TPTP____Interpret__Oind_Mt__HOL__Obool_J_001t__HOL__Obool,hypothesis,
    ! [B_1,B_2] : gg_bool(aa_fun171081125l_bool(B_1,B_2)) ).

fof(gsy_c_aa_001t__fun_It__TPTP____Interpret__Oind_Mt__HOL__Obool_J_001t__TPTP____Interpret__Oind,axiom,
    ! [B_1,B_2] : gg_TPTP_ind(aa_fun1431113780TP_ind(B_1,B_2)) ).

fof(gsy_c_aa_001t__fun_It__TPTP____Interpret__Oind_Mt__TPTP____Interpret__Oind_J_001t__TPTP____Interpret__Oind,axiom,
    ! [B_1,B_2] : gg_TPTP_ind(aa_fun277296641TP_ind(B_1,B_2)) ).

fof(gsy_c_fEx_001t__TPTP____Interpret__Oind,axiom,
    ! [B_1] : gg_bool(fEx_TPTP_ind(B_1)) ).

fof(gsy_c_fFalse,axiom,
    gg_bool(fFalse) ).

fof(gsy_c_fTrue,axiom,
    gg_bool(fTrue) ).

% Relevant facts (404)
fof(fact_def__lessis,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc414529904lessis,X),Xa))
    <=> pp(aa_bool_bool(scratc2096471106d_l_or(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,X),Xa)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,X),Xa))) ) ).

% def_lessis
fof(fact_def__moreis,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc548513516moreis,X),Xa))
    <=> pp(aa_bool_bool(scratc2096471106d_l_or(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,X),Xa)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,X),Xa))) ) ).

% def_moreis
fof(fact_def__d__29__prop1,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1219344880_prop1,X),Xa))
    <=> pp(scratc2077868803nd_or3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,X),Xa),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,X),Xa),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,X),Xa))) ) ).

% def_d_29_prop1
fof(fact_def__iii,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,X),Xa))
    <=> pp(aa_fun171081125l_bool(scratc701212661n_some,aa_TPT43085870d_bool(scratc1229761461ffprop(Xa),X))) ) ).

% def_iii
fof(fact_def__d__29__ii,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,X),Xa))
    <=> pp(aa_fun171081125l_bool(scratc701212661n_some,aa_TPT43085870d_bool(scratc1229761461ffprop(X),Xa))) ) ).

% def_d_29_ii
fof(fact_def__diffprop,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1229761461ffprop(X),Xa),Xb))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,X),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Xa),Xb))) ) ).

% def_diffprop
fof(fact_def__d__28__prop1,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc630982705_prop1(X),Xa),Xb))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2069016971nd_nis,aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(X),Xa)),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(X),Xb))) ) ).

% def_d_28_prop1
fof(fact_def__d__27__prop1,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc42620530_prop1,X),Xa))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2069016971nd_nis,Xa),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(X),Xa))) ) ).

% def_d_27_prop1
fof(fact_def__d__26__prop1,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1601742003_prop1,X),Xa))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(X),Xa)),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Xa),X))) ) ).

% def_d_26_prop1
fof(fact_def__d__25__prop1,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1013379828_prop1(X),Xa),Xb))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(X),Xa)),Xb)),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(X),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Xa),Xb)))) ) ).

% def_d_25_prop1
fof(fact_def__n__pl,axiom,
    ! [X] : scratc80697981d_n_pl(X) = aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,aa_TPTP_ind_TPTP_ind(scratc1768849959d_plus,X)) ).

% def_n_pl
fof(fact_def__plus,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc1768849959d_plus,X) = scratc2028037426nd_ind(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1567857808d_d_Pi,scratc2068492180nd_nat),aTP_Lamm_ab),aa_TPT43085870d_bool(scratc425017654_prop2,X)) ).

% def_plus
fof(fact_def__d__24__g,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc325144174d_24_g,X) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,scratc2068492180nd_nat),aTP_Lamm_ac(X)) ).

% def_d_24_g
fof(fact_def__prop4,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc143298180_prop4,X))
    <=> pp(aa_fun171081125l_bool(scratc2104871667l_some(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1567857808d_d_Pi,scratc2068492180nd_nat),aTP_Lamm_ab)),aa_TPT43085870d_bool(scratc425017654_prop2,X))) ) ).

% def_prop4
fof(fact_def__prop3,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc143298179_prop3(X),Xa),Xb))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,X),Xb)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Xa),Xb))) ) ).

% def_prop3
fof(fact_def__d__24__prop2,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc425017654_prop2,X),Xa))
    <=> pp(scratc610767008_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Xa),scratc98832752nd_n_1)),aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,X)),aa_TPTP_ind_bool(scratc425017653_prop1,Xa))) ) ).

% def_d_24_prop2
fof(fact_def__d__24__prop1,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc425017653_prop1,X))
    <=> pp(aa_fun171081125l_bool(scratc35740832_n_all,aa_TPT43085870d_bool(aTP_Lamm_ad,X))) ) ).

% def_d_24_prop1
fof(fact_def__d__23__prop1,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc1984139126_prop1,X))
    <=> pp(aa_bool_bool(scratc2096471106d_l_or(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,X),scratc98832752nd_n_1)),aa_fun171081125l_bool(scratc701212661n_some,aa_TPT43085870d_bool(aTP_Lamm_ae,X)))) ) ).

% def_d_23_prop1
fof(fact_def__d__22__prop1,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc1395776951_prop1,X))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2069016971nd_nis,aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,X)),X)) ) ).

% def_d_22_prop1
fof(fact_def__i1__s,axiom,
    scratc1424423166d_i1_s = scratc494515559_d_Sep(scratc2068492180nd_nat) ).

% def_i1_s
fof(fact_def__cond2,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc158021315_cond2,X))
    <=> pp(aa_fun171081125l_bool(scratc35740832_n_all,aa_TPT43085870d_bool(aTP_Lamm_af,X))) ) ).

% def_cond2
fof(fact_def__cond1,axiom,
    scratc158021314_cond1 = aa_TPT43085870d_bool(scratc80238790d_n_in,scratc98832752nd_n_1) ).

% def_cond1
fof(fact_def__n__1,axiom,
    scratc98832752nd_n_1 = aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,scratc2095348162ptyset) ).

% def_n_1
fof(fact_def__n__one,axiom,
    scratc151533093_n_one = scratc2077606457nd_one(scratc2068492180nd_nat) ).

% def_n_one
fof(fact_def__n__all,axiom,
    scratc35740832_n_all = scratc1961814196nd_all(scratc2068492180nd_nat) ).

% def_n_all
fof(fact_def__n__some,axiom,
    scratc701212661n_some = scratc2104871667l_some(scratc2068492180nd_nat) ).

% def_n_some
fof(fact_def__n__in,axiom,
    scratc80238790d_n_in = scratc1830090288d_esti(scratc2068492180nd_nat) ).

% def_n_in
fof(fact_def__nis,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2069016971nd_nis,X),Xa))
    <=> pp(scratc718232188_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,X),Xa))) ) ).

% def_nis
fof(fact_def__n__is,axiom,
    scratc80238795d_n_is = scratc561578434d_e_is(scratc2068492180nd_nat) ).

% def_n_is
fof(fact_def__nat,axiom,
    scratc2068492180nd_nat = aa_fun1431113780TP_ind(scratc494515559_d_Sep(scratc1460043444_omega),aTP_Lamm_ag) ).

% def_nat
fof(fact_def__indeq2,axiom,
    ! [X,Xa,Xb,Xc,Xd] : scratc2025609780indeq2(X,Xa,Xb,Xc,Xd) = aa_TPT1424761345TP_ind(scratc1837303166_indeq(X,Xa,Xb),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1138785586d_11_i(X,Xa,Xb),Xc),Xd)) ).

% def_indeq2
fof(fact_def__d__11__i,axiom,
    ! [X,Xa,Xb] : scratc1138785586d_11_i(X,Xa,Xb) = scratc1837303166_indeq(X,Xa,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1567857808d_d_Pi,X),aTP_Lamm_ah(Xb))) ).

% def_d_11_i
fof(fact_def__fixfu2,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc94616283fixfu2(X,Xa),Xb),Xc))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,X)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_fun987228051d_bool(aTP_Lamm_am(X),Xa),Xb),Xc))) ) ).

% def_fixfu2
fof(fact_def__indeq,axiom,
    ! [X,Xa,Xb,Xc,Xd] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1837303166_indeq(X,Xa,Xb),Xc),Xd) = scratc2028037426nd_ind(Xb,aa_TPT43085870d_bool(scratc143298178_prop2(X,Xa,Xb,Xc),Xd)) ).

% def_indeq
fof(fact_def__prop2,axiom,
    ! [X,Xa,Xb,Xc,Xd,Xe] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc143298178_prop2(X,Xa,Xb,Xc),Xd),Xe))
    <=> pp(aa_fun171081125l_bool(scratc2104871667l_some(X),aa_TPT43085870d_bool(scratc972340280_prop1(X,Xa,Xb,Xc,Xd),Xe))) ) ).

% def_prop2
fof(fact_def__d__10__prop1,axiom,
    ! [X,Xa,Xb,Xc,Xd,Xe,Xf] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc972340280_prop1(X,Xa,Xb,Xc,Xd),Xe),Xf))
    <=> pp(scratc610767008_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1830090288d_esti(X),Xf),aa_TPTP_ind_TPTP_ind(scratc1585619019_ecect(X,Xa),Xd)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(Xb),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Xc),Xf)),Xe))) ) ).

% def_d_10_prop1
fof(fact_def__fixfu,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1123420951_fixfu(X,Xa),Xb),Xc))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,X)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_fun987228051d_bool(aTP_Lamm_ao(X),Xa),Xb),Xc))) ) ).

% def_fixfu
fof(fact_def__ecect,axiom,
    ! [X,Xa] : scratc1585619019_ecect(X,Xa) = scratc561578429d_e_in(aa_TPTP_ind_TPTP_ind(scratc14390744_power,X),scratc812933624d_anec(X,Xa)) ).

% def_ecect
fof(fact_def__ectelt,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc491440932ectelt(X,Xa),Xb) = aa_TPTP_ind_TPTP_ind(scratc606642809ectset(X,Xa),aa_TPTP_ind_TPTP_ind(scratc1586209410_ecelt(X,Xa),Xb)) ).

% def_ectelt
fof(fact_def__ectset,axiom,
    ! [X,Xa] : scratc606642809ectset(X,Xa) = scratc2078065665nd_out(aa_TPTP_ind_TPTP_ind(scratc14390744_power,X),scratc812933624d_anec(X,Xa)) ).

% def_ectset
fof(fact_def__ect,axiom,
    ! [X,Xa] : scratc1994269833nd_ect(X,Xa) = aa_fun1431113780TP_ind(scratc494515559_d_Sep(aa_TPTP_ind_TPTP_ind(scratc14390744_power,X)),scratc812933624d_anec(X,Xa)) ).

% def_ect
fof(fact_def__anec,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(scratc812933624d_anec(X,Xa),Xb))
    <=> pp(aa_fun171081125l_bool(scratc2104871667l_some(X),aa_TPT43085870d_bool(scratc1994269829nd_ecp(X,Xa),Xb))) ) ).

% def_anec
fof(fact_def__ecp,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1994269829nd_ecp(X,Xa),Xb),Xc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(aa_TPTP_ind_TPTP_ind(scratc14390744_power,X)),Xb),aa_TPTP_ind_TPTP_ind(scratc1586209410_ecelt(X,Xa),Xc))) ) ).

% def_ecp
fof(fact_def__ecelt,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc1586209410_ecelt(X,Xa),Xb) = aa_fun1431113780TP_ind(scratc494515559_d_Sep(X),aa_TPT43085870d_bool(Xa,Xb)) ).

% def_ecelt
fof(fact_def__unmore,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc712760155unmore(X,Xa),Xb) = aa_fun1431113780TP_ind(scratc494515559_d_Sep(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_aq(X),Xa),Xb)) ).

% def_unmore
fof(fact_def__nissetprop,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1243772602etprop(X,Xa),Xb),Xc))
    <=> pp(scratc610767008_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1830090288d_esti(X),Xc),Xa),scratc718232188_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1830090288d_esti(X),Xc),Xb)))) ) ).

% def_nissetprop
fof(fact_def__st__disj,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1640284202t_disj(X),Xa),Xb))
    <=> pp(aa_fun171081125l_bool(scratc1961814196nd_all(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ar(X),Xa),Xb))) ) ).

% def_st_disj
fof(fact_def__incl,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc615049083d_incl(X),Xa),Xb))
    <=> pp(aa_fun171081125l_bool(scratc1961814196nd_all(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_as(X),Xa),Xb))) ) ).

% def_incl
fof(fact_def__nonempty,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc233459501nempty,X),Xa))
    <=> pp(aa_fun171081125l_bool(scratc2104871667l_some(X),aa_TPT43085870d_bool(aTP_Lamm_at(X),Xa))) ) ).

% def_nonempty
fof(fact_def__empty,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc893548160_empty,X),Xa))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,X)),scratc2069410560nd_non(X,aa_TPT43085870d_bool(aTP_Lamm_at(X),Xa)))) ) ).

% def_empty
fof(fact_def__esti,axiom,
    ! [X] : scratc1830090288d_esti(X) = scratc1802667954bnd_in ).

% def_esti
fof(fact_def__r__ec,axiom,
    ! [X,Xa] :
      ( scratc343266243d_r_ec(X,Xa)
    <=> ( pp(X)
       => pp(scratc718232188_d_not(Xa)) ) ) ).

% def_r_ec
fof(fact_def__changef,axiom,
    ! [X,Xa,Xb,Xc,Xd] : aa_TPTP_ind_TPTP_ind(scratc1489043433hangef(X,Xa,Xb,Xc),Xd) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,X),aa_TPT1424761345TP_ind(aa_TPT1791839040TP_ind(aa_TPT1781712639TP_ind(aTP_Lamm_au(X),Xb),Xc),Xd)) ).

% def_changef
fof(fact_def__wissel,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc474669606wissel(X,Xa),Xb) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,X),scratc1183142289sel_wb(X,Xa,Xb)) ).

% def_wissel
fof(fact_def__wissel__wb,axiom,
    ! [X,Xa,Xb,Xc] : aa_TPTP_ind_TPTP_ind(scratc1183142289sel_wb(X,Xa,Xb),Xc) = aa_TPTP_ind_TPTP_ind(scratc2028431021nd_ite(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(X),Xc),Xb),X,Xa),aa_TPTP_ind_TPTP_ind(scratc1183142288sel_wa(X,Xa,Xb),Xc)) ).

% def_wissel_wb
fof(fact_def__wissel__wa,axiom,
    ! [X,Xa,Xb,Xc] : aa_TPTP_ind_TPTP_ind(scratc1183142288sel_wa(X,Xa,Xb),Xc) = aa_TPTP_ind_TPTP_ind(scratc2028431021nd_ite(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(X),Xc),Xa),X,Xb),Xc) ).

% def_wissel_wa
fof(fact_def__ite,axiom,
    ! [X,Xa,Xb,Xc] : aa_TPTP_ind_TPTP_ind(scratc2028431021nd_ite(X,Xa,Xb),Xc) = scratc2028037426nd_ind(Xa,aa_TPT43085870d_bool(scratc143298177_prop1(X,Xa,Xb),Xc)) ).

% def_ite
fof(fact_def__prop1,axiom,
    ! [X,Xa,Xb,Xc,Xd] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc143298177_prop1(X,Xa,Xb),Xc),Xd))
    <=> pp(scratc610767008_d_and(aa_bool_bool(aa_boo1142376798l_bool(scratc2027971839nd_imp,X),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(Xa),Xd),Xb)),aa_bool_bool(aa_boo1142376798l_bool(scratc2027971839nd_imp,scratc718232188_d_not(X)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(Xa),Xd),Xc)))) ) ).

% def_prop1
fof(fact_def__second,axiom,
    ! [X,Xa] : scratc1233885537second(X,Xa) = scratc142904583_proj1 ).

% def_second
fof(fact_def__first,axiom,
    ! [X,Xa] : scratc1074704707_first(X,Xa) = scratc142904582_proj0 ).

% def_first
fof(fact_def__d__pair,axiom,
    ! [X,Xa] : scratc966855345d_pair(X,Xa) = scratc1677186215d_pair ).

% def_d_pair
fof(fact_def__out,axiom,
    ! [X,Xa] : scratc2078065665nd_out(X,Xa) = scratc1986928439d_soft(aa_fun1431113780TP_ind(scratc494515559_d_Sep(X),Xa),X,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,aa_fun1431113780TP_ind(scratc494515559_d_Sep(X),Xa)),scratc561578429d_e_in(X,Xa))) ).

% def_out
fof(fact_def__e__in,axiom,
    ! [X,Xa,Xb] :
      ( gg_TPTP_ind(Xb)
     => aa_TPTP_ind_TPTP_ind(scratc561578429d_e_in(X,Xa),Xb) = Xb ) ).

% def_e_in
fof(fact_def__inj__h,axiom,
    ! [X,Xa,Xb,Xc,Xd] : aa_TPTP_ind_TPTP_ind(scratc215932272_inj_h(X,Xa,Xb,Xc),Xd) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,X),aa_TPT1424761345TP_ind(aTP_Lamm_av(Xc),Xd)) ).

% def_inj_h
fof(fact_def__invf,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc616295458d_invf(X,Xa),Xb) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,Xa),scratc1986928439d_soft(X,Xa,Xb)) ).

% def_invf
fof(fact_def__bijective,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc956141976ective(X),Xa),Xb))
    <=> pp(scratc610767008_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc772422746ective(X),Xa),Xb),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc779517897ective(X),Xa),Xb))) ) ).

% def_bijective
fof(fact_def__surjective,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc779517897ective(X),Xa),Xb))
    <=> pp(aa_fun171081125l_bool(scratc1961814196nd_all(Xa),aa_TPT43085870d_bool(scratc1032062638_image(X,Xa),Xb))) ) ).

% def_surjective
fof(fact_def__inverse,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc1475084483nverse(X,Xa),Xb) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,Xa),aa_TPT1424761345TP_ind(aa_TPT1791839040TP_ind(aTP_Lamm_aw(X),Xa),Xb)) ).

% def_inverse
fof(fact_def__soft,axiom,
    ! [X,Xa,Xb,Xc] : aa_TPTP_ind_TPTP_ind(scratc1986928439d_soft(X,Xa,Xb),Xc) = scratc2028037426nd_ind(X,aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ax(Xa),Xb),Xc)) ).

% def_soft
fof(fact_def__tofs,axiom,
    ! [X,Xa] : scratc620031989d_tofs(X,Xa) = scratc1802143164bnd_ap ).

% def_tofs
fof(fact_def__image,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1032062638_image(X,Xa),Xb),Xc))
    <=> pp(aa_fun171081125l_bool(scratc2104871667l_some(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ax(Xa),Xb),Xc))) ) ).

% def_image
fof(fact_def__injective,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc772422746ective(X),Xa),Xb))
    <=> pp(aa_fun171081125l_bool(scratc1961814196nd_all(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_az(X),Xa),Xb))) ) ).

% def_injective
fof(fact_def__ind,axiom,
    ! [X,Xa] : scratc2028037426nd_ind(X,Xa) = scratc1995122619nd_eps(aa_fun1584354236d_bool(aTP_Lamm_ba(X),Xa)) ).

% def_ind
fof(fact_def__one,axiom,
    ! [X,Xa] :
      ( pp(aa_fun171081125l_bool(scratc2077606457nd_one(X),Xa))
    <=> pp(scratc610767008_d_and(scratc621603181_amone(X,Xa),aa_fun171081125l_bool(scratc2104871667l_some(X),Xa))) ) ).

% def_one
fof(fact_def__amone,axiom,
    ! [X,Xa] :
      ( pp(scratc621603181_amone(X,Xa))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,X)),aa_fun1584354236d_bool(aTP_Lamm_bc(X),Xa))) ) ).

% def_amone
fof(fact_def__e__is,axiom,
    ! [X] : scratc561578434d_e_is(X) = fequal_TPTP_ind ).

% def_e_is
fof(fact_def__orec3,axiom,
    ! [X,Xa,Xb] :
      ( scratc1067749701_orec3(X,Xa,Xb)
    <=> pp(scratc610767008_d_and(scratc2077868803nd_or3(X,Xa,Xb),scratc1994269768nd_ec3(X,Xa,Xb))) ) ).

% def_orec3
fof(fact_def__ec3,axiom,
    ! [X,Xa,Xb] :
      ( pp(scratc1994269768nd_ec3(X,Xa,Xb))
    <=> scratc812867977d_and3(scratc2095815101d_l_ec(X,Xa),scratc2095815101d_l_ec(Xa,Xb),scratc2095815101d_l_ec(Xb,X)) ) ).

% def_ec3
fof(fact_def__and3,axiom,
    ! [X,Xa,Xb] :
      ( scratc812867977d_and3(X,Xa,Xb)
    <=> pp(scratc610767008_d_and(X,scratc610767008_d_and(Xa,Xb))) ) ).

% def_and3
fof(fact_def__or3,axiom,
    ! [X,Xa,Xb] :
      ( pp(scratc2077868803nd_or3(X,Xa,Xb))
    <=> pp(aa_bool_bool(scratc2096471106d_l_or(X),aa_bool_bool(scratc2096471106d_l_or(Xa),Xb))) ) ).

% def_or3
fof(fact_def__l__some,axiom,
    ! [X,Xa] :
      ( pp(aa_fun171081125l_bool(scratc2104871667l_some(X),Xa))
    <=> pp(scratc718232188_d_not(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,X)),scratc2069410560nd_non(X,Xa)))) ) ).

% def_l_some
fof(fact_def__non,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(scratc2069410560nd_non(X,Xa),Xb))
    <=> pp(scratc718232188_d_not(aa_TPTP_ind_bool(Xa,Xb))) ) ).

% def_non
fof(fact_def__all,axiom,
    ! [X] : scratc1961814196nd_all(X) = scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,X)) ).

% def_all
fof(fact_def__l__iff,axiom,
    ! [X,Xa] :
      ( scratc1504908458_l_iff(X,Xa)
    <=> pp(scratc610767008_d_and(aa_bool_bool(aa_boo1142376798l_bool(scratc2027971839nd_imp,X),Xa),aa_bool_bool(aa_boo1142376798l_bool(scratc2027971839nd_imp,Xa),X))) ) ).

% def_l_iff
fof(fact_def__orec,axiom,
    ! [X,Xa] :
      ( scratc1036782190d_orec(X,Xa)
    <=> pp(scratc610767008_d_and(aa_bool_bool(scratc2096471106d_l_or(X),Xa),scratc2095815101d_l_ec(X,Xa))) ) ).

% def_orec
fof(fact_def__l__or,axiom,
    ! [X] : scratc2096471106d_l_or(X) = aa_boo1142376798l_bool(scratc2027971839nd_imp,scratc718232188_d_not(X)) ).

% def_l_or
fof(fact_def__d__and,axiom,
    ! [X,Xa] :
      ( pp(scratc610767008_d_and(X,Xa))
    <=> pp(scratc718232188_d_not(scratc2095815101d_l_ec(X,Xa))) ) ).

% def_d_and
fof(fact_def__l__ec,axiom,
    ! [X,Xa] :
      ( pp(scratc2095815101d_l_ec(X,Xa))
    <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc2027971839nd_imp,X),scratc718232188_d_not(Xa))) ) ).

% def_l_ec
fof(fact_def__obvious,axiom,
    ( scratc192683482bvious
  <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc2027971839nd_imp,fFalse),fFalse)) ) ).

% def_obvious
fof(fact_def__wel,axiom,
    ! [X] :
      ( scratc2143108113nd_wel(X)
    <=> pp(scratc718232188_d_not(scratc718232188_d_not(X))) ) ).

% def_wel
fof(fact_def__d__not,axiom,
    ! [X] :
      ( pp(scratc718232188_d_not(X))
    <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc2027971839nd_imp,X),fFalse)) ) ).

% def_d_not
fof(fact_def__imp,axiom,
    scratc2027971839nd_imp = fimplies ).

% def_imp
fof(fact_def__d__Pi,axiom,
    ! [X,Xa] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1567857808d_d_Pi,X),Xa) = aa_fun1431113780TP_ind(scratc494515559_d_Sep(aa_TPTP_ind_TPTP_ind(scratc14390744_power,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,X),aTP_Lamm_bd(Xa)))),aa_fun1913827119d_bool(aTP_Lamm_be(X),Xa)) ).

% def_d_Pi
fof(fact_def__pair__p,axiom,
    ! [X] :
      ( gg_TPTP_ind(X)
     => ( pp(aa_TPTP_ind_bool(scratc1933586761pair_p,X))
      <=> aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1677186215d_pair,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,X),scratc2095348162ptyset)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,X),aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,scratc2095348162ptyset))) = X ) ) ).

% def_pair_p
fof(fact_def__ap,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,X),Xa) = aa_fun277296641TP_ind(scratc1807233176eplSep(X,aa_TPT43085870d_bool(aTP_Lamm_bf,Xa)),scratc142904583_proj1) ).

% def_ap
fof(fact_def__setprod,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc1710759884etprod(X),Xa) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,X),aTP_Lamm_ah(Xa)) ).

% def_setprod
fof(fact_def__d__Sigma,axiom,
    ! [X,Xa] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,X),Xa) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc313305066munion,X),aTP_Lamm_bg(Xa)) ).

% def_d_Sigma
fof(fact_def__proj1,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc142904583_proj1,X) = aa_fun277296641TP_ind(scratc1807233176eplSep(X,aTP_Lamm_bh),scratc511628954_d_Unj) ).

% def_proj1
fof(fact_def__proj0,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc142904582_proj0,X) = aa_fun277296641TP_ind(scratc1807233176eplSep(X,aTP_Lamm_bi),scratc511628954_d_Unj) ).

% def_proj0
fof(fact_def__pair,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1677186215d_pair,X),Xa) = aa_TPTP_ind_TPTP_ind(scratc1307162165nunion(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1124382172d_repl,X),scratc696190754d_Inj0)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1124382172d_repl,Xa),scratc696190755d_Inj1)) ).

% def_pair
fof(fact_def__d__Unj,axiom,
    scratc511628954_d_Unj = scratc1534996756In_rec(aTP_Lamm_bj) ).

% def_d_Unj
fof(fact_def__d__Inj0,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc696190754d_Inj0,X) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1124382172d_repl,X),scratc696190755d_Inj1) ).

% def_d_Inj0
fof(fact_def__d__Inj1,axiom,
    scratc696190755d_Inj1 = scratc1534996756In_rec(aTP_Lamm_bk) ).

% def_d_Inj1
fof(fact_def__omega,axiom,
    scratc1460043444_omega = aa_fun1431113780TP_ind(scratc494515559_d_Sep(aa_TPTP_ind_TPTP_ind(scratc1943012394univof,scratc2095348162ptyset)),scratc1509955612_nat_p) ).

% def_omega
fof(fact_def__nat__p,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc1509955612_nat_p,X))
    <=> ! [X1] :
          ( pp(aa_TPTP_ind_bool(X1,scratc2095348162ptyset))
         => ( ! [X2] :
                ( gg_TPTP_ind(X2)
               => ( pp(aa_TPTP_ind_bool(X1,X2))
                 => pp(aa_TPTP_ind_bool(X1,aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,X2))) ) )
           => pp(aa_TPTP_ind_bool(X1,X)) ) ) ) ).

% def_nat_p
fof(fact_def__ordsucc,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,X) = aa_TPTP_ind_TPTP_ind(scratc1307162165nunion(X),aa_TPTP_ind_TPTP_ind(scratc2018566726d_Sing,X)) ).

% def_ordsucc
fof(fact_def__d__In__rec,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc1534996756In_rec(X),Xa) = scratc1995122619nd_eps(aa_TPT43085870d_bool(scratc1118156403_rec_G(X),Xa)) ).

% def_d_In_rec
fof(fact_def__d__In__rec__G,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1118156403_rec_G(X),Xa),Xb))
    <=> ! [X3] :
          ( ! [X4,X5] :
              ( gg_TPTP_ind(X4)
             => ( ! [X6] :
                    ( gg_TPTP_ind(X6)
                   => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X6),X4))
                     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(X3,X6),aa_TPTP_ind_TPTP_ind(X5,X6))) ) )
               => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(X3,X4),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(X,X4),X5))) ) )
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(X3,Xa),Xb)) ) ) ).

% def_d_In_rec_G
fof(fact_def__setminus,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc1223447707tminus(X),Xa) = aa_fun1431113780TP_ind(scratc494515559_d_Sep(X),aa_TPT43085870d_bool(aTP_Lamm_bl,Xa)) ).

% def_setminus
fof(fact_def__d__ReplSep,axiom,
    ! [X,Xa] : scratc1807233176eplSep(X,Xa) = aa_TPT494704832TP_ind(scratc1124382172d_repl,aa_fun1431113780TP_ind(scratc494515559_d_Sep(X),Xa)) ).

% def_d_ReplSep
fof(fact_def__d__Sep,axiom,
    ! [X,Xa] : aa_fun1431113780TP_ind(scratc494515559_d_Sep(X),Xa) = aa_TPTP_ind_TPTP_ind(scratc1802667946bnd_if(fEx_TPTP_ind(cOMBS_2003118649l_bool(cOMBB_658106424TP_ind(fconj,aa_TPT43085870d_bool(cOMBC_1555011498d_bool(scratc1802667954bnd_in),X)),Xa)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1124382172d_repl,X),aa_fun1235454963TP_ind(aTP_Lamm_bm(X),Xa))),scratc2095348162ptyset) ).

% def_d_Sep
fof(fact_def__famunion,axiom,
    ! [X,Xa] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc313305066munion,X),Xa) = aa_TPTP_ind_TPTP_ind(scratc521652610_union,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1124382172d_repl,X),Xa)) ).

% def_famunion
fof(fact_def__binunion,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc1307162165nunion(X),Xa) = aa_TPTP_ind_TPTP_ind(scratc521652610_union,aa_TPTP_ind_TPTP_ind(scratc1953972728_UPair(X),Xa)) ).

% def_binunion
fof(fact_def__d__Sing,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc2018566726d_Sing,X) = aa_TPTP_ind_TPTP_ind(scratc1953972728_UPair(X),X) ).

% def_d_Sing
fof(fact_def__d__UPair,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc1953972728_UPair(X),Xa) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1124382172d_repl,aa_TPTP_ind_TPTP_ind(scratc14390744_power,aa_TPTP_ind_TPTP_ind(scratc14390744_power,scratc2095348162ptyset))),aa_TPT1424761345TP_ind(aTP_Lamm_bn(X),Xa)) ).

% def_d_UPair
fof(fact_def__nIn,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2066917798nd_nIn,X),Xa))
    <=> ~ pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X),Xa)) ) ).

% def_nIn
fof(fact_def__if,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc1802667946bnd_if(X,Xa),Xb) = scratc1995122619nd_eps(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_bo(X),Xa),Xb)) ).

% def_if
fof(fact_def__d__ZF__closed,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc1416680303closed,X))
    <=> ( pp(aa_TPTP_ind_bool(scratc136593508closed,X))
        & pp(aa_TPTP_ind_bool(scratc301326522closed,X))
        & pp(aa_TPTP_ind_bool(scratc1134690962closed,X)) ) ) ).

% def_d_ZF_closed
fof(fact_def__d__Repl__closed,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc1134690962closed,X))
    <=> ! [X1] :
          ( gg_TPTP_ind(X1)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X1),X))
           => ! [X2] :
                ( ! [X3] :
                    ( gg_TPTP_ind(X3)
                   => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X3),X1))
                     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,aa_TPTP_ind_TPTP_ind(X2,X3)),X)) ) )
               => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1124382172d_repl,X1),X2)),X)) ) ) ) ) ).

% def_d_Repl_closed
fof(fact_def__d__Power__closed,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc301326522closed,X))
    <=> ! [X1] :
          ( gg_TPTP_ind(X1)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X1),X))
           => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,aa_TPTP_ind_TPTP_ind(scratc14390744_power,X1)),X)) ) ) ) ).

% def_d_Power_closed
fof(fact_def__d__Union__closed,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc136593508closed,X))
    <=> ! [X1] :
          ( gg_TPTP_ind(X1)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X1),X))
           => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,aa_TPTP_ind_TPTP_ind(scratc521652610_union,X1)),X)) ) ) ) ).

% def_d_Union_closed
fof(fact_def__d__Subq,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2116917608d_Subq,X),Xa))
    <=> ! [X2] :
          ( gg_TPTP_ind(X2)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X2),X))
           => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X2),Xa)) ) ) ) ).

% def_d_Subq
fof(fact_def__all__of,axiom,
    ! [X,Xa] :
      ( pp(aa_fun171081125l_bool(scratc846727211all_of(X),Xa))
    <=> ! [X2] :
          ( gg_TPTP_ind(X2)
         => ( scratc1623311406_is_of(X2,X)
           => pp(aa_TPTP_ind_bool(Xa,X2)) ) ) ) ).

% def_all_of
fof(fact_def__is__of,axiom,
    ! [X,Xa] :
      ( scratc1623311406_is_of(X,Xa)
    <=> pp(aa_TPTP_ind_bool(Xa,X)) ) ).

% def_is_of
fof(fact_satz18a,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_bq)) ).

% satz18a
fof(fact_satz18,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_bs)) ).

% satz18
fof(fact_satz17,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_bv)) ).

% satz17
fof(fact_satz16d,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_by)) ).

% satz16d
fof(fact_satz16c,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_cb)) ).

% satz16c
fof(fact_satz16b,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_ce)) ).

% satz16b
fof(fact_satz16a,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_ch)) ).

% satz16a
fof(fact_satz15,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_ck)) ).

% satz15
fof(fact_satz10k,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_cm)) ).

% satz10k
fof(fact_satz10j,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_co)) ).

% satz10j
fof(fact_satz10h,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_cq)) ).

% satz10h
fof(fact_satz10g,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_cs)) ).

% satz10g
fof(fact_satz10f,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_cu)) ).

% satz10f
fof(fact_satz10e,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_cw)) ).

% satz10e
fof(fact_satz10d,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_cy)) ).

% satz10d
fof(fact_satz10c,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_da)) ).

% satz10c
fof(fact_satz14,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_dc)) ).

% satz14
fof(fact_satz13,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_de)) ).

% satz13
fof(fact_satz12,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_dg)) ).

% satz12
fof(fact_satz11,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_di)) ).

% satz11
fof(fact_satz10b,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_dk)) ).

% satz10b
fof(fact_satz10a,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_dm)) ).

% satz10a
fof(fact_satz10,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_do)) ).

% satz10
fof(fact_satz9b,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_dq)) ).

% satz9b
fof(fact_satz9a,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_ds)) ).

% satz9a
fof(fact_satz9,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_dw)) ).

% satz9
fof(fact_satz8b,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_dy)) ).

% satz8b
fof(fact_satz8a,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_eb)) ).

% satz8a
fof(fact_satz8,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_ee)) ).

% satz8
fof(fact_satz7,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_eg)) ).

% satz7
fof(fact_satz6,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_ei)) ).

% satz6
fof(fact_satz5,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_el)) ).

% satz5
fof(fact_satz4h,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_en)) ).

% satz4h
fof(fact_satz4g,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_eo)) ).

% satz4g
fof(fact_satz4f,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_eq)) ).

% satz4f
fof(fact_satz4e,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_er)) ).

% satz4e
fof(fact_satz4d,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_et)) ).

% satz4d
fof(fact_satz4c,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_eu)) ).

% satz4c
fof(fact_satz4b,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_ew)) ).

% satz4b
fof(fact_satz4a,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_ex)) ).

% satz4a
fof(fact_satz4,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_ez)) ).

% satz4
fof(fact_satz3a,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_fa)) ).

% satz3a
fof(fact_satz3,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_fb)) ).

% satz3
fof(fact_satz2,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_fc)) ).

% satz2
fof(fact_satz1,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_fe)) ).

% satz1
fof(fact_n__ax5,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_ff),aTP_Lamm_fh)) ).

% n_ax5
fof(fact_n__ax4,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_fj)) ).

% n_ax4
fof(fact_n__ax3,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_fk)) ).

% n_ax3
fof(fact_suc__p,axiom,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_fl)) ).

% suc_p
fof(fact_n__1__p,axiom,
    scratc1623311406_is_of(scratc98832752nd_n_1,aTP_Lamm_a) ).

% n_1_p
fof(fact_isseti,axiom,
    ! [X0] : pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_fm,X0)),aa_TPT43085870d_bool(aTP_Lamm_fo,X0))) ).

% isseti
fof(fact_estie,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,X0)),aa_fun1584354236d_bool(aTP_Lamm_fp(X0),X12))) ).

% estie
fof(fact_estii,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,X0)),aa_fun1584354236d_bool(aTP_Lamm_fq(X0),X12))) ).

% estii
fof(fact_setof__p,axiom,
    ! [X0,X12] : scratc1623311406_is_of(aa_fun1431113780TP_ind(scratc494515559_d_Sep(X0),X12),aa_TPT43085870d_bool(aTP_Lamm_fm,X0)) ).

% setof_p
fof(fact_secondis1,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,X0)),aa_TPT43085870d_bool(aTP_Lamm_fs(X0),X12))) ).

% secondis1
fof(fact_firstis1,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,X0)),aa_TPT43085870d_bool(aTP_Lamm_fu(X0),X12))) ).

% firstis1
fof(fact_pairis1,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_fv(X0),X12)),aa_TPT43085870d_bool(aTP_Lamm_fw(X0),X12))) ).

% pairis1
fof(fact_second__p,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_fv(X0),X12)),aa_TPT43085870d_bool(aTP_Lamm_fx(X0),X12))) ).

% second_p
fof(fact_first__p,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_fv(X0),X12)),aa_TPT43085870d_bool(aTP_Lamm_fy(X0),X12))) ).

% first_p
fof(fact_e__pair__p,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,X0)),aa_TPT43085870d_bool(aTP_Lamm_ga(X0),X12))) ).

% e_pair_p
fof(fact_otax2,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,X0)),aa_fun1584354236d_bool(aTP_Lamm_gb(X0),X12))) ).

% otax2
fof(fact_otax1,axiom,
    ! [X0,X12] : pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc772422746ective(aa_fun1431113780TP_ind(scratc494515559_d_Sep(X0),X12)),X0),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,aa_fun1431113780TP_ind(scratc494515559_d_Sep(X0),X12)),scratc561578429d_e_in(X0,X12)))) ).

% otax1
fof(fact_e__inp,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc846727211all_of(aa_fun1584354236d_bool(aTP_Lamm_gc(X0),X12)),aa_fun1584354236d_bool(aTP_Lamm_gd(X0),X12))) ).

% e_inp
fof(fact_e__in__p,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc846727211all_of(aa_fun1584354236d_bool(aTP_Lamm_gc(X0),X12)),aa_fun1584354236d_bool(aTP_Lamm_ge(X0),X12))) ).

% e_in_p
fof(fact_e__fisi,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_gf(X0),X12)),aa_TPT43085870d_bool(aTP_Lamm_gi(X0),X12))) ).

% e_fisi
fof(fact_oneax,axiom,
    ! [X0,X12] :
      ( pp(aa_fun171081125l_bool(scratc2077606457nd_one(X0),X12))
     => pp(aa_TPTP_ind_bool(X12,scratc2028037426nd_ind(X0,X12))) ) ).

% oneax
fof(fact_ind__p,axiom,
    ! [X0,X12] :
      ( pp(aa_fun171081125l_bool(scratc2077606457nd_one(X0),X12))
     => scratc1623311406_is_of(scratc2028037426nd_ind(X0,X12),aa_TPT43085870d_bool(aTP_Lamm_ai,X0)) ) ).

% ind_p
fof(fact_e__isp,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,X0)),aa_fun1584354236d_bool(aTP_Lamm_gk(X0),X12))) ).

% e_isp
fof(fact_refis,axiom,
    ! [X0] : pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,X0)),aa_TPT43085870d_bool(aTP_Lamm_gl,X0))) ).

% refis
fof(fact_l__et,axiom,
    ! [X0] :
      ( scratc2143108113nd_wel(X0)
     => pp(X0) ) ).

% l_et
fof(fact_k__If__In__then__E,axiom,
    ! [X0,X12,X22,X32] :
      ( pp(X0)
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc1802667946bnd_if(X0,X22),X32)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X12),X22)) ) ) ).

% k_If_In_then_E
fof(fact_k__If__In__01,axiom,
    ! [X0,X12,X22] :
      ( ( pp(X0)
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X12),X22)) )
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,aa_TPTP_ind_TPTP_ind(scratc1802667946bnd_if(X0,X12),scratc2095348162ptyset)),aa_TPTP_ind_TPTP_ind(scratc1802667946bnd_if(X0,X22),aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,scratc2095348162ptyset)))) ) ).

% k_If_In_01
fof(fact_xi__ext,axiom,
    ! [X0,X12,X22] :
      ( ! [X33] :
          ( gg_TPTP_ind(X33)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X33),X0))
           => aa_TPTP_ind_TPTP_ind(X12,X33) = aa_TPTP_ind_TPTP_ind(X22,X33) ) )
     => aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,X0),X12) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,X0),X22) ) ).

% xi_ext
fof(fact_k__Pi__ext,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X22)
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1567857808d_d_Pi,X0),X12)))
       => ! [X32] :
            ( gg_TPTP_ind(X32)
           => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X32),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1567857808d_d_Pi,X0),X12)))
             => ( ! [X42] :
                    ( gg_TPTP_ind(X42)
                   => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X42),X0))
                     => aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,X22),X42) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,X32),X42) ) )
               => X22 = X32 ) ) ) ) ) ).

% k_Pi_ext
fof(fact_ap__Pi,axiom,
    ! [X0,X12,X22,X32] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1567857808d_d_Pi,X0),X12)))
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X32),X0))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,X22),X32)),aa_TPTP_ind_TPTP_ind(X12,X32))) ) ) ).

% ap_Pi
fof(fact_lam__Pi,axiom,
    ! [X0,X12,X22] :
      ( ! [X33] :
          ( gg_TPTP_ind(X33)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X33),X0))
           => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,aa_TPTP_ind_TPTP_ind(X22,X33)),aa_TPTP_ind_TPTP_ind(X12,X33))) ) )
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,X0),X22)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1567857808d_d_Pi,X0),X12))) ) ).

% lam_Pi
fof(fact_beta,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X22),X0))
     => aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,X0),X12)),X22) = aa_TPTP_ind_TPTP_ind(X12,X22) ) ).

% beta
fof(fact_proj1__Sigma,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,X0),X12)))
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,aa_TPTP_ind_TPTP_ind(scratc142904583_proj1,X22)),aa_TPTP_ind_TPTP_ind(X12,aa_TPTP_ind_TPTP_ind(scratc142904582_proj0,X22)))) ) ).

% proj1_Sigma
fof(fact_proj0__Sigma,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,X0),X12)))
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,aa_TPTP_ind_TPTP_ind(scratc142904582_proj0,X22)),X0)) ) ).

% proj0_Sigma
fof(fact_proj__Sigma__eta,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X22)
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,X0),X12)))
       => aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1677186215d_pair,aa_TPTP_ind_TPTP_ind(scratc142904582_proj0,X22)),aa_TPTP_ind_TPTP_ind(scratc142904583_proj1,X22)) = X22 ) ) ).

% proj_Sigma_eta
fof(fact_k__Sigma__eta__proj0__proj1,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X22)
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,X0),X12)))
       => ( aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1677186215d_pair,aa_TPTP_ind_TPTP_ind(scratc142904582_proj0,X22)),aa_TPTP_ind_TPTP_ind(scratc142904583_proj1,X22)) = X22
          & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,aa_TPTP_ind_TPTP_ind(scratc142904582_proj0,X22)),X0))
          & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,aa_TPTP_ind_TPTP_ind(scratc142904583_proj1,X22)),aa_TPTP_ind_TPTP_ind(X12,aa_TPTP_ind_TPTP_ind(scratc142904582_proj0,X22)))) ) ) ) ).

% k_Sigma_eta_proj0_proj1
fof(fact_pair__Sigma,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X22),X0))
     => ! [X32] :
          ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X32),aa_TPTP_ind_TPTP_ind(X12,X22)))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1677186215d_pair,X22),X32)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,X0),X12))) ) ) ).

% pair_Sigma
fof(fact_proj1__pair__eq,axiom,
    ! [X0,X12] :
      ( gg_TPTP_ind(X12)
     => aa_TPTP_ind_TPTP_ind(scratc142904583_proj1,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1677186215d_pair,X0),X12)) = X12 ) ).

% proj1_pair_eq
fof(fact_proj0__pair__eq,axiom,
    ! [X0,X12] :
      ( gg_TPTP_ind(X0)
     => aa_TPTP_ind_TPTP_ind(scratc142904582_proj0,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1677186215d_pair,X0),X12)) = X0 ) ).

% proj0_pair_eq
fof(fact_nat__p__omega,axiom,
    ! [X0] :
      ( pp(aa_TPTP_ind_bool(scratc1509955612_nat_p,X0))
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X0),scratc1460043444_omega)) ) ).

% nat_p_omega
fof(fact_omega__nat__p,axiom,
    ! [X0] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X0),scratc1460043444_omega))
     => pp(aa_TPTP_ind_bool(scratc1509955612_nat_p,X0)) ) ).

% omega_nat_p
fof(fact_nat__inv,axiom,
    ! [X0] :
      ( gg_TPTP_ind(X0)
     => ( pp(aa_TPTP_ind_bool(scratc1509955612_nat_p,X0))
       => ( X0 = scratc2095348162ptyset
          | ? [X13] :
              ( gg_TPTP_ind(X13)
              & pp(aa_TPTP_ind_bool(scratc1509955612_nat_p,X13))
              & X0 = aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,X13) ) ) ) ) ).

% nat_inv
fof(fact_nat__ind,axiom,
    ! [X0] :
      ( pp(aa_TPTP_ind_bool(X0,scratc2095348162ptyset))
     => ( ! [X13] :
            ( gg_TPTP_ind(X13)
           => ( pp(aa_TPTP_ind_bool(scratc1509955612_nat_p,X13))
             => ( pp(aa_TPTP_ind_bool(X0,X13))
               => pp(aa_TPTP_ind_bool(X0,aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,X13))) ) ) )
       => ! [X12] :
            ( pp(aa_TPTP_ind_bool(scratc1509955612_nat_p,X12))
           => pp(aa_TPTP_ind_bool(X0,X12)) ) ) ) ).

% nat_ind
fof(fact_nat__1,axiom,
    pp(aa_TPTP_ind_bool(scratc1509955612_nat_p,aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,scratc2095348162ptyset))) ).

% nat_1
fof(fact_nat__ordsucc,axiom,
    ! [X0] :
      ( pp(aa_TPTP_ind_bool(scratc1509955612_nat_p,X0))
     => pp(aa_TPTP_ind_bool(scratc1509955612_nat_p,aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,X0))) ) ).

% nat_ordsucc
fof(fact_k__In__0__1,axiom,
    pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,scratc2095348162ptyset),aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,scratc2095348162ptyset))) ).

% k_In_0_1
fof(fact_ordsucc__inj,axiom,
    ! [X0,X12] :
      ( ( gg_TPTP_ind(X0)
        & gg_TPTP_ind(X12) )
     => ( aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,X0) = aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,X12)
       => X0 = X12 ) ) ).

% ordsucc_inj
fof(fact_neq__ordsucc__0,axiom,
    ! [X0] : aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,X0) != scratc2095348162ptyset ).

% neq_ordsucc_0
fof(fact_k__SepE2,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X22),aa_fun1431113780TP_ind(scratc494515559_d_Sep(X0),X12)))
     => pp(aa_TPTP_ind_bool(X12,X22)) ) ).

% k_SepE2
fof(fact_k__SepE1,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X22),aa_fun1431113780TP_ind(scratc494515559_d_Sep(X0),X12)))
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X22),X0)) ) ).

% k_SepE1
fof(fact_k__SepI,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X22),X0))
     => ( pp(aa_TPTP_ind_bool(X12,X22))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X22),aa_fun1431113780TP_ind(scratc494515559_d_Sep(X0),X12))) ) ) ).

% k_SepI
fof(fact_k__Self__In__Power,axiom,
    ! [X0] : pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X0),aa_TPTP_ind_TPTP_ind(scratc14390744_power,X0))) ).

% k_Self_In_Power
fof(fact_k__PowerI,axiom,
    ! [X0,X12] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2116917608d_Subq,X12),X0))
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc14390744_power,X0))) ) ).

% k_PowerI
fof(fact_k__PowerE,axiom,
    ! [X0,X12] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc14390744_power,X0)))
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2116917608d_Subq,X12),X0)) ) ).

% k_PowerE
fof(fact_if__i__or,axiom,
    ! [X0,X12,X22] :
      ( ( gg_TPTP_ind(X12)
        & gg_TPTP_ind(X22) )
     => ( aa_TPTP_ind_TPTP_ind(scratc1802667946bnd_if(X0,X12),X22) = X12
        | aa_TPTP_ind_TPTP_ind(scratc1802667946bnd_if(X0,X12),X22) = X22 ) ) ).

% if_i_or
fof(fact_if__i__1,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X12)
     => ( pp(X0)
       => aa_TPTP_ind_TPTP_ind(scratc1802667946bnd_if(X0,X12),X22) = X12 ) ) ).

% if_i_1
fof(fact_if__i__0,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X22)
     => ( ~ pp(X0)
       => aa_TPTP_ind_TPTP_ind(scratc1802667946bnd_if(X0,X12),X22) = X22 ) ) ).

% if_i_0
fof(fact_if__i__correct,axiom,
    ! [X0,X12,X22] :
      ( ( gg_TPTP_ind(X12)
        & gg_TPTP_ind(X22) )
     => ( ( pp(X0)
          & aa_TPTP_ind_TPTP_ind(scratc1802667946bnd_if(X0,X12),X22) = X12 )
        | ( ~ pp(X0)
          & aa_TPTP_ind_TPTP_ind(scratc1802667946bnd_if(X0,X12),X22) = X22 ) ) ) ).

% if_i_correct
fof(fact_k__UnivOf__ZF__closed,axiom,
    ! [X0] : pp(aa_TPTP_ind_bool(scratc1416680303closed,aa_TPTP_ind_TPTP_ind(scratc1943012394univof,X0))) ).

% k_UnivOf_ZF_closed
fof(fact_k__UnivOf__In,axiom,
    ! [X0] : pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X0),aa_TPTP_ind_TPTP_ind(scratc1943012394univof,X0))) ).

% k_UnivOf_In
fof(fact_k__ReplEq,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X22)
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1124382172d_repl,X0),X12)))
      <=> ? [X3] :
            ( gg_TPTP_ind(X3)
            & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X3),X0))
            & X22 = aa_TPTP_ind_TPTP_ind(X12,X3) ) ) ) ).

% k_ReplEq
fof(fact_k__PowerEq,axiom,
    ! [X0,X12] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc14390744_power,X0)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2116917608d_Subq,X12),X0)) ) ).

% k_PowerEq
fof(fact_k__UnionEq,axiom,
    ! [X0,X12] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc521652610_union,X0)))
    <=> ? [X2] :
          ( gg_TPTP_ind(X2)
          & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X12),X2))
          & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X2),X0)) ) ) ).

% k_UnionEq
fof(fact_k__EmptyAx,axiom,
    ~ ? [X0] : pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X0),scratc2095348162ptyset)) ).

% k_EmptyAx
fof(fact_k__In__ind,axiom,
    ! [X0] :
      ( ! [X13] :
          ( gg_TPTP_ind(X13)
         => ( ! [X22] :
                ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X22),X13))
               => pp(aa_TPTP_ind_bool(X0,X22)) )
           => pp(aa_TPTP_ind_bool(X0,X13)) ) )
     => ! [X14] : pp(aa_TPTP_ind_bool(X0,X14)) ) ).

% k_In_ind
fof(fact_set__ext,axiom,
    ! [X0,X12] :
      ( ( gg_TPTP_ind(X0)
        & gg_TPTP_ind(X12) )
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2116917608d_Subq,X0),X12))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2116917608d_Subq,X12),X0))
         => X0 = X12 ) ) ) ).

% set_ext
fof(fact_ATP_Olambda__1,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fb,Uu))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2069016971nd_nis,Uu),scratc98832752nd_n_1))
       => pp(aa_fun171081125l_bool(scratc701212661n_some,aa_TPT43085870d_bool(aTP_Lamm_ae,Uu))) ) ) ).

% ATP.lambda_1
fof(fact_ATP_Olambda__2,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fa,Uu))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2069016971nd_nis,Uu),scratc98832752nd_n_1))
       => pp(aa_fun171081125l_bool(scratc151533093_n_one,aa_TPT43085870d_bool(aTP_Lamm_ae,Uu))) ) ) ).

% ATP.lambda_2
fof(fact_ATP_Olambda__3,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ex,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),scratc98832752nd_n_1)),aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uu))) ) ).

% ATP.lambda_3
fof(fact_ATP_Olambda__4,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_eu,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(scratc98832752nd_n_1),Uu)),aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uu))) ) ).

% ATP.lambda_4
fof(fact_ATP_Olambda__5,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ez,Uu))
    <=> pp(aa_fun171081125l_bool(scratc2077606457nd_one(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1567857808d_d_Pi,scratc2068492180nd_nat),aTP_Lamm_ab)),aa_TPT43085870d_bool(aTP_Lamm_ey,Uu))) ) ).

% ATP.lambda_5
fof(fact_ATP_Olambda__6,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fh,Uu))
    <=> ( pp(aa_TPTP_ind_bool(scratc158021314_cond1,Uu))
       => ( pp(aa_TPTP_ind_bool(scratc158021315_cond2,Uu))
         => pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_fg,Uu))) ) ) ) ).

% ATP.lambda_6
fof(fact_ATP_Olambda__7,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_er,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uu)),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),scratc98832752nd_n_1))) ) ).

% ATP.lambda_7
fof(fact_ATP_Olambda__8,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_eo,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uu)),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(scratc98832752nd_n_1),Uu))) ) ).

% ATP.lambda_8
fof(fact_ATP_Olambda__9,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_aa,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uu)),Uu)) ) ).

% ATP.lambda_9
fof(fact_ATP_Olambda__10,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fc,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2069016971nd_nis,aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uu)),Uu)) ) ).

% ATP.lambda_10
fof(fact_ATP_Olambda__11,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fl,Uu))
    <=> scratc1623311406_is_of(aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uu),aTP_Lamm_a) ) ).

% ATP.lambda_11
fof(fact_ATP_Olambda__12,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fk,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2069016971nd_nis,aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uu)),scratc98832752nd_n_1)) ) ).

% ATP.lambda_12
fof(fact_ATP_Olambda__13,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ff,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,Uu),aa_TPTP_ind_TPTP_ind(scratc14390744_power,scratc2068492180nd_nat))) ) ).

% ATP.lambda_13
fof(fact_ATP_Olambda__14,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_a,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,Uu),scratc2068492180nd_nat)) ) ).

% ATP.lambda_14
fof(fact_ATP_Olambda__15,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fj,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_fi,Uu))) ) ).

% ATP.lambda_15
fof(fact_ATP_Olambda__16,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fe,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_fd,Uu))) ) ).

% ATP.lambda_16
fof(fact_ATP_Olambda__17,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ew,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ev,Uu))) ) ).

% ATP.lambda_17
fof(fact_ATP_Olambda__18,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_et,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_es,Uu))) ) ).

% ATP.lambda_18
fof(fact_ATP_Olambda__19,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_eq,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ep,Uu))) ) ).

% ATP.lambda_19
fof(fact_ATP_Olambda__20,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_en,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_em,Uu))) ) ).

% ATP.lambda_20
fof(fact_ATP_Olambda__21,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_el,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ek,Uu))) ) ).

% ATP.lambda_21
fof(fact_ATP_Olambda__22,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ei,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_eh,Uu))) ) ).

% ATP.lambda_22
fof(fact_ATP_Olambda__23,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_eg,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ef,Uu))) ) ).

% ATP.lambda_23
fof(fact_ATP_Olambda__24,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ee,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ed,Uu))) ) ).

% ATP.lambda_24
fof(fact_ATP_Olambda__25,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_eb,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ea,Uu))) ) ).

% ATP.lambda_25
fof(fact_ATP_Olambda__26,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dy,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dx,Uu))) ) ).

% ATP.lambda_26
fof(fact_ATP_Olambda__27,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dw,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dv,Uu))) ) ).

% ATP.lambda_27
fof(fact_ATP_Olambda__28,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ds,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dr,Uu))) ) ).

% ATP.lambda_28
fof(fact_ATP_Olambda__29,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dq,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dp,Uu))) ) ).

% ATP.lambda_29
fof(fact_ATP_Olambda__30,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_do,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dn,Uu))) ) ).

% ATP.lambda_30
fof(fact_ATP_Olambda__31,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dm,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dl,Uu))) ) ).

% ATP.lambda_31
fof(fact_ATP_Olambda__32,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dk,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dj,Uu))) ) ).

% ATP.lambda_32
fof(fact_ATP_Olambda__33,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_di,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dh,Uu))) ) ).

% ATP.lambda_33
fof(fact_ATP_Olambda__34,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dg,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_df,Uu))) ) ).

% ATP.lambda_34
fof(fact_ATP_Olambda__35,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_de,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dd,Uu))) ) ).

% ATP.lambda_35
fof(fact_ATP_Olambda__36,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dc,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_db,Uu))) ) ).

% ATP.lambda_36
fof(fact_ATP_Olambda__37,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_da,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cz,Uu))) ) ).

% ATP.lambda_37
fof(fact_ATP_Olambda__38,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cy,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cx,Uu))) ) ).

% ATP.lambda_38
fof(fact_ATP_Olambda__39,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cw,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cv,Uu))) ) ).

% ATP.lambda_39
fof(fact_ATP_Olambda__40,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cu,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ct,Uu))) ) ).

% ATP.lambda_40
fof(fact_ATP_Olambda__41,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cs,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cr,Uu))) ) ).

% ATP.lambda_41
fof(fact_ATP_Olambda__42,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cq,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cp,Uu))) ) ).

% ATP.lambda_42
fof(fact_ATP_Olambda__43,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_co,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cn,Uu))) ) ).

% ATP.lambda_43
fof(fact_ATP_Olambda__44,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cm,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cl,Uu))) ) ).

% ATP.lambda_44
fof(fact_ATP_Olambda__45,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ck,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cj,Uu))) ) ).

% ATP.lambda_45
fof(fact_ATP_Olambda__46,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ch,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cg,Uu))) ) ).

% ATP.lambda_46
fof(fact_ATP_Olambda__47,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ce,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cd,Uu))) ) ).

% ATP.lambda_47
fof(fact_ATP_Olambda__48,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cb,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ca,Uu))) ) ).

% ATP.lambda_48
fof(fact_ATP_Olambda__49,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_by,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bx,Uu))) ) ).

% ATP.lambda_49
fof(fact_ATP_Olambda__50,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_bv,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bu,Uu))) ) ).

% ATP.lambda_50
fof(fact_ATP_Olambda__51,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_bs,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_br,Uu))) ) ).

% ATP.lambda_51
fof(fact_ATP_Olambda__52,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_bq,Uu))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bp,Uu))) ) ).

% ATP.lambda_52
fof(fact_ATP_Olambda__53,axiom,
    ! [Uu] : aa_TPT494704832TP_ind(aTP_Lamm_bj,Uu) = aa_TPT494704832TP_ind(scratc1124382172d_repl,aa_TPTP_ind_TPTP_ind(scratc1223447707tminus(Uu),aa_TPTP_ind_TPTP_ind(scratc2018566726d_Sing,scratc2095348162ptyset))) ).

% ATP.lambda_53
fof(fact_ATP_Olambda__54,axiom,
    ! [Uu] :
      ( gg_TPTP_ind(Uu)
     => ( pp(aa_TPTP_ind_bool(aTP_Lamm_ag,Uu))
      <=> Uu != scratc2095348162ptyset ) ) ).

% ATP.lambda_54
fof(fact_ATP_Olambda__55,axiom,
    ! [Uu] :
      ( gg_TPTP_ind(Uu)
     => ( pp(aa_TPTP_ind_bool(aTP_Lamm_bh,Uu))
      <=> ? [X2] :
            ( gg_TPTP_ind(X2)
            & aa_TPTP_ind_TPTP_ind(scratc696190755d_Inj1,X2) = Uu ) ) ) ).

% ATP.lambda_55
fof(fact_ATP_Olambda__56,axiom,
    ! [Uu] :
      ( gg_TPTP_ind(Uu)
     => ( pp(aa_TPTP_ind_bool(aTP_Lamm_bi,Uu))
      <=> ? [X2] :
            ( gg_TPTP_ind(X2)
            & aa_TPTP_ind_TPTP_ind(scratc696190754d_Inj0,X2) = Uu ) ) ) ).

% ATP.lambda_56
fof(fact_ATP_Olambda__57,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dn,Uu),Uua))
    <=> scratc1067749701_orec3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,Uu),Uua)) ) ).

% ATP.lambda_57
fof(fact_ATP_Olambda__58,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dl,Uu),Uua))
    <=> pp(scratc2077868803nd_or3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,Uu),Uua))) ) ).

% ATP.lambda_58
fof(fact_ATP_Olambda__59,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dj,Uu),Uua))
    <=> pp(scratc1994269768nd_ec3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,Uu),Uua))) ) ).

% ATP.lambda_59
fof(fact_ATP_Olambda__60,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dv,Uu),Uua))
    <=> scratc1067749701_orec3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,Uu),Uua),aa_fun171081125l_bool(scratc701212661n_some,aa_TPT43085870d_bool(aTP_Lamm_dt(Uu),Uua)),aa_fun171081125l_bool(scratc701212661n_some,aa_TPT43085870d_bool(aTP_Lamm_du(Uu),Uua))) ) ).

% ATP.lambda_60
fof(fact_ATP_Olambda__61,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dr,Uu),Uua))
    <=> pp(scratc2077868803nd_or3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,Uu),Uua),aa_fun171081125l_bool(scratc701212661n_some,aa_TPT43085870d_bool(scratc1229761461ffprop(Uu),Uua)),aa_fun171081125l_bool(scratc701212661n_some,aa_TPT43085870d_bool(scratc1229761461ffprop(Uua),Uu)))) ) ).

% ATP.lambda_61
fof(fact_ATP_Olambda__62,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dp,Uu),Uua))
    <=> pp(scratc1994269768nd_ec3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,Uu),Uua),aa_fun171081125l_bool(scratc701212661n_some,aa_TPT43085870d_bool(scratc1229761461ffprop(Uu),Uua)),aa_fun171081125l_bool(scratc701212661n_some,aa_TPT43085870d_bool(scratc1229761461ffprop(Uua),Uu)))) ) ).

% ATP.lambda_62
fof(fact_ATP_Olambda__63,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_gl,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(Uu),Uua),Uua)) ) ).

% ATP.lambda_63
fof(fact_ATP_Olambda__64,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ey,Uu),Uua))
    <=> pp(scratc610767008_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uua),scratc98832752nd_n_1)),aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uu)),aa_fun171081125l_bool(scratc35740832_n_all,aa_TPT43085870d_bool(aTP_Lamm_ad,Uua)))) ) ).

% ATP.lambda_64
fof(fact_ATP_Olambda__65,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fi,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uu)),aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uua)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,Uu),Uua)) ) ) ).

% ATP.lambda_65
fof(fact_ATP_Olambda__66,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_es,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uu)),Uua)),aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),Uua)))) ) ).

% ATP.lambda_66
fof(fact_ATP_Olambda__67,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ev,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uua))),aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),Uua)))) ) ).

% ATP.lambda_67
fof(fact_ATP_Olambda__68,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ad,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uu),aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uua))),aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uu),Uua)))) ) ).

% ATP.lambda_68
fof(fact_ATP_Olambda__69,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fd,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2069016971nd_nis,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2069016971nd_nis,aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uu)),aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uua))) ) ) ).

% ATP.lambda_69
fof(fact_ATP_Olambda__70,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_af,Uu),Uua))
    <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc2027971839nd_imp,aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238790d_n_in,Uua),Uu)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238790d_n_in,aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uua)),Uu))) ) ).

% ATP.lambda_70
fof(fact_ATP_Olambda__71,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_eh,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),Uua)),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uua),Uu))) ) ).

% ATP.lambda_71
fof(fact_ATP_Olambda__72,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dh,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,Uua),Uu)) ) ) ).

% ATP.lambda_72
fof(fact_ATP_Olambda__73,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dd,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc548513516moreis,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc414529904lessis,Uua),Uu)) ) ) ).

% ATP.lambda_73
fof(fact_ATP_Olambda__74,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_db,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc414529904lessis,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc548513516moreis,Uua),Uu)) ) ) ).

% ATP.lambda_74
fof(fact_ATP_Olambda__75,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_df,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,Uua),Uu)) ) ) ).

% ATP.lambda_75
fof(fact_ATP_Olambda__76,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cr,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,Uu),Uua))
       => pp(scratc718232188_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc414529904lessis,Uu),Uua))) ) ) ).

% ATP.lambda_76
fof(fact_ATP_Olambda__77,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cz,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc548513516moreis,Uu),Uua))
       => pp(scratc718232188_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,Uu),Uua))) ) ) ).

% ATP.lambda_77
fof(fact_ATP_Olambda__78,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cx,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc414529904lessis,Uu),Uua))
       => pp(scratc718232188_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,Uu),Uua))) ) ) ).

% ATP.lambda_78
fof(fact_ATP_Olambda__79,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cp,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,Uu),Uua))
       => pp(scratc718232188_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc548513516moreis,Uu),Uua))) ) ) ).

% ATP.lambda_79
fof(fact_ATP_Olambda__80,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_br,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),Uua)),Uu)) ) ).

% ATP.lambda_80
fof(fact_ATP_Olambda__81,axiom,
    ! [Uu,Uua] : aa_TPTP_ind_TPTP_ind(aTP_Lamm_bg(Uu),Uua) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1124382172d_repl,aa_TPTP_ind_TPTP_ind(Uu,Uua)),aa_TPT1424761345TP_ind(scratc1677186215d_pair,Uua)) ).

% ATP.lambda_81
fof(fact_ATP_Olambda__82,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fo,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_fm,Uu)),aa_TPT43085870d_bool(aTP_Lamm_fn(Uu),Uua))) ) ).

% ATP.lambda_82
fof(fact_ATP_Olambda__83,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_em,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),Uua))),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uu)),Uua))) ) ).

% ATP.lambda_83
fof(fact_ATP_Olambda__84,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ep,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),Uua))),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uua)))) ) ).

% ATP.lambda_84
fof(fact_ATP_Olambda__85,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cv,Uu),Uua))
    <=> ( pp(scratc718232188_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,Uu),Uua)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc414529904lessis,Uu),Uua)) ) ) ).

% ATP.lambda_85
fof(fact_ATP_Olambda__86,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cn,Uu),Uua))
    <=> ( pp(scratc718232188_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc548513516moreis,Uu),Uua)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,Uu),Uua)) ) ) ).

% ATP.lambda_86
fof(fact_ATP_Olambda__87,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cl,Uu),Uua))
    <=> ( pp(scratc718232188_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc414529904lessis,Uu),Uua)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,Uu),Uua)) ) ) ).

% ATP.lambda_87
fof(fact_ATP_Olambda__88,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ct,Uu),Uua))
    <=> ( pp(scratc718232188_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,Uu),Uua)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc548513516moreis,Uu),Uua)) ) ) ).

% ATP.lambda_88
fof(fact_ATP_Olambda__89,axiom,
    ! [Uu,Uua] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(aTP_Lamm_bk,Uu),Uua) = aa_TPTP_ind_TPTP_ind(scratc1307162165nunion(aa_TPTP_ind_TPTP_ind(scratc2018566726d_Sing,scratc2095348162ptyset)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1124382172d_repl,Uu),Uua)) ).

% ATP.lambda_89
fof(fact_ATP_Olambda__90,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ef,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2069016971nd_nis,Uua),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),Uua))) ) ).

% ATP.lambda_90
fof(fact_ATP_Olambda__91,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bp,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,Uu),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),Uua))) ) ).

% ATP.lambda_91
fof(fact_ATP_Olambda__92,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ae,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,Uu),aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,Uua))) ) ).

% ATP.lambda_92
fof(fact_ATP_Olambda__93,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fm,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,Uua),aa_TPTP_ind_TPTP_ind(scratc14390744_power,Uu))) ) ).

% ATP.lambda_93
fof(fact_ATP_Olambda__94,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fg,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238790d_n_in,Uua),Uu)) ) ).

% ATP.lambda_94
fof(fact_ATP_Olambda__95,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bl,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2066917798nd_nIn,Uua),Uu)) ) ).

% ATP.lambda_95
fof(fact_ATP_Olambda__96,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ai,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,Uua),Uu)) ) ).

% ATP.lambda_96
fof(fact_ATP_Olambda__97,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ek,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ej(Uu),Uua))) ) ).

% ATP.lambda_97
fof(fact_ATP_Olambda__98,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ed,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ec(Uu),Uua))) ) ).

% ATP.lambda_98
fof(fact_ATP_Olambda__99,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ea,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dz(Uu),Uua))) ) ).

% ATP.lambda_99
fof(fact_ATP_Olambda__100,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cj,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ci(Uu),Uua))) ) ).

% ATP.lambda_100
fof(fact_ATP_Olambda__101,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cg,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cf(Uu),Uua))) ) ).

% ATP.lambda_101
fof(fact_ATP_Olambda__102,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cd,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cc(Uu),Uua))) ) ).

% ATP.lambda_102
fof(fact_ATP_Olambda__103,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ca,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bz(Uu),Uua))) ) ).

% ATP.lambda_103
fof(fact_ATP_Olambda__104,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bx,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bw(Uu),Uua))) ) ).

% ATP.lambda_104
fof(fact_ATP_Olambda__105,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bu,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bt(Uu),Uua))) ) ).

% ATP.lambda_105
fof(fact_ATP_Olambda__106,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dx,Uu),Uua))
    <=> pp(scratc621603181_amone(scratc2068492180nd_nat,aa_TPT43085870d_bool(aTP_Lamm_dt(Uu),Uua))) ) ).

% ATP.lambda_106
fof(fact_ATP_Olambda__107,axiom,
    ! [Uu,Uua] : aa_TPTP_ind_TPTP_ind(aTP_Lamm_ac(Uu),Uua) = aa_TPTP_ind_TPTP_ind(scratc2076836790rdsucc,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uu),Uua)) ).

% ATP.lambda_107
fof(fact_ATP_Olambda__108,axiom,
    ! [Uu,Uua] : aa_TPTP_ind_TPTP_ind(aTP_Lamm_bd(Uu),Uua) = aa_TPTP_ind_TPTP_ind(scratc521652610_union,aa_TPTP_ind_TPTP_ind(Uu,Uua)) ).

% ATP.lambda_108
fof(fact_ATP_Olambda__109,axiom,
    ! [Uu,Uua] :
      ( gg_TPTP_ind(Uua)
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bf,Uu),Uua))
      <=> ? [X3] :
            ( gg_TPTP_ind(X3)
            & Uua = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1677186215d_pair,Uu),X3) ) ) ) ).

% ATP.lambda_109
fof(fact_ATP_Olambda__110,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fw(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(aa_TPTP_ind_TPTP_ind(scratc1710759884etprod(Uu),Uua)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc966855345d_pair(Uu,Uua),aa_TPTP_ind_TPTP_ind(scratc1074704707_first(Uu,Uua),Uub)),aa_TPTP_ind_TPTP_ind(scratc1233885537second(Uu,Uua),Uub))),Uub)) ) ).

% ATP.lambda_110
fof(fact_ATP_Olambda__111,axiom,
    ! [Uu,Uua,Uub] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(aTP_Lamm_bn(Uu),Uua),Uub) = aa_TPTP_ind_TPTP_ind(scratc1802667946bnd_if(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,scratc2095348162ptyset),Uub),Uu),Uua) ).

% ATP.lambda_111
fof(fact_ATP_Olambda__112,axiom,
    ! [Uu,Uua,Uub] : aa_TPTP_ind_TPTP_ind(aa_fun1235454963TP_ind(aTP_Lamm_bm(Uu),Uua),Uub) = aa_TPTP_ind_TPTP_ind(scratc1802667946bnd_if(aa_TPTP_ind_bool(Uua,Uub),Uub),scratc1995122619nd_eps(aa_fun1584354236d_bool(aTP_Lamm_ba(Uu),Uua))) ).

% ATP.lambda_112
fof(fact_ATP_Olambda__113,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_at(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1830090288d_esti(Uu),Uub),Uua)) ) ).

% ATP.lambda_113
fof(fact_ATP_Olambda__114,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_fp(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1830090288d_esti(Uu),Uub),aa_fun1431113780TP_ind(scratc494515559_d_Sep(Uu),Uua)))
       => pp(aa_TPTP_ind_bool(Uua,Uub)) ) ) ).

% ATP.lambda_114
fof(fact_ATP_Olambda__115,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fn(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc615049083d_incl(Uu),Uua),Uub))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc615049083d_incl(Uu),Uub),Uua))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(aa_TPTP_ind_TPTP_ind(scratc14390744_power,Uu)),Uua),Uub)) ) ) ) ).

% ATP.lambda_115
fof(fact_ATP_Olambda__116,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fx(Uu),Uua),Uub))
    <=> scratc1623311406_is_of(aa_TPTP_ind_TPTP_ind(scratc1233885537second(Uu,Uua),Uub),aa_TPT43085870d_bool(aTP_Lamm_ai,Uua)) ) ).

% ATP.lambda_116
fof(fact_ATP_Olambda__117,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fy(Uu),Uua),Uub))
    <=> scratc1623311406_is_of(aa_TPTP_ind_TPTP_ind(scratc1074704707_first(Uu,Uua),Uub),aa_TPT43085870d_bool(aTP_Lamm_ai,Uu)) ) ).

% ATP.lambda_117
fof(fact_ATP_Olambda__118,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_ge(Uu),Uua),Uub))
    <=> scratc1623311406_is_of(aa_TPTP_ind_TPTP_ind(scratc561578429d_e_in(Uu,Uua),Uub),aa_TPT43085870d_bool(aTP_Lamm_ai,Uu)) ) ).

% ATP.lambda_118
fof(fact_ATP_Olambda__119,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_gi(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_gf(Uu),Uua)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_gh(Uu),Uua),Uub))) ) ).

% ATP.lambda_119
fof(fact_ATP_Olambda__120,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dz(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),Uua)),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),Uub)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,Uua),Uub)) ) ) ).

% ATP.lambda_120
fof(fact_ATP_Olambda__121,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ej(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),Uua)),Uub)),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uua),Uub)))) ) ).

% ATP.lambda_121
fof(fact_ATP_Olambda__122,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bw(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc548513516moreis,Uua),Uub))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,Uu),Uub)) ) ) ) ).

% ATP.lambda_122
fof(fact_ATP_Olambda__123,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bz(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc548513516moreis,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,Uua),Uub))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1728063742_29_ii,Uu),Uub)) ) ) ) ).

% ATP.lambda_123
fof(fact_ATP_Olambda__124,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bt(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc414529904lessis,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc414529904lessis,Uua),Uub))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc414529904lessis,Uu),Uub)) ) ) ) ).

% ATP.lambda_124
fof(fact_ATP_Olambda__125,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cf(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc414529904lessis,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,Uua),Uub))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,Uu),Uub)) ) ) ) ).

% ATP.lambda_125
fof(fact_ATP_Olambda__126,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ec(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2069016971nd_nis,Uua),Uub))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2069016971nd_nis,aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),Uua)),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),Uub))) ) ) ).

% ATP.lambda_126
fof(fact_ATP_Olambda__127,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cc(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc414529904lessis,Uua),Uub))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,Uu),Uub)) ) ) ) ).

% ATP.lambda_127
fof(fact_ATP_Olambda__128,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ci(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,Uua),Uub))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2027709436nd_iii,Uu),Uub)) ) ) ) ).

% ATP.lambda_128
fof(fact_ATP_Olambda__129,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_ba(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,Uub),Uu))
        & pp(aa_TPTP_ind_bool(Uua,Uub)) ) ) ).

% ATP.lambda_129
fof(fact_ATP_Olambda__130,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_gb(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(Uua,Uub))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1032062638_image(aa_fun1431113780TP_ind(scratc494515559_d_Sep(Uu),Uua),Uu),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2059486350_Sigma,aa_fun1431113780TP_ind(scratc494515559_d_Sep(Uu),Uua)),scratc561578429d_e_in(Uu,Uua))),Uub)) ) ) ).

% ATP.lambda_130
fof(fact_ATP_Olambda__131,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_fq(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(Uua,Uub))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1830090288d_esti(Uu),Uub),aa_fun1431113780TP_ind(scratc494515559_d_Sep(Uu),Uua))) ) ) ).

% ATP.lambda_131
fof(fact_ATP_Olambda__132,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_gk(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,Uu)),aa_TPT43085870d_bool(aa_fun1212484691d_bool(aTP_Lamm_gj(Uu),Uua),Uub))) ) ).

% ATP.lambda_132
fof(fact_ATP_Olambda__133,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_bc(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,Uu)),aa_TPT43085870d_bool(aa_fun1212484691d_bool(aTP_Lamm_bb(Uu),Uua),Uub))) ) ).

% ATP.lambda_133
fof(fact_ATP_Olambda__134,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ga(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,Uua)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_fz(Uu),Uua),Uub))) ) ).

% ATP.lambda_134
fof(fact_ATP_Olambda__135,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fu(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,Uua)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ft(Uu),Uua),Uub))) ) ).

% ATP.lambda_135
fof(fact_ATP_Olambda__136,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fs(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,Uua)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_fr(Uu),Uua),Uub))) ) ).

% ATP.lambda_136
fof(fact_ATP_Olambda__137,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_gf(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,Uub),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1567857808d_d_Pi,Uu),aTP_Lamm_ah(Uua)))) ) ).

% ATP.lambda_137
fof(fact_ATP_Olambda__138,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dt(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,Uu),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uua),Uub))) ) ).

% ATP.lambda_138
fof(fact_ATP_Olambda__139,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_du(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80238795d_n_is,Uua),aa_TPTP_ind_TPTP_ind(scratc80697981d_n_pl(Uu),Uub))) ) ).

% ATP.lambda_139
fof(fact_ATP_Olambda__140,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fv(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,Uub),aa_TPTP_ind_TPTP_ind(scratc1710759884etprod(Uu),Uua))) ) ).

% ATP.lambda_140
fof(fact_ATP_Olambda__141,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_gc(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,Uub),aa_fun1431113780TP_ind(scratc494515559_d_Sep(Uu),Uua))) ) ).

% ATP.lambda_141
fof(fact_ATP_Olambda__142,axiom,
    ! [Uu,Uua,Uub] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(aTP_Lamm_av(Uu),Uua),Uub) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uu),Uub)) ).

% ATP.lambda_142
fof(fact_ATP_Olambda__143,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_gd(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(Uua,aa_TPTP_ind_TPTP_ind(scratc561578429d_e_in(Uu,Uua),Uub))) ) ).

% ATP.lambda_143
fof(fact_ATP_Olambda__144,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1913827119d_bool(aTP_Lamm_be(Uu),Uua),Uub))
    <=> ! [X3] :
          ( gg_TPTP_ind(X3)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,X3),Uu))
           => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1802667954bnd_in,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uub),X3)),aa_TPTP_ind_TPTP_ind(Uua,X3))) ) ) ) ).

% ATP.lambda_144
fof(fact_ATP_Olambda__145,axiom,
    ! [Uu,Uua,Uub,Uuc] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(aa_TPT1791839040TP_ind(aTP_Lamm_aw(Uu),Uua),Uub),Uuc) = aa_TPTP_ind_TPTP_ind(scratc1802667946bnd_if(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1032062638_image(Uu,Uua),Uub),Uuc),aa_TPTP_ind_TPTP_ind(scratc1986928439d_soft(Uu,Uua,Uub),Uuc)),scratc2095348162ptyset) ).

% ATP.lambda_145
fof(fact_ATP_Olambda__146,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ft(Uu),Uua),Uub),Uuc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(Uu),aa_TPTP_ind_TPTP_ind(scratc1074704707_first(Uu,Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc966855345d_pair(Uu,Uua),Uub),Uuc))),Uub)) ) ).

% ATP.lambda_146
fof(fact_ATP_Olambda__147,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_fr(Uu),Uua),Uub),Uuc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(Uua),aa_TPTP_ind_TPTP_ind(scratc1233885537second(Uu,Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc966855345d_pair(Uu,Uua),Uub),Uuc))),Uuc)) ) ).

% ATP.lambda_147
fof(fact_ATP_Olambda__148,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_gg(Uu),Uua),Uub),Uuc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(Uu),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uua),Uuc)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uub),Uuc))) ) ).

% ATP.lambda_148
fof(fact_ATP_Olambda__149,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ap(Uu),Uua),Uub),Uuc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1830090288d_esti(Uu),Uub),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uua),Uuc))) ) ).

% ATP.lambda_149
fof(fact_ATP_Olambda__150,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ax(Uu),Uua),Uub),Uuc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(Uu),Uub),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uua),Uuc))) ) ).

% ATP.lambda_150
fof(fact_ATP_Olambda__151,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_fz(Uu),Uua),Uub),Uuc))
    <=> scratc1623311406_is_of(aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc966855345d_pair(Uu,Uua),Uub),Uuc),aa_TPT43085870d_bool(aTP_Lamm_fv(Uu),Uua)) ) ).

% ATP.lambda_151
fof(fact_ATP_Olambda__152,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ar(Uu),Uua),Uub),Uuc))
    <=> pp(scratc2095815101d_l_ec(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1830090288d_esti(Uu),Uuc),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1830090288d_esti(Uu),Uuc),Uub))) ) ).

% ATP.lambda_152
fof(fact_ATP_Olambda__153,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_as(Uu),Uua),Uub),Uuc))
    <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc2027971839nd_imp,aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1830090288d_esti(Uu),Uuc),Uua)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1830090288d_esti(Uu),Uuc),Uub))) ) ).

% ATP.lambda_153
fof(fact_ATP_Olambda__154,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_gh(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_gg(Uua),Uub),Uuc)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1567857808d_d_Pi,Uu),aTP_Lamm_ah(Uua))),Uub),Uuc)) ) ) ).

% ATP.lambda_154
fof(fact_ATP_Olambda__155,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( ( gg_TPTP_ind(Uua)
        & gg_TPTP_ind(Uub)
        & gg_TPTP_ind(Uuc) )
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_bo(Uu),Uua),Uub),Uuc))
      <=> ( ( pp(Uu)
            & Uuc = Uua )
          | ( ~ pp(Uu)
            & Uuc = Uub ) ) ) ) ).

% ATP.lambda_155
fof(fact_ATP_Olambda__156,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_fun1212484691d_bool(aTP_Lamm_gj(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(Uua,Uub))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(Uu),Uub),Uuc))
         => pp(aa_TPTP_ind_bool(Uua,Uuc)) ) ) ) ).

% ATP.lambda_156
fof(fact_ATP_Olambda__157,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_fun1212484691d_bool(aTP_Lamm_bb(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(Uua,Uub))
       => ( pp(aa_TPTP_ind_bool(Uua,Uuc))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(Uu),Uub),Uuc)) ) ) ) ).

% ATP.lambda_157
fof(fact_ATP_Olambda__158,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_az(Uu),Uua),Uub),Uuc))
    <=> pp(aa_fun171081125l_bool(scratc1961814196nd_all(Uu),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aTP_Lamm_ay(Uu),Uua),Uub),Uuc))) ) ).

% ATP.lambda_158
fof(fact_ATP_Olambda__159,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_aq(Uu),Uua),Uub),Uuc))
    <=> pp(aa_fun171081125l_bool(scratc2104871667l_some(Uua),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ap(Uu),Uub),Uuc))) ) ).

% ATP.lambda_159
fof(fact_ATP_Olambda__160,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aTP_Lamm_ay(Uu),Uua),Uub),Uuc),Uud))
    <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc2027971839nd_imp,aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uub),Uuc)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uub),Uud))),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(Uu),Uuc),Uud))) ) ).

% ATP.lambda_160
fof(fact_ATP_Olambda__161,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aTP_Lamm_an(Uu),Uua),Uub),Uuc),Uud))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(Uu,Uuc),Uud))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uub),Uuc)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uub),Uud))) ) ) ).

% ATP.lambda_161
fof(fact_ATP_Olambda__162,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_fun987228051d_bool(aTP_Lamm_am(Uu),Uua),Uub),Uuc),Uud))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_fun845057962d_bool(aTP_Lamm_al(Uu),Uua),Uub),Uuc),Uud))) ) ).

% ATP.lambda_162
fof(fact_ATP_Olambda__163,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_fun987228051d_bool(aTP_Lamm_ao(Uu),Uua),Uub),Uuc),Uud))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aTP_Lamm_an(Uua),Uub),Uuc),Uud))) ) ).

% ATP.lambda_163
fof(fact_ATP_Olambda__164,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(aa_TPT1791839040TP_ind(aa_TPT1781712639TP_ind(aTP_Lamm_au(Uu),Uua),Uub),Uuc),Uud) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,aa_TPTP_ind_TPTP_ind(scratc474669606wissel(Uu,Uub),Uuc)),Uud)) ).

% ATP.lambda_164
fof(fact_ATP_Olambda__165,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud,Uue] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_fun845057962d_bool(aTP_Lamm_al(Uu),Uua),Uub),Uuc),Uud),Uue))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_TPT985247859d_bool(aa_fun1107270209d_bool(aTP_Lamm_ak(Uu),Uua),Uub),Uuc),Uud),Uue))) ) ).

% ATP.lambda_165
fof(fact_ATP_Olambda__166,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud,Uue,Uuf] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_TPT985247859d_bool(aa_TPT125613450d_bool(aTP_Lamm_aj(Uu),Uua),Uub),Uuc),Uud),Uue),Uuf))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(Uu,Uuc),Uud))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(Uu,Uue),Uuf))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc561578434d_e_is(Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uub),Uuc)),Uue)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1802143164bnd_ap,Uub),Uud)),Uuf))) ) ) ) ).

% ATP.lambda_166
fof(fact_ATP_Olambda__167,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud,Uue,Uuf] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_TPT985247859d_bool(aa_fun1107270209d_bool(aTP_Lamm_ak(Uu),Uua),Uub),Uuc),Uud),Uue),Uuf))
    <=> pp(aa_fun171081125l_bool(scratc846727211all_of(aa_TPT43085870d_bool(aTP_Lamm_ai,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_TPT985247859d_bool(aa_TPT125613450d_bool(aTP_Lamm_aj(Uua),Uub),Uuc),Uud),Uue),Uuf))) ) ).

% ATP.lambda_167
fof(fact_ATP_Olambda__168,axiom,
    ! [Uu,Uua] :
      ( gg_TPTP_ind(Uu)
     => aa_TPTP_ind_TPTP_ind(aTP_Lamm_ah(Uu),Uua) = Uu ) ).

% ATP.lambda_168
fof(fact_ATP_Olambda__169,axiom,
    ! [Uu] : aa_TPTP_ind_TPTP_ind(aTP_Lamm_ab,Uu) = scratc2068492180nd_nat ).

% ATP.lambda_169

% Helper facts (15)
fof(help_pp_2_1_U,axiom,
    pp(fTrue) ).

fof(help_fconj_3_1_U,axiom,
    ! [P,Q] :
      ( ~ pp(aa_bool_bool(aa_boo1142376798l_bool(fconj,P),Q))
      | pp(Q) ) ).

fof(help_fconj_2_1_U,axiom,
    ! [P,Q] :
      ( ~ pp(aa_bool_bool(aa_boo1142376798l_bool(fconj,P),Q))
      | pp(P) ) ).

fof(help_fconj_1_1_U,axiom,
    ! [P,Q] :
      ( ~ pp(P)
      | ~ pp(Q)
      | pp(aa_bool_bool(aa_boo1142376798l_bool(fconj,P),Q)) ) ).

fof(help_fFalse_1_1_T,axiom,
    ! [P] :
      ( gg_bool(P)
     => ( P = fTrue
        | P = fFalse ) ) ).

fof(help_fFalse_1_1_U,axiom,
    ~ pp(fFalse) ).

fof(help_fimplies_3_1_U,axiom,
    ! [P,Q] :
      ( ~ pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q))
      | ~ pp(P)
      | pp(Q) ) ).

fof(help_fimplies_2_1_U,axiom,
    ! [Q,P] :
      ( ~ pp(Q)
      | pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q)) ) ).

fof(help_fimplies_1_1_U,axiom,
    ! [P,Q] :
      ( pp(P)
      | pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q)) ) ).

fof(help_fEx_1_1_fEx_001t__TPTP____Interpret__Oind_U,axiom,
    ! [P,X7] :
      ( ~ pp(aa_TPTP_ind_bool(P,X7))
      | pp(fEx_TPTP_ind(P)) ) ).

fof(help_fequal_2_1_fequal_001t__TPTP____Interpret__Oind_T,axiom,
    ! [X7,Y] :
      ( X7 != Y
      | pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(fequal_TPTP_ind,X7),Y)) ) ).

fof(help_fequal_1_1_fequal_001t__TPTP____Interpret__Oind_T,axiom,
    ! [X7,Y] :
      ( ( gg_TPTP_ind(X7)
        & gg_TPTP_ind(Y) )
     => ( ~ pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(fequal_TPTP_ind,X7),Y))
        | X7 = Y ) ) ).

fof(help_COMBS_1_1_COMBS_001t__TPTP____Interpret__Oind_001t__HOL__Obool_001t__HOL__Obool_U,axiom,
    ! [P,Q,R] : aa_TPTP_ind_bool(cOMBS_2003118649l_bool(P,Q),R) = aa_bool_bool(aa_TPT2142672771l_bool(P,R),aa_TPTP_ind_bool(Q,R)) ).

fof(help_COMBC_1_1_COMBC_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind_001t__HOL__Obool_U,axiom,
    ! [P,Q,R] : aa_TPTP_ind_bool(aa_TPT43085870d_bool(cOMBC_1555011498d_bool(P),Q),R) = aa_TPTP_ind_bool(aa_TPT43085870d_bool(P,R),Q) ).

fof(help_COMBB_1_1_COMBB_001t__HOL__Obool_001t__fun_It__HOL__Obool_Mt__HOL__Obool_J_001t__TPTP____Interpret__Oind_U,axiom,
    ! [P,Q,R] : aa_TPT2142672771l_bool(cOMBB_658106424TP_ind(P,Q),R) = aa_boo1142376798l_bool(P,aa_TPTP_ind_bool(Q,R)) ).

% Conjectures (1)
fof(conj_0,conjecture,
    pp(aa_fun171081125l_bool(scratc846727211all_of(aTP_Lamm_a),aTP_Lamm_aa)) ).

%------------------------------------------------------------------------------
