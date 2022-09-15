%------------------------------------------------------------------------------
% File     : NUM697+4 : TPTP v8.1.0. Released v7.3.0.
% Domain   : Number theory
% Problem  : Grundlagen problem satz25a
% Version  : [Bro17] axioms : Especial.
% English  :

% Refs     : [Bro17] Brown (2017), Email to G. Sutcliffe
% Source   : [Br017]
% Names    :

% Status   : Theorem
% Rating   : 0.97 v7.3.0
% Syntax   : Number of formulae    :  583 ( 212 unt;   0 def)
%            Number of atoms       : 1137 ( 111 equ)
%            Maximal formula atoms :    8 (   1 avg)
%            Number of connectives :  572 (  18   ~;  16   |;  25   &)
%                                         ( 325 <=>; 188  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   14 (   4 avg)
%            Maximal term depth    :    8 (   2 avg)
%            Number of predicates  :   12 (  11 usr;   1 prp; 0-3 aty)
%            Number of functors    :  433 ( 433 usr; 233 con; 0-5 aty)
%            Number of variables   : 1078 (1071   !;   7   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Translated by Isabelle from the THF version.
%------------------------------------------------------------------------------
% Explicit typings (24)
fof(gsy_c_HOL_Oundefined_001t__HOL__Obool,axiom,
    gg_bool(undefined_bool(bool)) ).

fof(gsy_c_HOL_Oundefined_001t__TPTP____Interpret__Oind,axiom,
    gg_TPTP_ind(undefined_TPTP_ind(tPTP_ind)) ).

fof(gsy_c_Scratch__tptp__translate__50754__14833_ONUM697__thf__4__p_Obnd__amone,axiom,
    ! [B_1,B_2] : gg_bool(scratc997820912_amone(B_1,B_2)) ).

fof(gsy_c_Scratch__tptp__translate__50754__14833_ONUM697__thf__4__p_Obnd__d__and,axiom,
    ! [B_1,B_2] : gg_bool(scratc1235620061_d_and(B_1,B_2)) ).

fof(gsy_c_Scratch__tptp__translate__50754__14833_ONUM697__thf__4__p_Obnd__d__not,axiom,
    ! [B_1] : gg_bool(scratc1343085241_d_not(B_1)) ).

fof(gsy_c_Scratch__tptp__translate__50754__14833_ONUM697__thf__4__p_Obnd__ec3,axiom,
    ! [B_1,B_2,B_3] : gg_bool(scratc2120848971nd_ec3(B_1,B_2,B_3)) ).

fof(gsy_c_Scratch__tptp__translate__50754__14833_ONUM697__thf__4__p_Obnd__ect,axiom,
    ! [B_1,B_2] : gg_TPTP_ind(scratc2120849036nd_ect(B_1,B_2)) ).

fof(gsy_c_Scratch__tptp__translate__50754__14833_ONUM697__thf__4__p_Obnd__emptyset,axiom,
    gg_TPTP_ind(scratc149728127ptyset) ).

fof(gsy_c_Scratch__tptp__translate__50754__14833_ONUM697__thf__4__p_Obnd__eps,axiom,
    ! [B_1] : gg_TPTP_ind(scratc2121701822nd_eps(B_1)) ).

fof(gsy_c_Scratch__tptp__translate__50754__14833_ONUM697__thf__4__p_Obnd__ind,axiom,
    ! [B_1,B_2] : gg_TPTP_ind(scratc7132981nd_ind(B_1,B_2)) ).

fof(gsy_c_Scratch__tptp__translate__50754__14833_ONUM697__thf__4__p_Obnd__l__ec,axiom,
    ! [B_1,B_2] : gg_bool(scratc324549184d_l_ec(B_1,B_2)) ).

fof(gsy_c_Scratch__tptp__translate__50754__14833_ONUM697__thf__4__p_Obnd__n__1,axiom,
    gg_TPTP_ind(scratc1396187181nd_n_1) ).

fof(gsy_c_Scratch__tptp__translate__50754__14833_ONUM697__thf__4__p_Obnd__nat,axiom,
    gg_TPTP_ind(scratc47587735nd_nat) ).

fof(gsy_c_Scratch__tptp__translate__50754__14833_ONUM697__thf__4__p_Obnd__omega,axiom,
    gg_TPTP_ind(scratc1836261175_omega) ).

fof(gsy_c_Scratch__tptp__translate__50754__14833_ONUM697__thf__4__p_Obnd__or3,axiom,
    ! [B_1,B_2,B_3] : gg_bool(scratc56964358nd_or3(B_1,B_2,B_3)) ).

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

% Relevant facts (543)
fof(fact_def__lessis,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,X),Xa))
    <=> pp(aa_bool_bool(scratc325205189d_l_or(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,X),Xa)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,X),Xa))) ) ).

% def_lessis
fof(fact_def__moreis,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,X),Xa))
    <=> pp(aa_bool_bool(scratc325205189d_l_or(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,X),Xa)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,X),Xa))) ) ).

% def_moreis
fof(fact_def__d__29__prop1,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc812060333_prop1,X),Xa))
    <=> pp(scratc56964358nd_or3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,X),Xa),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,X),Xa),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,X),Xa))) ) ).

% def_d_29_prop1
fof(fact_def__iii,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,X),Xa))
    <=> pp(aa_fun171081125l_bool(scratc1416247032n_some,aa_TPT43085870d_bool(scratc1431625074ffprop(Xa),X))) ) ).

% def_iii
fof(fact_def__d__29__ii,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,X),Xa))
    <=> pp(aa_fun171081125l_bool(scratc1416247032n_some,aa_TPT43085870d_bool(scratc1431625074ffprop(X),Xa))) ) ).

% def_d_29_ii
fof(fact_def__diffprop,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1431625074ffprop(X),Xa),Xb))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,X),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Xa),Xb))) ) ).

% def_diffprop
fof(fact_def__d__28__prop1,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc223698158_prop1(X),Xa),Xb))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc48112526nd_nis,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(X),Xa)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(X),Xb))) ) ).

% def_d_28_prop1
fof(fact_def__d__27__prop1,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1782819631_prop1,X),Xa))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc48112526nd_nis,Xa),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(X),Xa))) ) ).

% def_d_27_prop1
fof(fact_def__d__26__prop1,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1194457456_prop1,X),Xa))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(X),Xa)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Xa),X))) ) ).

% def_d_26_prop1
fof(fact_def__d__25__prop1,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc606095281_prop1(X),Xa),Xb))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(X),Xa)),Xb)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(X),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Xa),Xb)))) ) ).

% def_d_25_prop1
fof(fact_def__n__pl,axiom,
    ! [X] : scratc456915712d_n_pl(X) = aa_TPT1424761345TP_ind(scratc995320569bnd_ap,aa_TPTP_ind_TPTP_ind(scratc918720740d_plus,X)) ).

% def_n_pl
fof(fact_def__plus,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc918720740d_plus,X) = scratc7132981nd_ind(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1944075539d_d_Pi,scratc47587735nd_nat),aTP_Lamm_ac),aa_TPT43085870d_bool(scratc17733107_prop2,X)) ).

% def_plus
fof(fact_def__d__24__g,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc527007787d_24_g,X) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,scratc47587735nd_nat),aTP_Lamm_ad(X)) ).

% def_d_24_g
fof(fact_def__prop4,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc519515911_prop4,X))
    <=> pp(aa_fun171081125l_bool(scratc672422390l_some(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1944075539d_d_Pi,scratc47587735nd_nat),aTP_Lamm_ac)),aa_TPT43085870d_bool(scratc17733107_prop2,X))) ) ).

% def_prop4
fof(fact_def__prop3,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc519515910_prop3(X),Xa),Xb))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,X),Xb)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Xa),Xb))) ) ).

% def_prop3
fof(fact_def__d__24__prop2,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc17733107_prop2,X),Xa))
    <=> pp(scratc1235620061_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Xa),scratc1396187181nd_n_1)),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,X)),aa_TPTP_ind_bool(scratc17733106_prop1,Xa))) ) ).

% def_d_24_prop2
fof(fact_def__d__24__prop1,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc17733106_prop1,X))
    <=> pp(aa_fun171081125l_bool(scratc660593885_n_all,aa_TPT43085870d_bool(aTP_Lamm_ae,X))) ) ).

% def_d_24_prop1
fof(fact_def__d__23__prop1,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc1576854579_prop1,X))
    <=> pp(aa_bool_bool(scratc325205189d_l_or(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,X),scratc1396187181nd_n_1)),aa_fun171081125l_bool(scratc1416247032n_some,aa_TPT43085870d_bool(aTP_Lamm_af,X)))) ) ).

% def_d_23_prop1
fof(fact_def__d__22__prop1,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc988492404_prop1,X))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc48112526nd_nis,aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,X)),X)) ) ).

% def_d_22_prop1
fof(fact_def__i1__s,axiom,
    scratc1800640897d_i1_s = scratc1119368612_d_Sep(scratc47587735nd_nat) ).

% def_i1_s
fof(fact_def__cond2,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc534239046_cond2,X))
    <=> pp(aa_fun171081125l_bool(scratc660593885_n_all,aa_TPT43085870d_bool(aTP_Lamm_ag,X))) ) ).

% def_cond2
fof(fact_def__cond1,axiom,
    scratc534239045_cond1 = aa_TPT43085870d_bool(scratc456456521d_n_in,scratc1396187181nd_n_1) ).

% def_cond1
fof(fact_def__n__1,axiom,
    scratc1396187181nd_n_1 = aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,scratc149728127ptyset) ).

% def_n_1
fof(fact_def__n__one,axiom,
    scratc776386146_n_one = scratc56702012nd_one(scratc47587735nd_nat) ).

% def_n_one
fof(fact_def__n__all,axiom,
    scratc660593885_n_all = scratc2088393399nd_all(scratc47587735nd_nat) ).

% def_n_all
fof(fact_def__n__some,axiom,
    scratc1416247032n_some = scratc672422390l_some(scratc47587735nd_nat) ).

% def_n_some
fof(fact_def__n__in,axiom,
    scratc456456521d_n_in = scratc979961069d_esti(scratc47587735nd_nat) ).

% def_n_in
fof(fact_def__nis,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc48112526nd_nis,X),Xa))
    <=> pp(scratc1343085241_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,X),Xa))) ) ).

% def_nis
fof(fact_def__n__is,axiom,
    scratc456456526d_n_is = scratc937796165d_e_is(scratc47587735nd_nat) ).

% def_n_is
fof(fact_def__nat,axiom,
    scratc47587735nd_nat = aa_fun1431113780TP_ind(scratc1119368612_d_Sep(scratc1836261175_omega),aTP_Lamm_ah) ).

% def_nat
fof(fact_def__indeq2,axiom,
    ! [X,Xa,Xb,Xc,Xd] : scratc502979185indeq2(X,Xa,Xb,Xc,Xd) = aa_TPT1424761345TP_ind(scratc66037249_indeq(X,Xa,Xb),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1340649199d_11_i(X,Xa,Xb),Xc),Xd)) ).

% def_indeq2
fof(fact_def__d__11__i,axiom,
    ! [X,Xa,Xb] : scratc1340649199d_11_i(X,Xa,Xb) = scratc66037249_indeq(X,Xa,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1944075539d_d_Pi,X),aTP_Lamm_ai(Xb))) ).

% def_d_11_i
fof(fact_def__fixfu2,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc719469336fixfu2(X,Xa),Xb),Xc))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_fun987228051d_bool(aTP_Lamm_an(X),Xa),Xb),Xc))) ) ).

% def_fixfu2
fof(fact_def__indeq,axiom,
    ! [X,Xa,Xb,Xc,Xd] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc66037249_indeq(X,Xa,Xb),Xc),Xd) = scratc7132981nd_ind(Xb,aa_TPT43085870d_bool(scratc519515909_prop2(X,Xa,Xb,Xc),Xd)) ).

% def_indeq
fof(fact_def__prop2,axiom,
    ! [X,Xa,Xb,Xc,Xd,Xe] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc519515909_prop2(X,Xa,Xb,Xc),Xd),Xe))
    <=> pp(aa_fun171081125l_bool(scratc672422390l_some(X),aa_TPT43085870d_bool(scratc565055733_prop1(X,Xa,Xb,Xc,Xd),Xe))) ) ).

% def_prop2
fof(fact_def__d__10__prop1,axiom,
    ! [X,Xa,Xb,Xc,Xd,Xe,Xf] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc565055733_prop1(X,Xa,Xb,Xc,Xd),Xe),Xf))
    <=> pp(scratc1235620061_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc979961069d_esti(X),Xf),aa_TPTP_ind_TPTP_ind(scratc1961836750_ecect(X,Xa),Xd)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(Xb),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Xc),Xf)),Xe))) ) ).

% def_d_10_prop1
fof(fact_def__fixfu,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1499638682_fixfu(X,Xa),Xb),Xc))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_fun987228051d_bool(aTP_Lamm_ap(X),Xa),Xb),Xc))) ) ).

% def_fixfu
fof(fact_def__ecect,axiom,
    ! [X,Xa] : scratc1961836750_ecect(X,Xa) = scratc937796160d_e_in(aa_TPTP_ind_TPTP_ind(scratc390608475_power,X),scratc2110288053d_anec(X,Xa)) ).

