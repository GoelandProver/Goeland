%------------------------------------------------------------------------------
% File     : PRO002+3 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Processes
% Problem  : PSL cliff problem coe-5
% Version  : Especial : Augmented > Especial.
% English  : 
% Refs     : [Hal09] Halcomb (2009), Email to G. Sutcliffe
% Source   : [Hal09]
% Names    : psl-1016-subset-618-lemmas__coe-5-pd [Hal09]

% Status   : Theorem
% Rating   : 0.47 v8.1.0, 0.42 v7.5.0, 0.50 v7.4.0, 0.37 v7.3.0, 0.45 v7.1.0, 0.48 v7.0.0, 0.50 v6.4.0, 0.58 v6.3.0, 0.54 v6.2.0, 0.64 v6.1.0, 0.73 v6.0.0, 0.65 v5.5.0, 0.78 v5.4.0, 0.79 v5.3.0, 0.78 v5.2.0, 0.60 v5.1.0, 0.62 v4.1.0, 0.65 v4.0.1, 0.70 v4.0.0
% Syntax   : Number of formulae    :   69 (  13 unt;   0 def)
%            Number of atoms       :  231 (  21 equ)
%            Maximal formula atoms :    8 (   3 avg)
%            Number of connectives :  195 (  33   ~;   6   |; 100   &)
%                                         (   7 <=>;  49  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   20 (  19 usr;   0 prp; 1-5 aty)
%            Number of functors    :    5 (   5 usr;   5 con; 0-0 aty)
%            Number of variables   :  196 ( 169   !;  27   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(sos,axiom,
    ! [X0,X1] :
      ( occurrence_of(X1,X0)
     => ( activity(X0)
        & activity_occurrence(X1) ) ) ).

fof(sos_01,axiom,
    ! [X2] :
      ( activity_occurrence(X2)
     => ? [X3] :
          ( activity(X3)
          & occurrence_of(X2,X3) ) ) ).

fof(sos_02,axiom,
    ! [X4,X5,X6] :
      ( ( occurrence_of(X4,X5)
        & occurrence_of(X4,X6) )
     => X5 = X6 ) ).

fof(sos_03,axiom,
    ! [X7] :
      ( activity(X7)
     => subactivity(X7,X7) ) ).

fof(sos_04,axiom,
    ! [X8,X9] :
      ( earlier(X8,X9)
     => ~ earlier(X9,X8) ) ).

fof(sos_05,axiom,
    ! [X10,X11,X12] :
      ( ( earlier(X10,X11)
        & earlier(X11,X12) )
     => earlier(X10,X12) ) ).

fof(sos_06,axiom,
    ! [X13,X14,X15] :
      ( ( earlier(X13,X14)
        & earlier(X15,X14) )
     => ( earlier(X15,X13)
        | earlier(X13,X15)
        | X13 = X15 ) ) ).

fof(sos_07,axiom,
    ! [X16,X17] :
      ( occurrence_of(X16,X17)
     => ( arboreal(X16)
      <=> atomic(X17) ) ) ).

fof(sos_08,axiom,
    ! [X18] :
      ( legal(X18)
     => arboreal(X18) ) ).

fof(sos_09,axiom,
    ! [X19,X20] :
      ( ( legal(X19)
        & earlier(X20,X19) )
     => legal(X20) ) ).

fof(sos_10,axiom,
    ! [X21,X22] :
      ( precedes(X21,X22)
    <=> ( earlier(X21,X22)
        & legal(X22) ) ) ).

fof(sos_11,axiom,
    ! [X23,X24,X25] :
      ( min_precedes(X24,X25,X23)
     => ? [X26,X27] :
          ( subactivity(X26,X23)
          & subactivity(X27,X23)
          & atocc(X24,X26)
          & atocc(X25,X27) ) ) ).

fof(sos_12,axiom,
    ! [X28,X29] :
      ( root(X29,X28)
     => ? [X30] :
          ( subactivity(X30,X28)
          & atocc(X29,X30) ) ) ).

fof(sos_13,axiom,
    ! [X31,X32,X33] :
      ( min_precedes(X31,X32,X33)
     => ? [X34] :
          ( root(X34,X33)
          & min_precedes(X34,X32,X33) ) ) ).

fof(sos_14,axiom,
    ! [X35,X36,X37] :
      ( min_precedes(X35,X36,X37)
     => ~ root(X36,X37) ) ).

fof(sos_15,axiom,
    ! [X38,X39,X40] :
      ( min_precedes(X38,X39,X40)
     => precedes(X38,X39) ) ).

fof(sos_16,axiom,
    ! [X41,X42] :
      ( root(X41,X42)
     => legal(X41) ) ).

fof(sos_17,axiom,
    ! [X43,X44] :
      ( ( atocc(X43,X44)
        & legal(X43) )
     => root(X43,X44) ) ).

fof(sos_18,axiom,
    ! [X45,X46,X47,X48] :
      ( ( min_precedes(X45,X46,X48)
        & min_precedes(X45,X47,X48)
        & precedes(X46,X47) )
     => min_precedes(X46,X47,X48) ) ).

fof(sos_19,axiom,
    ! [X49,X50,X51] :
      ( min_precedes(X49,X50,X51)
     => ~ atomic(X51) ) ).

fof(sos_20,axiom,
    ! [X52,X53,X54,X55] :
      ( ( min_precedes(X53,X52,X55)
        & min_precedes(X54,X52,X55)
        & precedes(X53,X54) )
     => min_precedes(X53,X54,X55) ) ).

fof(sos_21,axiom,
    ! [X56,X57] :
      ( leaf(X56,X57)
    <=> ( ( root(X56,X57)
          | ? [X58] : min_precedes(X58,X56,X57) )
        & ~ ? [X59] : min_precedes(X56,X59,X57) ) ) ).

fof(sos_22,axiom,
    ! [X60,X61,X62] :
      ( next_subocc(X60,X61,X62)
    <=> ( min_precedes(X60,X61,X62)
        & ~ ? [X63] :
              ( min_precedes(X60,X63,X62)
              & min_precedes(X63,X61,X62) ) ) ) ).

fof(sos_23,axiom,
    ! [X64,X65] :
      ( atocc(X64,X65)
    <=> ? [X66] :
          ( subactivity(X65,X66)
          & atomic(X66)
          & occurrence_of(X64,X66) ) ) ).

fof(sos_24,axiom,
    ! [X67,X68] :
      ( subactivity_occurrence(X67,X68)
     => ( activity_occurrence(X67)
        & activity_occurrence(X68) ) ) ).

fof(sos_25,axiom,
    ! [X69,X70,X71] :
      ( min_precedes(X70,X71,X69)
     => ? [X72] :
          ( occurrence_of(X72,X69)
          & subactivity_occurrence(X70,X72)
          & subactivity_occurrence(X71,X72) ) ) ).

fof(sos_26,axiom,
    ! [X73,X74] :
      ( ( root(X74,X73)
        & ~ atomic(X73) )
     => ? [X75] :
          ( occurrence_of(X75,X73)
          & subactivity_occurrence(X74,X75) ) ) ).

fof(sos_27,axiom,
    ! [X76,X77] :
      ( ( occurrence_of(X77,X76)
        & ~ atomic(X76) )
     => ? [X78] :
          ( root(X78,X76)
          & subactivity_occurrence(X78,X77) ) ) ).

fof(sos_28,axiom,
    ! [X79,X80,X81,X82] :
      ( ( occurrence_of(X80,X79)
        & arboreal(X81)
        & arboreal(X82)
        & subactivity_occurrence(X81,X80)
        & subactivity_occurrence(X82,X80) )
     => ( min_precedes(X81,X82,X79)
        | min_precedes(X82,X81,X79)
        | X81 = X82 ) ) ).

fof(sos_29,axiom,
    ! [X83,X84,X85,X86] :
      ( ( min_precedes(X83,X84,X85)
        & occurrence_of(X86,X85)
        & subactivity_occurrence(X84,X86) )
     => subactivity_occurrence(X83,X86) ) ).

fof(sos_30,axiom,
    ! [X87,X88,X89,X90] :
      ( ( occurrence_of(X89,X87)
        & occurrence_of(X90,X88)
        & ~ atomic(X87)
        & subactivity_occurrence(X89,X90) )
     => subactivity(X87,X88) ) ).

fof(sos_31,axiom,
    ! [X91,X92,X93] :
      ( ( subactivity_occurrence(X91,X92)
        & subactivity_occurrence(X92,X93) )
     => subactivity_occurrence(X91,X93) ) ).

fof(sos_32,axiom,
    ! [X94,X95,X96,X97] :
      ( ( occurrence_of(X96,X94)
        & occurrence_of(X97,X95)
        & subactivity(X94,X95)
        & ~ subactivity_occurrence(X96,X97) )
     => ? [X98] :
          ( subactivity_occurrence(X98,X97)
          & ~ subactivity_occurrence(X98,X96) ) ) ).

fof(sos_33,axiom,
    ! [X99,X100] :
      ( root_occ(X99,X100)
    <=> ? [X101] :
          ( occurrence_of(X100,X101)
          & subactivity_occurrence(X99,X100)
          & root(X99,X101) ) ) ).

fof(sos_34,axiom,
    ! [X102,X103] :
      ( leaf_occ(X102,X103)
    <=> ? [X104] :
          ( occurrence_of(X103,X104)
          & subactivity_occurrence(X102,X103)
          & leaf(X102,X104) ) ) ).

fof(sos_35,axiom,
    ! [X105,X106,X107,X108] :
      ( ( occurrence_of(X107,X108)
        & root_occ(X105,X107)
        & root_occ(X106,X107) )
     => X105 = X106 ) ).

fof(sos_36,axiom,
    ! [X109,X110,X111,X112] :
      ( ( occurrence_of(X111,X112)
        & ~ atomic(X112)
        & leaf_occ(X109,X111)
        & leaf_occ(X110,X111) )
     => X109 = X110 ) ).

fof(sos_37,axiom,
    ! [X113,X114,X115] :
      ( ( occurrence_of(X113,X115)
        & leaf_occ(X114,X113) )
     => ~ ? [X116] : min_precedes(X114,X116,X115) ) ).

fof(sos_38,axiom,
    ! [X117,X118,X119] :
      ( ( occurrence_of(X117,X119)
        & root_occ(X118,X117) )
     => ~ ? [X120] : min_precedes(X120,X118,X119) ) ).

fof(sos_39,axiom,
    ! [X121,X122,X123,X124,X125] :
      ( ( next_subocc(X121,X122,X124)
        & next_subocc(X121,X123,X124)
        & occurrence_of(X125,X124)
        & subactivity_occurrence(X123,X125)
        & subactivity_occurrence(X122,X125) )
     => X122 = X123 ) ).

fof(sos_40,axiom,
    ! [X126,X127,X128,X129] :
      ( ( next_subocc(X127,X126,X129)
        & next_subocc(X128,X126,X129) )
     => X127 = X128 ) ).

fof(sos_41,axiom,
    ! [X130,X131,X132,X133] :
      ( ( occurrence_of(X130,X133)
        & leaf_occ(X131,X130)
        & root_occ(X132,X130)
        & X131 != X132 )
     => min_precedes(X132,X131,X133) ) ).

fof(sos_42,axiom,
    ! [X134,X135,X136,X137] :
      ( ( occurrence_of(X135,X134)
        & subactivity_occurrence(X136,X135)
        & root_occ(X137,X135)
        & arboreal(X136)
        & ~ min_precedes(X137,X136,X134) )
     => X137 = X136 ) ).

fof(sos_43,axiom,
    ! [X138,X139,X140,X141] :
      ( ( occurrence_of(X139,X138)
        & subactivity_occurrence(X140,X139)
        & leaf_occ(X141,X139)
        & arboreal(X140)
        & ~ min_precedes(X140,X141,X138) )
     => X141 = X140 ) ).

fof(sos_44,axiom,
    ! [X142,X143,X144] :
      ( next_subocc(X142,X143,X144)
     => ( arboreal(X142)
        & arboreal(X143) ) ) ).

fof(sos_45,axiom,
    ! [X145,X146] :
      ( ( leaf(X145,X146)
        & ~ atomic(X146) )
     => ? [X147] :
          ( occurrence_of(X147,X146)
          & leaf_occ(X145,X147) ) ) ).

fof(sos_46,axiom,
    ! [X148,X149,X150] :
      ( min_precedes(X148,X149,X150)
     => arboreal(X148) ) ).

fof(sos_47,axiom,
    ! [X151,X152,X153,X154,X155] :
      ( ( occurrence_of(X152,X151)
        & root_occ(X154,X152)
        & leaf_occ(X155,X152)
        & subactivity_occurrence(X153,X152)
        & min_precedes(X153,X155,X151)
        & X153 != X154 )
     => min_precedes(X154,X153,X151) ) ).

fof(sos_48,axiom,
    ! [X156,X157,X158,X159,X160] :
      ( ( occurrence_of(X157,X156)
        & root_occ(X159,X157)
        & leaf_occ(X160,X157)
        & subactivity_occurrence(X158,X157)
        & min_precedes(X159,X158,X156)
        & X158 != X160 )
     => min_precedes(X158,X160,X156) ) ).

fof(sos_49,axiom,
    ! [X161] :
      ( occurrence_of(X161,tptp0)
     => ? [X162,X163] :
          ( occurrence_of(X162,tptp4)
          & root_occ(X162,X161)
          & ( occurrence_of(X163,tptp3)
            | occurrence_of(X163,tptp2) )
          & leaf_occ(X163,X161)
          & next_subocc(X162,X163,tptp0) ) ) ).

fof(sos_50,axiom,
    activity(tptp0) ).

fof(sos_51,axiom,
    ~ atomic(tptp0) ).

fof(sos_52,axiom,
    atomic(tptp4) ).

fof(sos_53,axiom,
    atomic(tptp3) ).

fof(sos_54,axiom,
    atomic(tptp2) ).

fof(sos_55,axiom,
    atomic(tptp5) ).

fof(sos_56,axiom,
    tptp4 != tptp5 ).

fof(sos_57,axiom,
    tptp4 != tptp3 ).

fof(sos_58,axiom,
    tptp4 != tptp2 ).

fof(sos_59,axiom,
    tptp5 != tptp3 ).

fof(sos_60,axiom,
    tptp5 != tptp2 ).

fof(sos_61,axiom,
    tptp3 != tptp2 ).

fof(sos_62,axiom,
    ! [X164,X165,X166,X167,X168] :
      ( send_message(X164,X165,X166,X167,X168)
     => ( activity(X164)
        & atomic(X164)
        & root(X165,X166)
        & root(X167,X168) ) ) ).

fof(sos_63,axiom,
    ! [X169,X170,X171,X172,X173] :
      ( send_message(X169,X170,X171,X172,X173)
     => ( X169 != tptp4
        & X169 != tptp3
        & X169 != tptp2 ) ) ).

fof(sos_64,axiom,
    ! [X174,X175,X176,X177,X178,X179] :
      ( ( send_message(X174,X175,X176,X177,X178)
        & occurrence_of(X179,X174) )
     => min_precedes(X177,X179,X178) ) ).

fof(sos_65,axiom,
    ! [X180,X181,X182] :
      ( tptp1(X180,X181,X182)
     => ( activity(X180)
        & ~ atomic(X180)
        & ~ atomic(X181)
        & root(X182,X181) ) ) ).

fof(sos_66,axiom,
    ! [X183,X184,X185,X186] :
      ( ( tptp1(X183,X184,X185)
        & occurrence_of(X186,X183) )
     => ? [X187,X188,X189,X190] :
          ( send_message(X187,X188,X189,X185,X184)
          & occurrence_of(X190,X187)
          & root_occ(X190,X186) ) ) ).

fof(sos_67,axiom,
    ! [X191,X192] : ~ tptp1(tptp0,X191,X192) ).

fof(goals,conjecture,
    ~ ? [X193,X194,X195] :
        ( tptp1(X193,tptp0,X194)
        & occurrence_of(X195,X193) ) ).

%------------------------------------------------------------------------------