% def_ecect
fof(fact_def__ectelt,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc1116293985ectelt(X,Xa),Xb) = aa_TPTP_ind_TPTP_ind(scratc1231495862ectset(X,Xa),aa_TPTP_ind_TPTP_ind(scratc1962427141_ecelt(X,Xa),Xb)) ).

% def_ectelt
fof(fact_def__ectset,axiom,
    ! [X,Xa] : scratc1231495862ectset(X,Xa) = scratc57161220nd_out(aa_TPTP_ind_TPTP_ind(scratc390608475_power,X),scratc2110288053d_anec(X,Xa)) ).

% def_ectset
fof(fact_def__ect,axiom,
    ! [X,Xa] : scratc2120849036nd_ect(X,Xa) = aa_fun1431113780TP_ind(scratc1119368612_d_Sep(aa_TPTP_ind_TPTP_ind(scratc390608475_power,X)),scratc2110288053d_anec(X,Xa)) ).

% def_ect
fof(fact_def__anec,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(scratc2110288053d_anec(X,Xa),Xb))
    <=> pp(aa_fun171081125l_bool(scratc672422390l_some(X),aa_TPT43085870d_bool(scratc2120849032nd_ecp(X,Xa),Xb))) ) ).

% def_anec
fof(fact_def__ecp,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2120849032nd_ecp(X,Xa),Xb),Xc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(aa_TPTP_ind_TPTP_ind(scratc390608475_power,X)),Xb),aa_TPTP_ind_TPTP_ind(scratc1962427141_ecelt(X,Xa),Xc))) ) ).

% def_ecp
fof(fact_def__ecelt,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc1962427141_ecelt(X,Xa),Xb) = aa_fun1431113780TP_ind(scratc1119368612_d_Sep(X),aa_TPT43085870d_bool(Xa,Xb)) ).

% def_ecelt
fof(fact_def__unmore,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc1337613208unmore(X,Xa),Xb) = aa_fun1431113780TP_ind(scratc1119368612_d_Sep(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ar(X),Xa),Xb)) ).

% def_unmore
fof(fact_def__nissetprop,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1345559031etprop(X,Xa),Xb),Xc))
    <=> pp(scratc1235620061_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc979961069d_esti(X),Xc),Xa),scratc1343085241_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc979961069d_esti(X),Xc),Xb)))) ) ).

% def_nissetprop
fof(fact_def__st__disj,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1842147815t_disj(X),Xa),Xb))
    <=> pp(aa_fun171081125l_bool(scratc2088393399nd_all(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_as(X),Xa),Xb))) ) ).

% def_st_disj
fof(fact_def__incl,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1912403512d_incl(X),Xa),Xb))
    <=> pp(aa_fun171081125l_bool(scratc2088393399nd_all(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_at(X),Xa),Xb))) ) ).

% def_incl
fof(fact_def__nonempty,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc435323114nempty,X),Xa))
    <=> pp(aa_fun171081125l_bool(scratc672422390l_some(X),aa_TPT43085870d_bool(aTP_Lamm_au(X),Xa))) ) ).

% def_nonempty
fof(fact_def__empty,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1269765891_empty,X),Xa))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X)),scratc48506115nd_non(X,aa_TPT43085870d_bool(aTP_Lamm_au(X),Xa)))) ) ).

% def_empty
fof(fact_def__esti,axiom,
    ! [X] : scratc979961069d_esti(X) = scratc995845359bnd_in ).

% def_esti
fof(fact_def__r__ec,axiom,
    ! [X,Xa] :
      ( scratc719483974d_r_ec(X,Xa)
    <=> ( pp(X)
       => pp(scratc1343085241_d_not(Xa)) ) ) ).

% def_r_ec
fof(fact_def__changef,axiom,
    ! [X,Xa,Xb,Xc,Xd] : aa_TPTP_ind_TPTP_ind(scratc56594156hangef(X,Xa,Xb,Xc),Xd) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,X),aa_TPT1424761345TP_ind(aa_TPT1791839040TP_ind(aa_TPT1781712639TP_ind(aTP_Lamm_av(X),Xb),Xc),Xd)) ).

% def_changef
fof(fact_def__wissel,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc1099522659wissel(X,Xa),Xb) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,X),scratc1284928718sel_wb(X,Xa,Xb)) ).

% def_wissel
fof(fact_def__wissel__wb,axiom,
    ! [X,Xa,Xb,Xc] : aa_TPTP_ind_TPTP_ind(scratc1284928718sel_wb(X,Xa,Xb),Xc) = aa_TPTP_ind_TPTP_ind(scratc7526576nd_ite(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(X),Xc),Xb),X,Xa),aa_TPTP_ind_TPTP_ind(scratc1284928717sel_wa(X,Xa,Xb),Xc)) ).

% def_wissel_wb
fof(fact_def__wissel__wa,axiom,
    ! [X,Xa,Xb,Xc] : aa_TPTP_ind_TPTP_ind(scratc1284928717sel_wa(X,Xa,Xb),Xc) = aa_TPTP_ind_TPTP_ind(scratc7526576nd_ite(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(X),Xc),Xa),X,Xb),Xc) ).

% def_wissel_wa
fof(fact_def__ite,axiom,
    ! [X,Xa,Xb,Xc] : aa_TPTP_ind_TPTP_ind(scratc7526576nd_ite(X,Xa,Xb),Xc) = scratc7132981nd_ind(Xa,aa_TPT43085870d_bool(scratc519515908_prop1(X,Xa,Xb),Xc)) ).

% def_ite
fof(fact_def__prop1,axiom,
    ! [X,Xa,Xb,Xc,Xd] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc519515908_prop1(X,Xa,Xb),Xc),Xd))
    <=> pp(scratc1235620061_d_and(aa_bool_bool(aa_boo1142376798l_bool(scratc7067394nd_imp,X),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(Xa),Xd),Xb)),aa_bool_bool(aa_boo1142376798l_bool(scratc7067394nd_imp,scratc1343085241_d_not(X)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(Xa),Xd),Xc)))) ) ).

% def_prop1
fof(fact_def__second,axiom,
    ! [X,Xa] : scratc1858738590second(X,Xa) = scratc519122314_proj1 ).

% def_second
fof(fact_def__first,axiom,
    ! [X,Xa] : scratc1450922438_first(X,Xa) = scratc519122313_proj0 ).

% def_first
fof(fact_def__d__pair,axiom,
    ! [X,Xa] : scratc1681889716d_pair(X,Xa) = scratc827056996d_pair ).

% def_d_pair
fof(fact_def__out,axiom,
    ! [X,Xa] : scratc57161220nd_out(X,Xa) = scratc1136799220d_soft(aa_fun1431113780TP_ind(scratc1119368612_d_Sep(X),Xa),X,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,aa_fun1431113780TP_ind(scratc1119368612_d_Sep(X),Xa)),scratc937796160d_e_in(X,Xa))) ).

% def_out
fof(fact_def__e__in,axiom,
    ! [X,Xa,Xb] :
      ( gg_TPTP_ind(Xb)
     => aa_TPTP_ind_TPTP_ind(scratc937796160d_e_in(X,Xa),Xb) = Xb ) ).

% def_e_in
fof(fact_def__inj__h,axiom,
    ! [X,Xa,Xb,Xc,Xd] : aa_TPTP_ind_TPTP_ind(scratc840785325_inj_h(X,Xa,Xb,Xc),Xd) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,X),aa_TPT1424761345TP_ind(aTP_Lamm_aw(Xc),Xd)) ).

% def_inj_h
fof(fact_def__invf,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc1913649887d_invf(X,Xa),Xb) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,Xa),scratc1136799220d_soft(X,Xa,Xb)) ).

% def_invf
fof(fact_def__bijective,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1623117595ective(X),Xa),Xb))
    <=> pp(scratc1235620061_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1439398365ective(X),Xa),Xb),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc881304326ective(X),Xa),Xb))) ) ).

% def_bijective
fof(fact_def__surjective,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc881304326ective(X),Xa),Xb))
    <=> pp(aa_fun171081125l_bool(scratc2088393399nd_all(Xa),aa_TPT43085870d_bool(scratc1408280369_image(X,Xa),Xb))) ) ).

% def_surjective
fof(fact_def__inverse,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc42635206nverse(X,Xa),Xb) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,Xa),aa_TPT1424761345TP_ind(aa_TPT1791839040TP_ind(aTP_Lamm_ax(X),Xa),Xb)) ).

% def_inverse
fof(fact_def__soft,axiom,
    ! [X,Xa,Xb,Xc] : aa_TPTP_ind_TPTP_ind(scratc1136799220d_soft(X,Xa,Xb),Xc) = scratc7132981nd_ind(X,aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ay(Xa),Xb),Xc)) ).

% def_soft
fof(fact_def__tofs,axiom,
    ! [X,Xa] : scratc1917386418d_tofs(X,Xa) = scratc995320569bnd_ap ).

% def_tofs
fof(fact_def__image,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1408280369_image(X,Xa),Xb),Xc))
    <=> pp(aa_fun171081125l_bool(scratc672422390l_some(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ay(Xa),Xb),Xc))) ) ).

% def_image
fof(fact_def__injective,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1439398365ective(X),Xa),Xb))
    <=> pp(aa_fun171081125l_bool(scratc2088393399nd_all(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ba(X),Xa),Xb))) ) ).

% def_injective
fof(fact_def__ind,axiom,
    ! [X,Xa] : scratc7132981nd_ind(X,Xa) = scratc2121701822nd_eps(aa_fun1584354236d_bool(aTP_Lamm_bb(X),Xa)) ).

% def_ind
fof(fact_def__one,axiom,
    ! [X,Xa] :
      ( pp(aa_fun171081125l_bool(scratc56702012nd_one(X),Xa))
    <=> pp(scratc1235620061_d_and(scratc997820912_amone(X,Xa),aa_fun171081125l_bool(scratc672422390l_some(X),Xa))) ) ).

% def_one
fof(fact_def__amone,axiom,
    ! [X,Xa] :
      ( pp(scratc997820912_amone(X,Xa))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X)),aa_fun1584354236d_bool(aTP_Lamm_bd(X),Xa))) ) ).

% def_amone
fof(fact_def__e__is,axiom,
    ! [X] : scratc937796165d_e_is(X) = fequal_TPTP_ind ).

% def_e_is
fof(fact_def__orec3,axiom,
    ! [X,Xa,Xb] :
      ( scratc1443967432_orec3(X,Xa,Xb)
    <=> pp(scratc1235620061_d_and(scratc56964358nd_or3(X,Xa,Xb),scratc2120848971nd_ec3(X,Xa,Xb))) ) ).

% def_orec3
fof(fact_def__ec3,axiom,
    ! [X,Xa,Xb] :
      ( pp(scratc2120848971nd_ec3(X,Xa,Xb))
    <=> scratc2110222406d_and3(scratc324549184d_l_ec(X,Xa),scratc324549184d_l_ec(Xa,Xb),scratc324549184d_l_ec(Xb,X)) ) ).

% def_ec3
fof(fact_def__and3,axiom,
    ! [X,Xa,Xb] :
      ( scratc2110222406d_and3(X,Xa,Xb)
    <=> pp(scratc1235620061_d_and(X,scratc1235620061_d_and(Xa,Xb))) ) ).

% def_and3
fof(fact_def__or3,axiom,
    ! [X,Xa,Xb] :
      ( pp(scratc56964358nd_or3(X,Xa,Xb))
    <=> pp(aa_bool_bool(scratc325205189d_l_or(X),aa_bool_bool(scratc325205189d_l_or(Xa),Xb))) ) ).

% def_or3
fof(fact_def__l__some,axiom,
    ! [X,Xa] :
      ( pp(aa_fun171081125l_bool(scratc672422390l_some(X),Xa))
    <=> pp(scratc1343085241_d_not(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X)),scratc48506115nd_non(X,Xa)))) ) ).

% def_l_some
fof(fact_def__non,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(scratc48506115nd_non(X,Xa),Xb))
    <=> pp(scratc1343085241_d_not(aa_TPTP_ind_bool(Xa,Xb))) ) ).

% def_non
fof(fact_def__all,axiom,
    ! [X] : scratc2088393399nd_all(X) = scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X)) ).

% def_all
fof(fact_def__l__iff,axiom,
    ! [X,Xa] :
      ( scratc2129761511_l_iff(X,Xa)
    <=> pp(scratc1235620061_d_and(aa_bool_bool(aa_boo1142376798l_bool(scratc7067394nd_imp,X),Xa),aa_bool_bool(aa_boo1142376798l_bool(scratc7067394nd_imp,Xa),X))) ) ).

% def_l_iff
fof(fact_def__orec,axiom,
    ! [X,Xa] :
      ( scratc186652971d_orec(X,Xa)
    <=> pp(scratc1235620061_d_and(aa_bool_bool(scratc325205189d_l_or(X),Xa),scratc324549184d_l_ec(X,Xa))) ) ).

% def_orec
fof(fact_def__l__or,axiom,
    ! [X] : scratc325205189d_l_or(X) = aa_boo1142376798l_bool(scratc7067394nd_imp,scratc1343085241_d_not(X)) ).

% def_l_or
fof(fact_def__d__and,axiom,
    ! [X,Xa] :
      ( pp(scratc1235620061_d_and(X,Xa))
    <=> pp(scratc1343085241_d_not(scratc324549184d_l_ec(X,Xa))) ) ).

% def_d_and
fof(fact_def__l__ec,axiom,
    ! [X,Xa] :
      ( pp(scratc324549184d_l_ec(X,Xa))
    <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc7067394nd_imp,X),scratc1343085241_d_not(Xa))) ) ).

% def_l_ec
fof(fact_def__obvious,axiom,
    ( scratc907717853bvious
  <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc7067394nd_imp,fFalse),fFalse)) ) ).

% def_obvious
fof(fact_def__wel,axiom,
    ! [X] :
      ( scratc122203668nd_wel(X)
    <=> pp(scratc1343085241_d_not(scratc1343085241_d_not(X))) ) ).

% def_wel
fof(fact_def__d__not,axiom,
    ! [X] :
      ( pp(scratc1343085241_d_not(X))
    <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc7067394nd_imp,X),fFalse)) ) ).

% def_d_not
fof(fact_def__imp,axiom,
    scratc7067394nd_imp = fimplies ).

% def_imp
fof(fact_def__d__Pi,axiom,
    ! [X,Xa] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1944075539d_d_Pi,X),Xa) = aa_fun1431113780TP_ind(scratc1119368612_d_Sep(aa_TPTP_ind_TPTP_ind(scratc390608475_power,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,X),aTP_Lamm_be(Xa)))),aa_fun1913827119d_bool(aTP_Lamm_bf(X),Xa)) ).

% def_d_Pi
fof(fact_def__pair__p,axiom,
    ! [X] :
      ( gg_TPTP_ind(X)
     => ( pp(aa_TPTP_ind_bool(scratc501137484pair_p,X))
      <=> aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc827056996d_pair,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,X),scratc149728127ptyset)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,X),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,scratc149728127ptyset))) = X ) ) ).

% def_pair_p
fof(fact_def__ap,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,X),Xa) = aa_fun277296641TP_ind(scratc1909019605eplSep(X,aa_TPT43085870d_bool(aTP_Lamm_bg,Xa)),scratc519122314_proj1) ).

% def_ap
fof(fact_def__setprod,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc278310607etprod(X),Xa) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,X),aTP_Lamm_ai(Xa)) ).

% def_setprod
fof(fact_def__d__Sigma,axiom,
    ! [X,Xa] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,X),Xa) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc515168679munion,X),aTP_Lamm_bh(Xa)) ).

% def_d_Sigma
fof(fact_def__proj1,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc519122314_proj1,X) = aa_fun277296641TP_ind(scratc1909019605eplSep(X,aTP_Lamm_bi),scratc1136482007_d_Unj) ).

% def_proj1
fof(fact_def__proj0,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc519122313_proj0,X) = aa_fun277296641TP_ind(scratc1909019605eplSep(X,aTP_Lamm_bj),scratc1136482007_d_Unj) ).

% def_proj0
fof(fact_def__pair,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc827056996d_pair,X),Xa) = aa_TPTP_ind_TPTP_ind(scratc1509025778nunion(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc274252953d_repl,X),scratc1411225125d_Inj0)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc274252953d_repl,Xa),scratc1411225126d_Inj1)) ).

% def_pair
fof(fact_def__d__Unj,axiom,
    scratc1136482007_d_Unj = scratc1636783185In_rec(aTP_Lamm_bk) ).

% def_d_Unj
fof(fact_def__d__Inj0,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc1411225125d_Inj0,X) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc274252953d_repl,X),scratc1411225126d_Inj1) ).

% def_d_Inj0
fof(fact_def__d__Inj1,axiom,
    scratc1411225126d_Inj1 = scratc1636783185In_rec(aTP_Lamm_bl) ).

% def_d_Inj1
fof(fact_def__omega,axiom,
    scratc1836261175_omega = aa_fun1431113780TP_ind(scratc1119368612_d_Sep(aa_TPTP_ind_TPTP_ind(scratc420381799univof,scratc149728127ptyset)),scratc2134808665_nat_p) ).

% def_omega
fof(fact_def__nat__p,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc2134808665_nat_p,X))
    <=> ! [X1] :
          ( pp(aa_TPTP_ind_bool(X1,scratc149728127ptyset))
         => ( ! [X2] :
                ( gg_TPTP_ind(X2)
               => ( pp(aa_TPTP_ind_bool(X1,X2))
                 => pp(aa_TPTP_ind_bool(X1,aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,X2))) ) )
           => pp(aa_TPTP_ind_bool(X1,X)) ) ) ) ).

% def_nat_p
fof(fact_def__ordsucc,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,X) = aa_TPTP_ind_TPTP_ind(scratc1509025778nunion(X),aa_TPTP_ind_TPTP_ind(scratc586117449d_Sing,X)) ).

% def_ordsucc
fof(fact_def__d__In__rec,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc1636783185In_rec(X),Xa) = scratc2121701822nd_eps(aa_TPT43085870d_bool(scratc503222518_rec_G(X),Xa)) ).

% def_d_In_rec
fof(fact_def__d__In__rec__G,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc503222518_rec_G(X),Xa),Xb))
    <=> ! [X3] :
          ( ! [X4,X5] :
              ( gg_TPTP_ind(X4)
             => ( ! [X6] :
                    ( gg_TPTP_ind(X6)
                   => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X6),X4))
                     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(X3,X6),aa_TPTP_ind_TPTP_ind(X5,X6))) ) )
               => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(X3,X4),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(X,X4),X5))) ) )
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(X3,Xa),Xb)) ) ) ).

% def_d_In_rec_G
fof(fact_def__setminus,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc1425311320tminus(X),Xa) = aa_fun1431113780TP_ind(scratc1119368612_d_Sep(X),aa_TPT43085870d_bool(aTP_Lamm_bm,Xa)) ).

% def_setminus
fof(fact_def__d__ReplSep,axiom,
    ! [X,Xa] : scratc1909019605eplSep(X,Xa) = aa_TPT494704832TP_ind(scratc274252953d_repl,aa_fun1431113780TP_ind(scratc1119368612_d_Sep(X),Xa)) ).

% def_d_ReplSep
fof(fact_def__d__Sep,axiom,
    ! [X,Xa] : aa_fun1431113780TP_ind(scratc1119368612_d_Sep(X),Xa) = aa_TPTP_ind_TPTP_ind(scratc995845351bnd_if(fEx_TPTP_ind(cOMBS_2003118649l_bool(cOMBB_658106424TP_ind(fconj,aa_TPT43085870d_bool(cOMBC_1555011498d_bool(scratc995845359bnd_in),X)),Xa)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc274252953d_repl,X),aa_fun1235454963TP_ind(aTP_Lamm_bn(X),Xa))),scratc149728127ptyset) ).

% def_d_Sep
fof(fact_def__famunion,axiom,
    ! [X,Xa] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc515168679munion,X),Xa) = aa_TPTP_ind_TPTP_ind(scratc897870341_union,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc274252953d_repl,X),Xa)) ).

% def_famunion
fof(fact_def__binunion,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc1509025778nunion(X),Xa) = aa_TPTP_ind_TPTP_ind(scratc897870341_union,aa_TPTP_ind_TPTP_ind(scratc8352693_UPair(X),Xa)) ).

% def_binunion
fof(fact_def__d__Sing,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc586117449d_Sing,X) = aa_TPTP_ind_TPTP_ind(scratc8352693_UPair(X),X) ).

% def_d_Sing
fof(fact_def__d__UPair,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc8352693_UPair(X),Xa) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc274252953d_repl,aa_TPTP_ind_TPTP_ind(scratc390608475_power,aa_TPTP_ind_TPTP_ind(scratc390608475_power,scratc149728127ptyset))),aa_TPT1424761345TP_ind(aTP_Lamm_bo(X),Xa)) ).

% def_d_UPair
fof(fact_def__nIn,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc46013353nd_nIn,X),Xa))
    <=> ~ pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X),Xa)) ) ).

% def_nIn
fof(fact_def__if,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc995845351bnd_if(X,Xa),Xb) = scratc2121701822nd_eps(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_bp(X),Xa),Xb)) ).

% def_if
fof(fact_def__d__ZF__closed,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc801746418closed,X))
    <=> ( pp(aa_TPTP_ind_bool(scratc1267447841closed,X))
        & pp(aa_TPTP_ind_bool(scratc1432180855closed,X))
        & pp(aa_TPTP_ind_bool(scratc212847509closed,X)) ) ) ).

% def_d_ZF_closed
fof(fact_def__d__Repl__closed,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc212847509closed,X))
    <=> ! [X1] :
          ( gg_TPTP_ind(X1)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X1),X))
           => ! [X2] :
                ( ! [X3] :
                    ( gg_TPTP_ind(X3)
                   => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X3),X1))
                     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,aa_TPTP_ind_TPTP_ind(X2,X3)),X)) ) )
               => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc274252953d_repl,X1),X2)),X)) ) ) ) ) ).

% def_d_Repl_closed
fof(fact_def__d__Power__closed,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc1432180855closed,X))
    <=> ! [X1] :
          ( gg_TPTP_ind(X1)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X1),X))
           => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,aa_TPTP_ind_TPTP_ind(scratc390608475_power,X1)),X)) ) ) ) ).

% def_d_Power_closed
fof(fact_def__d__Union__closed,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc1267447841closed,X))
    <=> ! [X1] :
          ( gg_TPTP_ind(X1)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X1),X))
           => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,aa_TPTP_ind_TPTP_ind(scratc897870341_union,X1)),X)) ) ) ) ).

% def_d_Union_closed
fof(fact_def__d__Subq,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc684468331d_Subq,X),Xa))
    <=> ! [X2] :
          ( gg_TPTP_ind(X2)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X2),X))
           => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X2),Xa)) ) ) ) ).

% def_d_Subq
fof(fact_def__all__of,axiom,
    ! [X,Xa] :
      ( pp(aa_fun171081125l_bool(scratc1561761582all_of(X),Xa))
    <=> ! [X2] :
          ( gg_TPTP_ind(X2)
         => ( scratc100680811_is_of(X2,X)
           => pp(aa_TPTP_ind_bool(Xa,X2)) ) ) ) ).

% def_all_of
fof(fact_def__is__of,axiom,
    ! [X,Xa] :
      ( scratc100680811_is_of(X,Xa)
    <=> pp(aa_TPTP_ind_bool(Xa,X)) ) ).

% def_is_of
fof(fact_satz25,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_br)) ).

% satz25
fof(fact_satz24c,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_bs)) ).

% satz24c
fof(fact_satz24b,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_bt)) ).

% satz24b
fof(fact_satz24a,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(scratc1039382957lessis,scratc1396187181nd_n_1))) ).

% satz24a
fof(fact_satz24,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_bu)) ).

% satz24
fof(fact_satz23a,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_by)) ).

% satz23a
fof(fact_satz23,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_cc)) ).

% satz23
fof(fact_satz22d,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_cg)) ).

% satz22d
fof(fact_satz22c,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_ck)) ).

% satz22c
fof(fact_satz22b,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_co)) ).

% satz22b
fof(fact_satz22a,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_cs)) ).

% satz22a
fof(fact_satz21a,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_cw)) ).

% satz21a
fof(fact_satz21,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_da)) ).

% satz21
fof(fact_satz20f,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_dd)) ).

% satz20f
fof(fact_satz20e,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_dg)) ).

% satz20e
fof(fact_satz20d,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_dj)) ).

% satz20d
fof(fact_satz20c,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_dm)) ).

% satz20c
fof(fact_satz20b,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_dp)) ).

% satz20b
fof(fact_satz20a,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_ds)) ).

% satz20a
fof(fact_satz19o,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_dv)) ).

% satz19o
fof(fact_satz19n,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_dy)) ).

% satz19n
fof(fact_satz19m,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_eb)) ).

% satz19m
fof(fact_satz19l,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_ee)) ).

% satz19l
fof(fact_satz19k,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_ei)) ).

% satz19k
fof(fact_satz19j,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_em)) ).

% satz19j
fof(fact_satz19h,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_eq)) ).

% satz19h
fof(fact_satz19g,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_eu)) ).

% satz19g
fof(fact_satz19f,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_ex)) ).

% satz19f
fof(fact_satz19e,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_fa)) ).

% satz19e
fof(fact_satz19d,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_fd)) ).

% satz19d
fof(fact_satz19c,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_fg)) ).

% satz19c
fof(fact_satz19b,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_fj)) ).

% satz19b
fof(fact_satz19a,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_fm)) ).

% satz19a
fof(fact_satz18c,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_fn)) ).

% satz18c
fof(fact_satz18b,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_fo)) ).

% satz18b
fof(fact_satz18a,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_fq)) ).

% satz18a
fof(fact_satz18,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_fs)) ).

% satz18
fof(fact_satz17,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_fv)) ).

% satz17
fof(fact_satz16d,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_fy)) ).

% satz16d
fof(fact_satz16c,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_gb)) ).

% satz16c
fof(fact_satz16b,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_ge)) ).

% satz16b
fof(fact_satz16a,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_gh)) ).

% satz16a
fof(fact_satz15,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_gk)) ).

% satz15
fof(fact_satz10k,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_gm)) ).

% satz10k
fof(fact_satz10j,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_go)) ).

% satz10j
fof(fact_satz10h,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_gq)) ).

% satz10h
fof(fact_satz10g,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_gs)) ).

% satz10g
fof(fact_satz10f,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_gu)) ).

% satz10f
fof(fact_satz10e,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_gw)) ).

% satz10e
fof(fact_satz10d,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_gy)) ).

% satz10d
fof(fact_satz10c,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_ha)) ).

% satz10c
fof(fact_satz14,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_hc)) ).

% satz14
fof(fact_satz13,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_he)) ).

% satz13
fof(fact_satz12,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_hg)) ).

% satz12
fof(fact_satz11,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_hi)) ).

% satz11
fof(fact_satz10b,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_hk)) ).

% satz10b
fof(fact_satz10a,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_hm)) ).

% satz10a
fof(fact_satz10,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_ho)) ).

% satz10
fof(fact_satz9b,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_hq)) ).

% satz9b
fof(fact_satz9a,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_hs)) ).

% satz9a
fof(fact_satz9,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_hw)) ).

% satz9
fof(fact_satz8b,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_hy)) ).

% satz8b
fof(fact_satz8a,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_ib)) ).

% satz8a
fof(fact_satz8,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_ie)) ).

% satz8
fof(fact_satz7,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_ig)) ).

% satz7
fof(fact_satz6,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_ii)) ).

% satz6
fof(fact_satz5,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_il)) ).

% satz5
fof(fact_satz4h,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_in)) ).

% satz4h
fof(fact_satz4g,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_io)) ).

% satz4g
fof(fact_satz4f,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_iq)) ).

% satz4f
fof(fact_satz4e,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_ir)) ).

% satz4e
fof(fact_satz4d,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_it)) ).

% satz4d
fof(fact_satz4c,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_iu)) ).

% satz4c
fof(fact_satz4b,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_iw)) ).

% satz4b
fof(fact_satz4a,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_ix)) ).

% satz4a
fof(fact_satz4,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_iz)) ).

% satz4
fof(fact_satz3a,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_ja)) ).

% satz3a
fof(fact_satz3,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_jb)) ).

% satz3
fof(fact_satz2,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_jc)) ).

% satz2
fof(fact_satz1,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_je)) ).

% satz1
fof(fact_n__ax5,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_jf),aTP_Lamm_jh)) ).

% n_ax5
fof(fact_n__ax4,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_jj)) ).

% n_ax4
fof(fact_n__ax3,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_jk)) ).

% n_ax3
fof(fact_suc__p,axiom,
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_jl)) ).

% suc_p
fof(fact_n__1__p,axiom,
    scratc100680811_is_of(scratc1396187181nd_n_1,aTP_Lamm_a) ).

% n_1_p
fof(fact_isseti,axiom,
    ! [X0] : pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_jm,X0)),aa_TPT43085870d_bool(aTP_Lamm_jo,X0))) ).

% isseti
fof(fact_estie,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X0)),aa_fun1584354236d_bool(aTP_Lamm_jp(X0),X12))) ).

% estie
fof(fact_estii,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X0)),aa_fun1584354236d_bool(aTP_Lamm_jq(X0),X12))) ).

% estii
fof(fact_setof__p,axiom,
    ! [X0,X12] : scratc100680811_is_of(aa_fun1431113780TP_ind(scratc1119368612_d_Sep(X0),X12),aa_TPT43085870d_bool(aTP_Lamm_jm,X0)) ).

% setof_p
fof(fact_secondis1,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X0)),aa_TPT43085870d_bool(aTP_Lamm_js(X0),X12))) ).

% secondis1
fof(fact_firstis1,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X0)),aa_TPT43085870d_bool(aTP_Lamm_ju(X0),X12))) ).

% firstis1
fof(fact_pairis1,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_jv(X0),X12)),aa_TPT43085870d_bool(aTP_Lamm_jw(X0),X12))) ).

% pairis1
fof(fact_second__p,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_jv(X0),X12)),aa_TPT43085870d_bool(aTP_Lamm_jx(X0),X12))) ).

% second_p
fof(fact_first__p,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_jv(X0),X12)),aa_TPT43085870d_bool(aTP_Lamm_jy(X0),X12))) ).

% first_p
fof(fact_e__pair__p,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X0)),aa_TPT43085870d_bool(aTP_Lamm_ka(X0),X12))) ).

% e_pair_p
fof(fact_otax2,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X0)),aa_fun1584354236d_bool(aTP_Lamm_kb(X0),X12))) ).

% otax2
fof(fact_otax1,axiom,
    ! [X0,X12] : pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1439398365ective(aa_fun1431113780TP_ind(scratc1119368612_d_Sep(X0),X12)),X0),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,aa_fun1431113780TP_ind(scratc1119368612_d_Sep(X0),X12)),scratc937796160d_e_in(X0,X12)))) ).

% otax1
fof(fact_e__inp,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_fun1584354236d_bool(aTP_Lamm_kc(X0),X12)),aa_fun1584354236d_bool(aTP_Lamm_kd(X0),X12))) ).

% e_inp
fof(fact_e__in__p,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_fun1584354236d_bool(aTP_Lamm_kc(X0),X12)),aa_fun1584354236d_bool(aTP_Lamm_ke(X0),X12))) ).

% e_in_p
fof(fact_e__fisi,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_kf(X0),X12)),aa_TPT43085870d_bool(aTP_Lamm_ki(X0),X12))) ).

% e_fisi
fof(fact_oneax,axiom,
    ! [X0,X12] :
      ( pp(aa_fun171081125l_bool(scratc56702012nd_one(X0),X12))
     => pp(aa_TPTP_ind_bool(X12,scratc7132981nd_ind(X0,X12))) ) ).

% oneax
fof(fact_ind__p,axiom,
    ! [X0,X12] :
      ( pp(aa_fun171081125l_bool(scratc56702012nd_one(X0),X12))
     => scratc100680811_is_of(scratc7132981nd_ind(X0,X12),aa_TPT43085870d_bool(aTP_Lamm_aj,X0)) ) ).

% ind_p
fof(fact_e__isp,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X0)),aa_fun1584354236d_bool(aTP_Lamm_kk(X0),X12))) ).

% e_isp
fof(fact_refis,axiom,
    ! [X0] : pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X0)),aa_TPT43085870d_bool(aTP_Lamm_kl,X0))) ).

% refis
fof(fact_l__et,axiom,
    ! [X0] :
      ( scratc122203668nd_wel(X0)
     => pp(X0) ) ).

% l_et
fof(fact_k__If__In__then__E,axiom,
    ! [X0,X12,X22,X32] :
      ( pp(X0)
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc995845351bnd_if(X0,X22),X32)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X12),X22)) ) ) ).

% k_If_In_then_E
fof(fact_k__If__In__01,axiom,
    ! [X0,X12,X22] :
      ( ( pp(X0)
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X12),X22)) )
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,aa_TPTP_ind_TPTP_ind(scratc995845351bnd_if(X0,X12),scratc149728127ptyset)),aa_TPTP_ind_TPTP_ind(scratc995845351bnd_if(X0,X22),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,scratc149728127ptyset)))) ) ).

% k_If_In_01
fof(fact_xi__ext,axiom,
    ! [X0,X12,X22] :
      ( ! [X33] :
          ( gg_TPTP_ind(X33)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X33),X0))
           => aa_TPTP_ind_TPTP_ind(X12,X33) = aa_TPTP_ind_TPTP_ind(X22,X33) ) )
     => aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,X0),X12) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,X0),X22) ) ).

% xi_ext
fof(fact_k__Pi__ext,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X22)
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1944075539d_d_Pi,X0),X12)))
       => ! [X32] :
            ( gg_TPTP_ind(X32)
           => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X32),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1944075539d_d_Pi,X0),X12)))
             => ( ! [X42] :
                    ( gg_TPTP_ind(X42)
                   => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X42),X0))
                     => aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,X22),X42) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,X32),X42) ) )
               => X22 = X32 ) ) ) ) ) ).

% k_Pi_ext
fof(fact_ap__Pi,axiom,
    ! [X0,X12,X22,X32] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1944075539d_d_Pi,X0),X12)))
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X32),X0))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,X22),X32)),aa_TPTP_ind_TPTP_ind(X12,X32))) ) ) ).

% ap_Pi
fof(fact_lam__Pi,axiom,
    ! [X0,X12,X22] :
      ( ! [X33] :
          ( gg_TPTP_ind(X33)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X33),X0))
           => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,aa_TPTP_ind_TPTP_ind(X22,X33)),aa_TPTP_ind_TPTP_ind(X12,X33))) ) )
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,X0),X22)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1944075539d_d_Pi,X0),X12))) ) ).

% lam_Pi
fof(fact_beta,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X22),X0))
     => aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,X0),X12)),X22) = aa_TPTP_ind_TPTP_ind(X12,X22) ) ).

% beta
fof(fact_proj1__Sigma,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,X0),X12)))
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,aa_TPTP_ind_TPTP_ind(scratc519122314_proj1,X22)),aa_TPTP_ind_TPTP_ind(X12,aa_TPTP_ind_TPTP_ind(scratc519122313_proj0,X22)))) ) ).

% proj1_Sigma
fof(fact_proj0__Sigma,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,X0),X12)))
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,aa_TPTP_ind_TPTP_ind(scratc519122313_proj0,X22)),X0)) ) ).

% proj0_Sigma
fof(fact_proj__Sigma__eta,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X22)
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,X0),X12)))
       => aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc827056996d_pair,aa_TPTP_ind_TPTP_ind(scratc519122313_proj0,X22)),aa_TPTP_ind_TPTP_ind(scratc519122314_proj1,X22)) = X22 ) ) ).

% proj_Sigma_eta
fof(fact_k__Sigma__eta__proj0__proj1,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X22)
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,X0),X12)))
       => ( aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc827056996d_pair,aa_TPTP_ind_TPTP_ind(scratc519122313_proj0,X22)),aa_TPTP_ind_TPTP_ind(scratc519122314_proj1,X22)) = X22
          & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,aa_TPTP_ind_TPTP_ind(scratc519122313_proj0,X22)),X0))
          & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,aa_TPTP_ind_TPTP_ind(scratc519122314_proj1,X22)),aa_TPTP_ind_TPTP_ind(X12,aa_TPTP_ind_TPTP_ind(scratc519122313_proj0,X22)))) ) ) ) ).

% k_Sigma_eta_proj0_proj1
fof(fact_pair__Sigma,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X22),X0))
     => ! [X32] :
          ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X32),aa_TPTP_ind_TPTP_ind(X12,X22)))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc827056996d_pair,X22),X32)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,X0),X12))) ) ) ).

% pair_Sigma
fof(fact_proj1__pair__eq,axiom,
    ! [X0,X12] :
      ( gg_TPTP_ind(X12)
     => aa_TPTP_ind_TPTP_ind(scratc519122314_proj1,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc827056996d_pair,X0),X12)) = X12 ) ).

% proj1_pair_eq
fof(fact_proj0__pair__eq,axiom,
    ! [X0,X12] :
      ( gg_TPTP_ind(X0)
     => aa_TPTP_ind_TPTP_ind(scratc519122313_proj0,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc827056996d_pair,X0),X12)) = X0 ) ).

% proj0_pair_eq
fof(fact_nat__p__omega,axiom,
    ! [X0] :
      ( pp(aa_TPTP_ind_bool(scratc2134808665_nat_p,X0))
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X0),scratc1836261175_omega)) ) ).

% nat_p_omega
fof(fact_omega__nat__p,axiom,
    ! [X0] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X0),scratc1836261175_omega))
     => pp(aa_TPTP_ind_bool(scratc2134808665_nat_p,X0)) ) ).

% omega_nat_p
fof(fact_nat__inv,axiom,
    ! [X0] :
      ( gg_TPTP_ind(X0)
     => ( pp(aa_TPTP_ind_bool(scratc2134808665_nat_p,X0))
       => ( X0 = scratc149728127ptyset
          | ? [X13] :
              ( gg_TPTP_ind(X13)
              & pp(aa_TPTP_ind_bool(scratc2134808665_nat_p,X13))
              & X0 = aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,X13) ) ) ) ) ).

% nat_inv
fof(fact_nat__ind,axiom,
    ! [X0] :
      ( pp(aa_TPTP_ind_bool(X0,scratc149728127ptyset))
     => ( ! [X13] :
            ( gg_TPTP_ind(X13)
           => ( pp(aa_TPTP_ind_bool(scratc2134808665_nat_p,X13))
             => ( pp(aa_TPTP_ind_bool(X0,X13))
               => pp(aa_TPTP_ind_bool(X0,aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,X13))) ) ) )
       => ! [X12] :
            ( pp(aa_TPTP_ind_bool(scratc2134808665_nat_p,X12))
           => pp(aa_TPTP_ind_bool(X0,X12)) ) ) ) ).

% nat_ind
fof(fact_nat__1,axiom,
    pp(aa_TPTP_ind_bool(scratc2134808665_nat_p,aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,scratc149728127ptyset))) ).

% nat_1
fof(fact_nat__ordsucc,axiom,
    ! [X0] :
      ( pp(aa_TPTP_ind_bool(scratc2134808665_nat_p,X0))
     => pp(aa_TPTP_ind_bool(scratc2134808665_nat_p,aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,X0))) ) ).

% nat_ordsucc
fof(fact_k__In__0__1,axiom,
    pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,scratc149728127ptyset),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,scratc149728127ptyset))) ).

% k_In_0_1
fof(fact_ordsucc__inj,axiom,
    ! [X0,X12] :
      ( ( gg_TPTP_ind(X0)
        & gg_TPTP_ind(X12) )
     => ( aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,X0) = aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,X12)
       => X0 = X12 ) ) ).

% ordsucc_inj
fof(fact_neq__ordsucc__0,axiom,
    ! [X0] : aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,X0) != scratc149728127ptyset ).

% neq_ordsucc_0
fof(fact_k__SepE2,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X22),aa_fun1431113780TP_ind(scratc1119368612_d_Sep(X0),X12)))
     => pp(aa_TPTP_ind_bool(X12,X22)) ) ).

% k_SepE2
fof(fact_k__SepE1,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X22),aa_fun1431113780TP_ind(scratc1119368612_d_Sep(X0),X12)))
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X22),X0)) ) ).

% k_SepE1
fof(fact_k__SepI,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X22),X0))
     => ( pp(aa_TPTP_ind_bool(X12,X22))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X22),aa_fun1431113780TP_ind(scratc1119368612_d_Sep(X0),X12))) ) ) ).

% k_SepI
fof(fact_k__Self__In__Power,axiom,
    ! [X0] : pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X0),aa_TPTP_ind_TPTP_ind(scratc390608475_power,X0))) ).

% k_Self_In_Power
fof(fact_k__PowerI,axiom,
    ! [X0,X12] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc684468331d_Subq,X12),X0))
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc390608475_power,X0))) ) ).

% k_PowerI
fof(fact_k__PowerE,axiom,
    ! [X0,X12] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc390608475_power,X0)))
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc684468331d_Subq,X12),X0)) ) ).

% k_PowerE
fof(fact_if__i__or,axiom,
    ! [X0,X12,X22] :
      ( ( gg_TPTP_ind(X12)
        & gg_TPTP_ind(X22) )
     => ( aa_TPTP_ind_TPTP_ind(scratc995845351bnd_if(X0,X12),X22) = X12
        | aa_TPTP_ind_TPTP_ind(scratc995845351bnd_if(X0,X12),X22) = X22 ) ) ).

% if_i_or
fof(fact_if__i__1,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X12)
     => ( pp(X0)
       => aa_TPTP_ind_TPTP_ind(scratc995845351bnd_if(X0,X12),X22) = X12 ) ) ).

% if_i_1
fof(fact_if__i__0,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X22)
     => ( ~ pp(X0)
       => aa_TPTP_ind_TPTP_ind(scratc995845351bnd_if(X0,X12),X22) = X22 ) ) ).

% if_i_0
fof(fact_if__i__correct,axiom,
    ! [X0,X12,X22] :
      ( ( gg_TPTP_ind(X12)
        & gg_TPTP_ind(X22) )
     => ( ( pp(X0)
          & aa_TPTP_ind_TPTP_ind(scratc995845351bnd_if(X0,X12),X22) = X12 )
        | ( ~ pp(X0)
          & aa_TPTP_ind_TPTP_ind(scratc995845351bnd_if(X0,X12),X22) = X22 ) ) ) ).

% if_i_correct
fof(fact_k__UnivOf__ZF__closed,axiom,
    ! [X0] : pp(aa_TPTP_ind_bool(scratc801746418closed,aa_TPTP_ind_TPTP_ind(scratc420381799univof,X0))) ).

% k_UnivOf_ZF_closed
fof(fact_k__UnivOf__In,axiom,
    ! [X0] : pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X0),aa_TPTP_ind_TPTP_ind(scratc420381799univof,X0))) ).

% k_UnivOf_In
fof(fact_k__ReplEq,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X22)
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc274252953d_repl,X0),X12)))
      <=> ? [X3] :
            ( gg_TPTP_ind(X3)
            & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X3),X0))
            & X22 = aa_TPTP_ind_TPTP_ind(X12,X3) ) ) ) ).

% k_ReplEq
fof(fact_k__PowerEq,axiom,
    ! [X0,X12] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc390608475_power,X0)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc684468331d_Subq,X12),X0)) ) ).

% k_PowerEq
fof(fact_k__UnionEq,axiom,
    ! [X0,X12] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc897870341_union,X0)))
    <=> ? [X2] :
          ( gg_TPTP_ind(X2)
          & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X12),X2))
          & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X2),X0)) ) ) ).

% k_UnionEq
fof(fact_k__EmptyAx,axiom,
    ~ ? [X0] : pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X0),scratc149728127ptyset)) ).

% k_EmptyAx
fof(fact_k__In__ind,axiom,
    ! [X0] :
      ( ! [X13] :
          ( gg_TPTP_ind(X13)
         => ( ! [X22] :
                ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X22),X13))
               => pp(aa_TPTP_ind_bool(X0,X22)) )
           => pp(aa_TPTP_ind_bool(X0,X13)) ) )
     => ! [X14] : pp(aa_TPTP_ind_bool(X0,X14)) ) ).

% k_In_ind
fof(fact_set__ext,axiom,
    ! [X0,X12] :
      ( ( gg_TPTP_ind(X0)
        & gg_TPTP_ind(X12) )
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc684468331d_Subq,X0),X12))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc684468331d_Subq,X12),X0))
         => X0 = X12 ) ) ) ).

% set_ext
fof(fact_ATP_Olambda__1,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_jb,Uu))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc48112526nd_nis,Uu),scratc1396187181nd_n_1))
       => pp(aa_fun171081125l_bool(scratc1416247032n_some,aa_TPT43085870d_bool(aTP_Lamm_af,Uu))) ) ) ).

% ATP.lambda_1
fof(fact_ATP_Olambda__2,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ja,Uu))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc48112526nd_nis,Uu),scratc1396187181nd_n_1))
       => pp(aa_fun171081125l_bool(scratc776386146_n_one,aa_TPT43085870d_bool(aTP_Lamm_af,Uu))) ) ) ).

% ATP.lambda_2
fof(fact_ATP_Olambda__3,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ix,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),scratc1396187181nd_n_1)),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uu))) ) ).

% ATP.lambda_3
fof(fact_ATP_Olambda__4,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_iu,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(scratc1396187181nd_n_1),Uu)),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uu))) ) ).

% ATP.lambda_4
fof(fact_ATP_Olambda__5,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_iz,Uu))
    <=> pp(aa_fun171081125l_bool(scratc56702012nd_one(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1944075539d_d_Pi,scratc47587735nd_nat),aTP_Lamm_ac)),aa_TPT43085870d_bool(aTP_Lamm_iy,Uu))) ) ).

% ATP.lambda_5
fof(fact_ATP_Olambda__6,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_jh,Uu))
    <=> ( pp(aa_TPTP_ind_bool(scratc534239045_cond1,Uu))
       => ( pp(aa_TPTP_ind_bool(scratc534239046_cond2,Uu))
         => pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_jg,Uu))) ) ) ) ).

% ATP.lambda_6
fof(fact_ATP_Olambda__7,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ir,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uu)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),scratc1396187181nd_n_1))) ) ).

% ATP.lambda_7
fof(fact_ATP_Olambda__8,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_io,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uu)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(scratc1396187181nd_n_1),Uu))) ) ).

% ATP.lambda_8
fof(fact_ATP_Olambda__9,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fo,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uu)),Uu)) ) ).

% ATP.lambda_9
fof(fact_ATP_Olambda__10,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_jc,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc48112526nd_nis,aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uu)),Uu)) ) ).

% ATP.lambda_10
fof(fact_ATP_Olambda__11,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_jl,Uu))
    <=> scratc100680811_is_of(aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uu),aTP_Lamm_a) ) ).

% ATP.lambda_11
fof(fact_ATP_Olambda__12,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_bt,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uu)),scratc1396187181nd_n_1)) ) ).

% ATP.lambda_12
fof(fact_ATP_Olambda__13,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_jk,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc48112526nd_nis,aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uu)),scratc1396187181nd_n_1)) ) ).

% ATP.lambda_13
fof(fact_ATP_Olambda__14,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fn,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uu))) ) ).

% ATP.lambda_14
fof(fact_ATP_Olambda__15,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_jf,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,Uu),aa_TPTP_ind_TPTP_ind(scratc390608475_power,scratc47587735nd_nat))) ) ).

% ATP.lambda_15
fof(fact_ATP_Olambda__16,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_bu,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,Uu),scratc1396187181nd_n_1)) ) ).

% ATP.lambda_16
fof(fact_ATP_Olambda__17,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_a,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,Uu),scratc47587735nd_nat)) ) ).

% ATP.lambda_17
fof(fact_ATP_Olambda__18,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_jj,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ji,Uu))) ) ).

% ATP.lambda_18
fof(fact_ATP_Olambda__19,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_je,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_jd,Uu))) ) ).

% ATP.lambda_19
fof(fact_ATP_Olambda__20,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_iw,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_iv,Uu))) ) ).

% ATP.lambda_20
fof(fact_ATP_Olambda__21,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_it,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_is,Uu))) ) ).

% ATP.lambda_21
fof(fact_ATP_Olambda__22,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_iq,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ip,Uu))) ) ).

% ATP.lambda_22
fof(fact_ATP_Olambda__23,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_in,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_im,Uu))) ) ).

% ATP.lambda_23
fof(fact_ATP_Olambda__24,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_il,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ik,Uu))) ) ).

% ATP.lambda_24
fof(fact_ATP_Olambda__25,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ii,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ih,Uu))) ) ).

% ATP.lambda_25
fof(fact_ATP_Olambda__26,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ig,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_if,Uu))) ) ).

% ATP.lambda_26
fof(fact_ATP_Olambda__27,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ie,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_id,Uu))) ) ).

% ATP.lambda_27
fof(fact_ATP_Olambda__28,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ib,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ia,Uu))) ) ).

% ATP.lambda_28
fof(fact_ATP_Olambda__29,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_hy,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_hx,Uu))) ) ).

% ATP.lambda_29
fof(fact_ATP_Olambda__30,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_hw,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_hv,Uu))) ) ).

% ATP.lambda_30
fof(fact_ATP_Olambda__31,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_hs,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_hr,Uu))) ) ).

% ATP.lambda_31
fof(fact_ATP_Olambda__32,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_hq,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_hp,Uu))) ) ).

% ATP.lambda_32
fof(fact_ATP_Olambda__33,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ho,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_hn,Uu))) ) ).

% ATP.lambda_33
fof(fact_ATP_Olambda__34,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_hm,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_hl,Uu))) ) ).

% ATP.lambda_34
fof(fact_ATP_Olambda__35,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_hk,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_hj,Uu))) ) ).

% ATP.lambda_35
fof(fact_ATP_Olambda__36,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_hi,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_hh,Uu))) ) ).

% ATP.lambda_36
fof(fact_ATP_Olambda__37,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_hg,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_hf,Uu))) ) ).

% ATP.lambda_37
fof(fact_ATP_Olambda__38,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_he,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_hd,Uu))) ) ).

% ATP.lambda_38
fof(fact_ATP_Olambda__39,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_hc,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_hb,Uu))) ) ).

% ATP.lambda_39
fof(fact_ATP_Olambda__40,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ha,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_gz,Uu))) ) ).

% ATP.lambda_40
fof(fact_ATP_Olambda__41,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_gy,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_gx,Uu))) ) ).

% ATP.lambda_41
fof(fact_ATP_Olambda__42,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_gw,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_gv,Uu))) ) ).

% ATP.lambda_42
fof(fact_ATP_Olambda__43,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_gu,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_gt,Uu))) ) ).

% ATP.lambda_43
fof(fact_ATP_Olambda__44,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_gs,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_gr,Uu))) ) ).

% ATP.lambda_44
fof(fact_ATP_Olambda__45,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_gq,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_gp,Uu))) ) ).

% ATP.lambda_45
fof(fact_ATP_Olambda__46,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_go,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_gn,Uu))) ) ).

% ATP.lambda_46
fof(fact_ATP_Olambda__47,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_gm,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_gl,Uu))) ) ).

% ATP.lambda_47
fof(fact_ATP_Olambda__48,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_gk,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_gj,Uu))) ) ).

% ATP.lambda_48
fof(fact_ATP_Olambda__49,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_gh,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_gg,Uu))) ) ).

% ATP.lambda_49
fof(fact_ATP_Olambda__50,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ge,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_gd,Uu))) ) ).

% ATP.lambda_50
fof(fact_ATP_Olambda__51,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_gb,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ga,Uu))) ) ).

% ATP.lambda_51
fof(fact_ATP_Olambda__52,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fy,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_fx,Uu))) ) ).

% ATP.lambda_52
fof(fact_ATP_Olambda__53,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fv,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_fu,Uu))) ) ).

% ATP.lambda_53
fof(fact_ATP_Olambda__54,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fs,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_fr,Uu))) ) ).

% ATP.lambda_54
fof(fact_ATP_Olambda__55,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fq,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_fp,Uu))) ) ).

% ATP.lambda_55
fof(fact_ATP_Olambda__56,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fm,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_fl,Uu))) ) ).

% ATP.lambda_56
fof(fact_ATP_Olambda__57,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fj,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_fi,Uu))) ) ).

% ATP.lambda_57
fof(fact_ATP_Olambda__58,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fg,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ff,Uu))) ) ).

% ATP.lambda_58
fof(fact_ATP_Olambda__59,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fd,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_fc,Uu))) ) ).

% ATP.lambda_59
fof(fact_ATP_Olambda__60,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_fa,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ez,Uu))) ) ).

% ATP.lambda_60
fof(fact_ATP_Olambda__61,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ex,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ew,Uu))) ) ).

% ATP.lambda_61
fof(fact_ATP_Olambda__62,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_eu,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_et,Uu))) ) ).

% ATP.lambda_62
fof(fact_ATP_Olambda__63,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_eq,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ep,Uu))) ) ).

% ATP.lambda_63
fof(fact_ATP_Olambda__64,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_em,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_el,Uu))) ) ).

% ATP.lambda_64
fof(fact_ATP_Olambda__65,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ei,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_eh,Uu))) ) ).

% ATP.lambda_65
fof(fact_ATP_Olambda__66,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ee,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ed,Uu))) ) ).

% ATP.lambda_66
fof(fact_ATP_Olambda__67,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_eb,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ea,Uu))) ) ).

% ATP.lambda_67
fof(fact_ATP_Olambda__68,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dy,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dx,Uu))) ) ).

% ATP.lambda_68
fof(fact_ATP_Olambda__69,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dv,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_du,Uu))) ) ).

% ATP.lambda_69
fof(fact_ATP_Olambda__70,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ds,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dr,Uu))) ) ).

% ATP.lambda_70
fof(fact_ATP_Olambda__71,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dp,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_do,Uu))) ) ).

% ATP.lambda_71
fof(fact_ATP_Olambda__72,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dm,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dl,Uu))) ) ).

% ATP.lambda_72
fof(fact_ATP_Olambda__73,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dj,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_di,Uu))) ) ).

% ATP.lambda_73
fof(fact_ATP_Olambda__74,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dg,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_df,Uu))) ) ).

% ATP.lambda_74
fof(fact_ATP_Olambda__75,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dd,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dc,Uu))) ) ).

% ATP.lambda_75
fof(fact_ATP_Olambda__76,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_da,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cz,Uu))) ) ).

% ATP.lambda_76
fof(fact_ATP_Olambda__77,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cw,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cv,Uu))) ) ).

% ATP.lambda_77
fof(fact_ATP_Olambda__78,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cs,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cr,Uu))) ) ).

% ATP.lambda_78
fof(fact_ATP_Olambda__79,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_co,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cn,Uu))) ) ).

% ATP.lambda_79
fof(fact_ATP_Olambda__80,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ck,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cj,Uu))) ) ).

% ATP.lambda_80
fof(fact_ATP_Olambda__81,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cg,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cf,Uu))) ) ).

% ATP.lambda_81
fof(fact_ATP_Olambda__82,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cc,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cb,Uu))) ) ).

% ATP.lambda_82
fof(fact_ATP_Olambda__83,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_by,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bx,Uu))) ) ).

% ATP.lambda_83
fof(fact_ATP_Olambda__84,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_br,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bq,Uu))) ) ).

% ATP.lambda_84
fof(fact_ATP_Olambda__85,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ab,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_aa,Uu))) ) ).

% ATP.lambda_85
fof(fact_ATP_Olambda__86,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_bs,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,scratc1396187181nd_n_1),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uu))) ) ).

% ATP.lambda_86
fof(fact_ATP_Olambda__87,axiom,
    ! [Uu] : aa_TPT494704832TP_ind(aTP_Lamm_bk,Uu) = aa_TPT494704832TP_ind(scratc274252953d_repl,aa_TPTP_ind_TPTP_ind(scratc1425311320tminus(Uu),aa_TPTP_ind_TPTP_ind(scratc586117449d_Sing,scratc149728127ptyset))) ).

% ATP.lambda_87
fof(fact_ATP_Olambda__88,axiom,
    ! [Uu] :
      ( gg_TPTP_ind(Uu)
     => ( pp(aa_TPTP_ind_bool(aTP_Lamm_ah,Uu))
      <=> Uu != scratc149728127ptyset ) ) ).

% ATP.lambda_88
fof(fact_ATP_Olambda__89,axiom,
    ! [Uu] :
      ( gg_TPTP_ind(Uu)
     => ( pp(aa_TPTP_ind_bool(aTP_Lamm_bi,Uu))
      <=> ? [X2] :
            ( gg_TPTP_ind(X2)
            & aa_TPTP_ind_TPTP_ind(scratc1411225126d_Inj1,X2) = Uu ) ) ) ).

% ATP.lambda_89
fof(fact_ATP_Olambda__90,axiom,
    ! [Uu] :
      ( gg_TPTP_ind(Uu)
     => ( pp(aa_TPTP_ind_bool(aTP_Lamm_bj,Uu))
      <=> ? [X2] :
            ( gg_TPTP_ind(X2)
            & aa_TPTP_ind_TPTP_ind(scratc1411225125d_Inj0,X2) = Uu ) ) ) ).

% ATP.lambda_90
fof(fact_ATP_Olambda__91,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_hn,Uu),Uua))
    <=> scratc1443967432_orec3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uua)) ) ).

% ATP.lambda_91
fof(fact_ATP_Olambda__92,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_hl,Uu),Uua))
    <=> pp(scratc56964358nd_or3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uua))) ) ).

% ATP.lambda_92
fof(fact_ATP_Olambda__93,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_hj,Uu),Uua))
    <=> pp(scratc2120848971nd_ec3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uua))) ) ).

% ATP.lambda_93
fof(fact_ATP_Olambda__94,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_hv,Uu),Uua))
    <=> scratc1443967432_orec3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uu),Uua),aa_fun171081125l_bool(scratc1416247032n_some,aa_TPT43085870d_bool(aTP_Lamm_ht(Uu),Uua)),aa_fun171081125l_bool(scratc1416247032n_some,aa_TPT43085870d_bool(aTP_Lamm_hu(Uu),Uua))) ) ).

% ATP.lambda_94
fof(fact_ATP_Olambda__95,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_hr,Uu),Uua))
    <=> pp(scratc56964358nd_or3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uu),Uua),aa_fun171081125l_bool(scratc1416247032n_some,aa_TPT43085870d_bool(scratc1431625074ffprop(Uu),Uua)),aa_fun171081125l_bool(scratc1416247032n_some,aa_TPT43085870d_bool(scratc1431625074ffprop(Uua),Uu)))) ) ).

% ATP.lambda_95
fof(fact_ATP_Olambda__96,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_hp,Uu),Uua))
    <=> pp(scratc2120848971nd_ec3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uu),Uua),aa_fun171081125l_bool(scratc1416247032n_some,aa_TPT43085870d_bool(scratc1431625074ffprop(Uu),Uua)),aa_fun171081125l_bool(scratc1416247032n_some,aa_TPT43085870d_bool(scratc1431625074ffprop(Uua),Uu)))) ) ).

% ATP.lambda_96
fof(fact_ATP_Olambda__97,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_kl,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(Uu),Uua),Uua)) ) ).

% ATP.lambda_97
fof(fact_ATP_Olambda__98,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_iy,Uu),Uua))
    <=> pp(scratc1235620061_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uua),scratc1396187181nd_n_1)),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uu)),aa_fun171081125l_bool(scratc660593885_n_all,aa_TPT43085870d_bool(aTP_Lamm_ae,Uua)))) ) ).

% ATP.lambda_98
fof(fact_ATP_Olambda__99,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ji,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uu)),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uua)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uu),Uua)) ) ) ).

% ATP.lambda_99
fof(fact_ATP_Olambda__100,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_is,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uu)),Uua)),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uua)))) ) ).

% ATP.lambda_100
fof(fact_ATP_Olambda__101,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_iv,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uua))),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uua)))) ) ).

% ATP.lambda_101
fof(fact_ATP_Olambda__102,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ae,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uu),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uua))),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uu),Uua)))) ) ).

% ATP.lambda_102
fof(fact_ATP_Olambda__103,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_jd,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc48112526nd_nis,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc48112526nd_nis,aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uu)),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uua))) ) ) ).

% ATP.lambda_103
fof(fact_ATP_Olambda__104,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ag,Uu),Uua))
    <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc7067394nd_imp,aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456521d_n_in,Uua),Uu)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456521d_n_in,aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uua)),Uu))) ) ).

% ATP.lambda_104
fof(fact_ATP_Olambda__105,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bq,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uua),Uu))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,Uua),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),scratc1396187181nd_n_1))) ) ) ).

% ATP.lambda_105
fof(fact_ATP_Olambda__106,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_aa,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uua),Uu))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,Uua),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uu))) ) ) ).

% ATP.lambda_106
fof(fact_ATP_Olambda__107,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ih,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uua)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uu))) ) ).

% ATP.lambda_107
fof(fact_ATP_Olambda__108,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_hh,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uua),Uu)) ) ) ).

% ATP.lambda_108
fof(fact_ATP_Olambda__109,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_hd,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,Uua),Uu)) ) ) ).

% ATP.lambda_109
fof(fact_ATP_Olambda__110,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_hb,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,Uua),Uu)) ) ) ).

% ATP.lambda_110
fof(fact_ATP_Olambda__111,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_hf,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uua),Uu)) ) ) ).

% ATP.lambda_111
fof(fact_ATP_Olambda__112,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_gr,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uu),Uua))
       => pp(scratc1343085241_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,Uu),Uua))) ) ) ).

% ATP.lambda_112
fof(fact_ATP_Olambda__113,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_gz,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,Uu),Uua))
       => pp(scratc1343085241_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uua))) ) ) ).

% ATP.lambda_113
fof(fact_ATP_Olambda__114,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_gx,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,Uu),Uua))
       => pp(scratc1343085241_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uu),Uua))) ) ) ).

% ATP.lambda_114
fof(fact_ATP_Olambda__115,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_gp,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uua))
       => pp(scratc1343085241_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,Uu),Uua))) ) ) ).

% ATP.lambda_115
fof(fact_ATP_Olambda__116,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fr,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uua)),Uu)) ) ).

% ATP.lambda_116
fof(fact_ATP_Olambda__117,axiom,
    ! [Uu,Uua] : aa_TPTP_ind_TPTP_ind(aTP_Lamm_bh(Uu),Uua) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc274252953d_repl,aa_TPTP_ind_TPTP_ind(Uu,Uua)),aa_TPT1424761345TP_ind(scratc827056996d_pair,Uua)) ).

% ATP.lambda_117
fof(fact_ATP_Olambda__118,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_jo,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_jm,Uu)),aa_TPT43085870d_bool(aTP_Lamm_jn(Uu),Uua))) ) ).

% ATP.lambda_118
fof(fact_ATP_Olambda__119,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_im,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uua))),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uu)),Uua))) ) ).

% ATP.lambda_119
fof(fact_ATP_Olambda__120,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ip,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uua))),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uua)))) ) ).

% ATP.lambda_120
fof(fact_ATP_Olambda__121,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_gv,Uu),Uua))
    <=> ( pp(scratc1343085241_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uu),Uua)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,Uu),Uua)) ) ) ).

% ATP.lambda_121
fof(fact_ATP_Olambda__122,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_gn,Uu),Uua))
    <=> ( pp(scratc1343085241_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,Uu),Uua)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uua)) ) ) ).

% ATP.lambda_122
fof(fact_ATP_Olambda__123,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_gl,Uu),Uua))
    <=> ( pp(scratc1343085241_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,Uu),Uua)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uu),Uua)) ) ) ).

% ATP.lambda_123
fof(fact_ATP_Olambda__124,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_gt,Uu),Uua))
    <=> ( pp(scratc1343085241_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uua)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,Uu),Uua)) ) ) ).

% ATP.lambda_124
fof(fact_ATP_Olambda__125,axiom,
    ! [Uu,Uua] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(aTP_Lamm_bl,Uu),Uua) = aa_TPTP_ind_TPTP_ind(scratc1509025778nunion(aa_TPTP_ind_TPTP_ind(scratc586117449d_Sing,scratc149728127ptyset)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc274252953d_repl,Uu),Uua)) ).

% ATP.lambda_125
fof(fact_ATP_Olambda__126,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_if,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc48112526nd_nis,Uua),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uua))) ) ).

% ATP.lambda_126
fof(fact_ATP_Olambda__127,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fp,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uua))) ) ).

% ATP.lambda_127
fof(fact_ATP_Olambda__128,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_af,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uu),aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,Uua))) ) ).

% ATP.lambda_128
fof(fact_ATP_Olambda__129,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_jm,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,Uua),aa_TPTP_ind_TPTP_ind(scratc390608475_power,Uu))) ) ).

% ATP.lambda_129
fof(fact_ATP_Olambda__130,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_jg,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456521d_n_in,Uua),Uu)) ) ).

% ATP.lambda_130
fof(fact_ATP_Olambda__131,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bm,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc46013353nd_nIn,Uua),Uu)) ) ).

% ATP.lambda_131
fof(fact_ATP_Olambda__132,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_aj,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,Uua),Uu)) ) ).

% ATP.lambda_132
fof(fact_ATP_Olambda__133,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ik,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ij(Uu),Uua))) ) ).

% ATP.lambda_133
fof(fact_ATP_Olambda__134,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_id,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ic(Uu),Uua))) ) ).

% ATP.lambda_134
fof(fact_ATP_Olambda__135,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ia,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_hz(Uu),Uua))) ) ).

% ATP.lambda_135
fof(fact_ATP_Olambda__136,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_gj,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_gi(Uu),Uua))) ) ).

% ATP.lambda_136
fof(fact_ATP_Olambda__137,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_gg,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_gf(Uu),Uua))) ) ).

% ATP.lambda_137
fof(fact_ATP_Olambda__138,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_gd,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_gc(Uu),Uua))) ) ).

% ATP.lambda_138
fof(fact_ATP_Olambda__139,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ga,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_fz(Uu),Uua))) ) ).

% ATP.lambda_139
fof(fact_ATP_Olambda__140,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fx,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_fw(Uu),Uua))) ) ).

% ATP.lambda_140
fof(fact_ATP_Olambda__141,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fu,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ft(Uu),Uua))) ) ).

% ATP.lambda_141
fof(fact_ATP_Olambda__142,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fl,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_fk(Uu),Uua))) ) ).

% ATP.lambda_142
fof(fact_ATP_Olambda__143,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fi,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_fh(Uu),Uua))) ) ).

% ATP.lambda_143
fof(fact_ATP_Olambda__144,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ff,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_fe(Uu),Uua))) ) ).

% ATP.lambda_144
fof(fact_ATP_Olambda__145,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fc,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_fb(Uu),Uua))) ) ).

% ATP.lambda_145
fof(fact_ATP_Olambda__146,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ez,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ey(Uu),Uua))) ) ).

% ATP.lambda_146
fof(fact_ATP_Olambda__147,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ew,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ev(Uu),Uua))) ) ).

% ATP.lambda_147
fof(fact_ATP_Olambda__148,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_et,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_es(Uu),Uua))) ) ).

% ATP.lambda_148
fof(fact_ATP_Olambda__149,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ep,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_eo(Uu),Uua))) ) ).

% ATP.lambda_149
fof(fact_ATP_Olambda__150,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_el,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ek(Uu),Uua))) ) ).

% ATP.lambda_150
fof(fact_ATP_Olambda__151,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_eh,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_eg(Uu),Uua))) ) ).

% ATP.lambda_151
fof(fact_ATP_Olambda__152,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ed,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ec(Uu),Uua))) ) ).

% ATP.lambda_152
fof(fact_ATP_Olambda__153,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ea,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dz(Uu),Uua))) ) ).

% ATP.lambda_153
fof(fact_ATP_Olambda__154,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dx,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dw(Uu),Uua))) ) ).

% ATP.lambda_154
fof(fact_ATP_Olambda__155,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_du,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dt(Uu),Uua))) ) ).

% ATP.lambda_155
fof(fact_ATP_Olambda__156,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dr,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dq(Uu),Uua))) ) ).

% ATP.lambda_156
fof(fact_ATP_Olambda__157,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_do,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dn(Uu),Uua))) ) ).

% ATP.lambda_157
fof(fact_ATP_Olambda__158,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dl,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dk(Uu),Uua))) ) ).

% ATP.lambda_158
fof(fact_ATP_Olambda__159,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_di,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dh(Uu),Uua))) ) ).

% ATP.lambda_159
fof(fact_ATP_Olambda__160,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_df,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_de(Uu),Uua))) ) ).

% ATP.lambda_160
fof(fact_ATP_Olambda__161,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dc,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_db(Uu),Uua))) ) ).

% ATP.lambda_161
fof(fact_ATP_Olambda__162,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cz,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cy(Uu),Uua))) ) ).

% ATP.lambda_162
fof(fact_ATP_Olambda__163,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cv,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cu(Uu),Uua))) ) ).

% ATP.lambda_163
fof(fact_ATP_Olambda__164,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cr,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cq(Uu),Uua))) ) ).

% ATP.lambda_164
fof(fact_ATP_Olambda__165,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cn,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cm(Uu),Uua))) ) ).

% ATP.lambda_165
fof(fact_ATP_Olambda__166,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cj,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ci(Uu),Uua))) ) ).

% ATP.lambda_166
fof(fact_ATP_Olambda__167,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cf,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ce(Uu),Uua))) ) ).

% ATP.lambda_167
fof(fact_ATP_Olambda__168,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cb,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ca(Uu),Uua))) ) ).

% ATP.lambda_168
fof(fact_ATP_Olambda__169,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bx,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bw(Uu),Uua))) ) ).

% ATP.lambda_169
fof(fact_ATP_Olambda__170,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_hx,Uu),Uua))
    <=> pp(scratc997820912_amone(scratc47587735nd_nat,aa_TPT43085870d_bool(aTP_Lamm_ht(Uu),Uua))) ) ).

% ATP.lambda_170
fof(fact_ATP_Olambda__171,axiom,
    ! [Uu,Uua] : aa_TPTP_ind_TPTP_ind(aTP_Lamm_ad(Uu),Uua) = aa_TPTP_ind_TPTP_ind(scratc644387513rdsucc,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uu),Uua)) ).

% ATP.lambda_171
fof(fact_ATP_Olambda__172,axiom,
    ! [Uu,Uua] : aa_TPTP_ind_TPTP_ind(aTP_Lamm_be(Uu),Uua) = aa_TPTP_ind_TPTP_ind(scratc897870341_union,aa_TPTP_ind_TPTP_ind(Uu,Uua)) ).

% ATP.lambda_172
fof(fact_ATP_Olambda__173,axiom,
    ! [Uu,Uua] :
      ( gg_TPTP_ind(Uua)
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bg,Uu),Uua))
      <=> ? [X3] :
            ( gg_TPTP_ind(X3)
            & Uua = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc827056996d_pair,Uu),X3) ) ) ) ).

% ATP.lambda_173
fof(fact_ATP_Olambda__174,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_jw(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(aa_TPTP_ind_TPTP_ind(scratc278310607etprod(Uu),Uua)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1681889716d_pair(Uu,Uua),aa_TPTP_ind_TPTP_ind(scratc1450922438_first(Uu,Uua),Uub)),aa_TPTP_ind_TPTP_ind(scratc1858738590second(Uu,Uua),Uub))),Uub)) ) ).

% ATP.lambda_174
fof(fact_ATP_Olambda__175,axiom,
    ! [Uu,Uua,Uub] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(aTP_Lamm_bo(Uu),Uua),Uub) = aa_TPTP_ind_TPTP_ind(scratc995845351bnd_if(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,scratc149728127ptyset),Uub),Uu),Uua) ).

% ATP.lambda_175
fof(fact_ATP_Olambda__176,axiom,
    ! [Uu,Uua,Uub] : aa_TPTP_ind_TPTP_ind(aa_fun1235454963TP_ind(aTP_Lamm_bn(Uu),Uua),Uub) = aa_TPTP_ind_TPTP_ind(scratc995845351bnd_if(aa_TPTP_ind_bool(Uua,Uub),Uub),scratc2121701822nd_eps(aa_fun1584354236d_bool(aTP_Lamm_bb(Uu),Uua))) ).

% ATP.lambda_176
fof(fact_ATP_Olambda__177,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_au(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc979961069d_esti(Uu),Uub),Uua)) ) ).

% ATP.lambda_177
fof(fact_ATP_Olambda__178,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_jp(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc979961069d_esti(Uu),Uub),aa_fun1431113780TP_ind(scratc1119368612_d_Sep(Uu),Uua)))
       => pp(aa_TPTP_ind_bool(Uua,Uub)) ) ) ).

% ATP.lambda_178
fof(fact_ATP_Olambda__179,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_jn(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1912403512d_incl(Uu),Uua),Uub))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1912403512d_incl(Uu),Uub),Uua))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(aa_TPTP_ind_TPTP_ind(scratc390608475_power,Uu)),Uua),Uub)) ) ) ) ).

% ATP.lambda_179
fof(fact_ATP_Olambda__180,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_jx(Uu),Uua),Uub))
    <=> scratc100680811_is_of(aa_TPTP_ind_TPTP_ind(scratc1858738590second(Uu,Uua),Uub),aa_TPT43085870d_bool(aTP_Lamm_aj,Uua)) ) ).

% ATP.lambda_180
fof(fact_ATP_Olambda__181,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_jy(Uu),Uua),Uub))
    <=> scratc100680811_is_of(aa_TPTP_ind_TPTP_ind(scratc1450922438_first(Uu,Uua),Uub),aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)) ) ).

% ATP.lambda_181
fof(fact_ATP_Olambda__182,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_ke(Uu),Uua),Uub))
    <=> scratc100680811_is_of(aa_TPTP_ind_TPTP_ind(scratc937796160d_e_in(Uu,Uua),Uub),aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)) ) ).

% ATP.lambda_182
fof(fact_ATP_Olambda__183,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ki(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_kf(Uu),Uua)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_kh(Uu),Uua),Uub))) ) ).

% ATP.lambda_183
fof(fact_ATP_Olambda__184,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dq(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uub)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uu),Uua)) ) ) ).

% ATP.lambda_184
fof(fact_ATP_Olambda__185,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dh(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uu)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uua)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uu),Uua)) ) ) ).

% ATP.lambda_185
fof(fact_ATP_Olambda__186,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_hz(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uua)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uua),Uub)) ) ) ).

% ATP.lambda_186
fof(fact_ATP_Olambda__187,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dn(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uub)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uu),Uua)) ) ) ).

% ATP.lambda_187
fof(fact_ATP_Olambda__188,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_de(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uu)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uua)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uu),Uua)) ) ) ).

% ATP.lambda_188
fof(fact_ATP_Olambda__189,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dk(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uub)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uua)) ) ) ).

% ATP.lambda_189
fof(fact_ATP_Olambda__190,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_db(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uu)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uua)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uua)) ) ) ).

% ATP.lambda_190
fof(fact_ATP_Olambda__191,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ij(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uua)),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uub)))) ) ).

% ATP.lambda_191
fof(fact_ATP_Olambda__192,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fk(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uub))) ) ) ).

% ATP.lambda_192
fof(fact_ATP_Olambda__193,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fb(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uu)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uua))) ) ) ).

% ATP.lambda_193
fof(fact_ATP_Olambda__194,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fw(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,Uua),Uub))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uu),Uub)) ) ) ) ).

% ATP.lambda_194
fof(fact_ATP_Olambda__195,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ec(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uub))) ) ) ).

% ATP.lambda_195
fof(fact_ATP_Olambda__196,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dz(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uu)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uua))) ) ) ).

% ATP.lambda_196
fof(fact_ATP_Olambda__197,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fz(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uua),Uub))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uu),Uub)) ) ) ) ).

% ATP.lambda_197
fof(fact_ATP_Olambda__198,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dw(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uub))) ) ) ).

% ATP.lambda_198
fof(fact_ATP_Olambda__199,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dt(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uu)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uua))) ) ) ).

% ATP.lambda_199
fof(fact_ATP_Olambda__200,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ft(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,Uua),Uub))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,Uu),Uub)) ) ) ) ).

% ATP.lambda_200
fof(fact_ATP_Olambda__201,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_gf(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uua),Uub))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uub)) ) ) ) ).

% ATP.lambda_201
fof(fact_ATP_Olambda__202,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fh(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uub))) ) ) ).

% ATP.lambda_202
fof(fact_ATP_Olambda__203,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ey(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uu)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uua))) ) ) ).

% ATP.lambda_203
fof(fact_ATP_Olambda__204,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ic(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc48112526nd_nis,Uua),Uub))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc48112526nd_nis,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uua)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub))) ) ) ).

% ATP.lambda_204
fof(fact_ATP_Olambda__205,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fe(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uub))) ) ) ).

% ATP.lambda_205
fof(fact_ATP_Olambda__206,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ev(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uua))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uu)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uua))) ) ) ).

% ATP.lambda_206
fof(fact_ATP_Olambda__207,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_gc(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,Uua),Uub))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uub)) ) ) ) ).

% ATP.lambda_207
fof(fact_ATP_Olambda__208,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_gi(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uua),Uub))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uub)) ) ) ) ).

% ATP.lambda_208
fof(fact_ATP_Olambda__209,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_bb(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,Uub),Uu))
        & pp(aa_TPTP_ind_bool(Uua,Uub)) ) ) ).

% ATP.lambda_209
fof(fact_ATP_Olambda__210,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_kb(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(Uua,Uub))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1408280369_image(aa_fun1431113780TP_ind(scratc1119368612_d_Sep(Uu),Uua),Uu),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc113866315_Sigma,aa_fun1431113780TP_ind(scratc1119368612_d_Sep(Uu),Uua)),scratc937796160d_e_in(Uu,Uua))),Uub)) ) ) ).

% ATP.lambda_210
fof(fact_ATP_Olambda__211,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_jq(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(Uua,Uub))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc979961069d_esti(Uu),Uub),aa_fun1431113780TP_ind(scratc1119368612_d_Sep(Uu),Uua))) ) ) ).

% ATP.lambda_211
fof(fact_ATP_Olambda__212,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_kk(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)),aa_TPT43085870d_bool(aa_fun1212484691d_bool(aTP_Lamm_kj(Uu),Uua),Uub))) ) ).

% ATP.lambda_212
fof(fact_ATP_Olambda__213,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_bd(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)),aa_TPT43085870d_bool(aa_fun1212484691d_bool(aTP_Lamm_bc(Uu),Uua),Uub))) ) ).

% ATP.lambda_213
fof(fact_ATP_Olambda__214,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ka(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uua)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_jz(Uu),Uua),Uub))) ) ).

% ATP.lambda_214
fof(fact_ATP_Olambda__215,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ju(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uua)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_jt(Uu),Uua),Uub))) ) ).

% ATP.lambda_215
fof(fact_ATP_Olambda__216,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_js(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uua)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_jr(Uu),Uua),Uub))) ) ).

% ATP.lambda_216
fof(fact_ATP_Olambda__217,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_kf(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,Uub),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1944075539d_d_Pi,Uu),aTP_Lamm_ai(Uua)))) ) ).

% ATP.lambda_217
fof(fact_ATP_Olambda__218,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ht(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uu),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uub))) ) ).

% ATP.lambda_218
fof(fact_ATP_Olambda__219,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_hu(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uua),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub))) ) ).

% ATP.lambda_219
fof(fact_ATP_Olambda__220,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_jv(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,Uub),aa_TPTP_ind_TPTP_ind(scratc278310607etprod(Uu),Uua))) ) ).

% ATP.lambda_220
fof(fact_ATP_Olambda__221,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_kc(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,Uub),aa_fun1431113780TP_ind(scratc1119368612_d_Sep(Uu),Uua))) ) ).

% ATP.lambda_221
fof(fact_ATP_Olambda__222,axiom,
    ! [Uu,Uua,Uub] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(aTP_Lamm_aw(Uu),Uua),Uub) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uu),Uub)) ).

% ATP.lambda_222
fof(fact_ATP_Olambda__223,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_es(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_er(Uu),Uua),Uub))) ) ).

% ATP.lambda_223
fof(fact_ATP_Olambda__224,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_eo(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_en(Uu),Uua),Uub))) ) ).

% ATP.lambda_224
fof(fact_ATP_Olambda__225,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ek(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ej(Uu),Uua),Uub))) ) ).

% ATP.lambda_225
fof(fact_ATP_Olambda__226,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_eg(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ef(Uu),Uua),Uub))) ) ).

% ATP.lambda_226
fof(fact_ATP_Olambda__227,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cy(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_cx(Uu),Uua),Uub))) ) ).

% ATP.lambda_227
fof(fact_ATP_Olambda__228,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cu(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ct(Uu),Uua),Uub))) ) ).

% ATP.lambda_228
fof(fact_ATP_Olambda__229,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cq(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_cp(Uu),Uua),Uub))) ) ).

% ATP.lambda_229
fof(fact_ATP_Olambda__230,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cm(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_cl(Uu),Uua),Uub))) ) ).

% ATP.lambda_230
fof(fact_ATP_Olambda__231,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ci(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ch(Uu),Uua),Uub))) ) ).

% ATP.lambda_231
fof(fact_ATP_Olambda__232,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ce(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_cd(Uu),Uua),Uub))) ) ).

% ATP.lambda_232
fof(fact_ATP_Olambda__233,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ca(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_bz(Uu),Uua),Uub))) ) ).

% ATP.lambda_233
fof(fact_ATP_Olambda__234,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bw(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_bv(Uu),Uua),Uub))) ) ).

% ATP.lambda_234
fof(fact_ATP_Olambda__235,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_kd(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(Uua,aa_TPTP_ind_TPTP_ind(scratc937796160d_e_in(Uu,Uua),Uub))) ) ).

% ATP.lambda_235
fof(fact_ATP_Olambda__236,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1913827119d_bool(aTP_Lamm_bf(Uu),Uua),Uub))
    <=> ! [X3] :
          ( gg_TPTP_ind(X3)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,X3),Uu))
           => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc995845359bnd_in,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uub),X3)),aa_TPTP_ind_TPTP_ind(Uua,X3))) ) ) ) ).

% ATP.lambda_236
fof(fact_ATP_Olambda__237,axiom,
    ! [Uu,Uua,Uub,Uuc] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(aa_TPT1791839040TP_ind(aTP_Lamm_ax(Uu),Uua),Uub),Uuc) = aa_TPTP_ind_TPTP_ind(scratc995845351bnd_if(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1408280369_image(Uu,Uua),Uub),Uuc),aa_TPTP_ind_TPTP_ind(scratc1136799220d_soft(Uu,Uua,Uub),Uuc)),scratc149728127ptyset) ).

% ATP.lambda_237
fof(fact_ATP_Olambda__238,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_jt(Uu),Uua),Uub),Uuc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(Uu),aa_TPTP_ind_TPTP_ind(scratc1450922438_first(Uu,Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1681889716d_pair(Uu,Uua),Uub),Uuc))),Uub)) ) ).

% ATP.lambda_238
fof(fact_ATP_Olambda__239,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_jr(Uu),Uua),Uub),Uuc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(Uua),aa_TPTP_ind_TPTP_ind(scratc1858738590second(Uu,Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1681889716d_pair(Uu,Uua),Uub),Uuc))),Uuc)) ) ).

% ATP.lambda_239
fof(fact_ATP_Olambda__240,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_kg(Uu),Uua),Uub),Uuc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(Uu),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uua),Uuc)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uub),Uuc))) ) ).

% ATP.lambda_240
fof(fact_ATP_Olambda__241,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_aq(Uu),Uua),Uub),Uuc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc979961069d_esti(Uu),Uub),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uua),Uuc))) ) ).

% ATP.lambda_241
fof(fact_ATP_Olambda__242,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ay(Uu),Uua),Uub),Uuc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(Uu),Uub),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uua),Uuc))) ) ).

% ATP.lambda_242
fof(fact_ATP_Olambda__243,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_jz(Uu),Uua),Uub),Uuc))
    <=> scratc100680811_is_of(aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1681889716d_pair(Uu,Uua),Uub),Uuc),aa_TPT43085870d_bool(aTP_Lamm_jv(Uu),Uua)) ) ).

% ATP.lambda_243
fof(fact_ATP_Olambda__244,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_as(Uu),Uua),Uub),Uuc))
    <=> pp(scratc324549184d_l_ec(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc979961069d_esti(Uu),Uuc),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc979961069d_esti(Uu),Uuc),Uub))) ) ).

% ATP.lambda_244
fof(fact_ATP_Olambda__245,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_at(Uu),Uua),Uub),Uuc))
    <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc7067394nd_imp,aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc979961069d_esti(Uu),Uuc),Uua)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc979961069d_esti(Uu),Uuc),Uub))) ) ).

% ATP.lambda_245
fof(fact_ATP_Olambda__246,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_kh(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_kg(Uua),Uub),Uuc)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1944075539d_d_Pi,Uu),aTP_Lamm_ai(Uua))),Uub),Uuc)) ) ) ).

% ATP.lambda_246
fof(fact_ATP_Olambda__247,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( ( gg_TPTP_ind(Uua)
        & gg_TPTP_ind(Uub)
        & gg_TPTP_ind(Uuc) )
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_bp(Uu),Uua),Uub),Uuc))
      <=> ( ( pp(Uu)
            & Uuc = Uua )
          | ( ~ pp(Uu)
            & Uuc = Uub ) ) ) ) ).

% ATP.lambda_247
fof(fact_ATP_Olambda__248,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_cx(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uub),Uuc))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uuc))) ) ) ) ).

% ATP.lambda_248
fof(fact_ATP_Olambda__249,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_cl(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,Uub),Uuc))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uuc))) ) ) ) ).

% ATP.lambda_249
fof(fact_ATP_Olambda__250,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_cp(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uub),Uuc))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uuc))) ) ) ) ).

% ATP.lambda_250
fof(fact_ATP_Olambda__251,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_bz(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,Uub),Uuc))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1173366569moreis,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uuc))) ) ) ) ).

% ATP.lambda_251
fof(fact_ATP_Olambda__252,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_bv(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,Uub),Uuc))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uuc))) ) ) ) ).

% ATP.lambda_252
fof(fact_ATP_Olambda__253,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ch(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uub),Uuc))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uuc))) ) ) ) ).

% ATP.lambda_253
fof(fact_ATP_Olambda__254,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_er(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uub),Uuc))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uuc))) ) ) ) ).

% ATP.lambda_254
fof(fact_ATP_Olambda__255,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_en(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,Uub),Uuc))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc247555713_29_ii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uu)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uuc),Uua))) ) ) ) ).

% ATP.lambda_255
fof(fact_ATP_Olambda__256,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ej(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uub),Uuc))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uuc))) ) ) ) ).

% ATP.lambda_256
fof(fact_ATP_Olambda__257,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ef(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc456456526d_n_is,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uub),Uuc))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uub),Uu)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uuc),Uua))) ) ) ) ).

% ATP.lambda_257
fof(fact_ATP_Olambda__258,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_cd(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1039382957lessis,Uub),Uuc))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uuc))) ) ) ) ).

% ATP.lambda_258
fof(fact_ATP_Olambda__259,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ct(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uu),Uua))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,Uub),Uuc))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6804991nd_iii,aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uu),Uub)),aa_TPTP_ind_TPTP_ind(scratc456915712d_n_pl(Uua),Uuc))) ) ) ) ).

% ATP.lambda_259
fof(fact_ATP_Olambda__260,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_fun1212484691d_bool(aTP_Lamm_kj(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(Uua,Uub))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(Uu),Uub),Uuc))
         => pp(aa_TPTP_ind_bool(Uua,Uuc)) ) ) ) ).

% ATP.lambda_260
fof(fact_ATP_Olambda__261,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_fun1212484691d_bool(aTP_Lamm_bc(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(Uua,Uub))
       => ( pp(aa_TPTP_ind_bool(Uua,Uuc))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(Uu),Uub),Uuc)) ) ) ) ).

% ATP.lambda_261
fof(fact_ATP_Olambda__262,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ba(Uu),Uua),Uub),Uuc))
    <=> pp(aa_fun171081125l_bool(scratc2088393399nd_all(Uu),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aTP_Lamm_az(Uu),Uua),Uub),Uuc))) ) ).

% ATP.lambda_262
fof(fact_ATP_Olambda__263,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ar(Uu),Uua),Uub),Uuc))
    <=> pp(aa_fun171081125l_bool(scratc672422390l_some(Uua),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_aq(Uu),Uub),Uuc))) ) ).

% ATP.lambda_263
fof(fact_ATP_Olambda__264,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aTP_Lamm_az(Uu),Uua),Uub),Uuc),Uud))
    <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc7067394nd_imp,aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uub),Uuc)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uub),Uud))),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(Uu),Uuc),Uud))) ) ).

% ATP.lambda_264
fof(fact_ATP_Olambda__265,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aTP_Lamm_ao(Uu),Uua),Uub),Uuc),Uud))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(Uu,Uuc),Uud))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uub),Uuc)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uub),Uud))) ) ) ).

% ATP.lambda_265
fof(fact_ATP_Olambda__266,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_fun987228051d_bool(aTP_Lamm_an(Uu),Uua),Uub),Uuc),Uud))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_fun845057962d_bool(aTP_Lamm_am(Uu),Uua),Uub),Uuc),Uud))) ) ).

% ATP.lambda_266
fof(fact_ATP_Olambda__267,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_fun987228051d_bool(aTP_Lamm_ap(Uu),Uua),Uub),Uuc),Uud))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aTP_Lamm_ao(Uua),Uub),Uuc),Uud))) ) ).

% ATP.lambda_267
fof(fact_ATP_Olambda__268,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(aa_TPT1791839040TP_ind(aa_TPT1781712639TP_ind(aTP_Lamm_av(Uu),Uua),Uub),Uuc),Uud) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,aa_TPTP_ind_TPTP_ind(scratc1099522659wissel(Uu,Uub),Uuc)),Uud)) ).

% ATP.lambda_268
fof(fact_ATP_Olambda__269,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud,Uue] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_fun845057962d_bool(aTP_Lamm_am(Uu),Uua),Uub),Uuc),Uud),Uue))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_TPT985247859d_bool(aa_fun1107270209d_bool(aTP_Lamm_al(Uu),Uua),Uub),Uuc),Uud),Uue))) ) ).

% ATP.lambda_269
fof(fact_ATP_Olambda__270,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud,Uue,Uuf] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_TPT985247859d_bool(aa_TPT125613450d_bool(aTP_Lamm_ak(Uu),Uua),Uub),Uuc),Uud),Uue),Uuf))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(Uu,Uuc),Uud))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(Uu,Uue),Uuf))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc937796165d_e_is(Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uub),Uuc)),Uue)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc995320569bnd_ap,Uub),Uud)),Uuf))) ) ) ) ).

% ATP.lambda_270
fof(fact_ATP_Olambda__271,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud,Uue,Uuf] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_TPT985247859d_bool(aa_fun1107270209d_bool(aTP_Lamm_al(Uu),Uua),Uub),Uuc),Uud),Uue),Uuf))
    <=> pp(aa_fun171081125l_bool(scratc1561761582all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_TPT985247859d_bool(aa_TPT125613450d_bool(aTP_Lamm_ak(Uua),Uub),Uuc),Uud),Uue),Uuf))) ) ).

% ATP.lambda_271
fof(fact_ATP_Olambda__272,axiom,
    ! [Uu,Uua] :
      ( gg_TPTP_ind(Uu)
     => aa_TPTP_ind_TPTP_ind(aTP_Lamm_ai(Uu),Uua) = Uu ) ).

% ATP.lambda_272
fof(fact_ATP_Olambda__273,axiom,
    ! [Uu] : aa_TPTP_ind_TPTP_ind(aTP_Lamm_ac,Uu) = scratc47587735nd_nat ).

% ATP.lambda_273

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
    pp(aa_fun171081125l_bool(scratc1561761582all_of(aTP_Lamm_a),aTP_Lamm_ab)) ).

%------------------------------------------------------------------------------
