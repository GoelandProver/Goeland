%------------------------------------------------------------------------------
% File     : PRO018+2 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Processes
% Problem  : PSL cliff problem coe-7.3
% Version  : Especial : Reduced > Especial.
% English  : 
% Refs     : [Hal09] Halcomb (2009), Email to G. Sutcliffe
% Source   : [Hal09]
% Names    : minimal-subset-p9__coe-7.3-pd [Hal09]

% Status   : Theorem
% Rating   : 0.39 v8.1.0, 0.36 v7.5.0, 0.44 v7.4.0, 0.33 v7.3.0, 0.38 v7.2.0, 0.34 v7.1.0, 0.39 v7.0.0, 0.37 v6.4.0, 0.42 v6.3.0, 0.50 v6.2.0, 0.52 v6.1.0, 0.70 v6.0.0, 0.61 v5.5.0, 0.74 v5.4.0, 0.75 v5.3.0, 0.74 v5.2.0, 0.65 v5.1.0, 0.62 v4.1.0, 0.61 v4.0.1, 0.65 v4.0.0
% Syntax   : Number of formulae    :   46 (  12 unt;   0 def)
%            Number of atoms       :  151 (  12 equ)
%            Maximal formula atoms :   16 (   3 avg)
%            Number of connectives :  126 (  21   ~;   6   |;  61   &)
%                                         (   7 <=>;  31  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   16 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   18 (  17 usr;   0 prp; 1-3 aty)
%            Number of functors    :    5 (   5 usr;   5 con; 0-0 aty)
%            Number of variables   :  107 (  84   !;  23   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(sos,axiom,
    ! [X0,X1,X2,X3] :
      ( ( min_precedes(X0,X1,X3)
        & min_precedes(X1,X2,X3) )
     => min_precedes(X0,X2,X3) ) ).

fof(sos_01,axiom,
    ! [X4,X5,X6] :
      ( ( earlier(X4,X5)
        & earlier(X5,X6) )
     => earlier(X4,X6) ) ).

fof(sos_02,axiom,
    ! [X7,X8,X9,X10] :
      ( ( occurrence_of(X9,X10)
        & root_occ(X7,X9)
        & root_occ(X8,X9) )
     => X7 = X8 ) ).

fof(sos_03,axiom,
    ! [X11,X12,X13,X14] :
      ( ( occurrence_of(X13,X14)
        & ~ atomic(X14)
        & leaf_occ(X11,X13)
        & leaf_occ(X12,X13) )
     => X11 = X12 ) ).

fof(sos_04,axiom,
    ! [X15,X16,X17] :
      ( next_subocc(X15,X16,X17)
    <=> ( min_precedes(X15,X16,X17)
        & ~ ? [X18] :
              ( min_precedes(X15,X18,X17)
              & min_precedes(X18,X16,X17) ) ) ) ).

fof(sos_05,axiom,
    ! [X19,X20,X21] :
      ( next_subocc(X19,X20,X21)
     => ( arboreal(X19)
        & arboreal(X20) ) ) ).

fof(sos_06,axiom,
    ! [X22,X23,X24] :
      ( min_precedes(X22,X23,X24)
     => precedes(X22,X23) ) ).

fof(sos_07,axiom,
    ! [X25,X26,X27] :
      ( min_precedes(X25,X26,X27)
     => ~ root(X26,X27) ) ).

fof(sos_08,axiom,
    ! [X28,X29] :
      ( precedes(X28,X29)
    <=> ( earlier(X28,X29)
        & legal(X29) ) ) ).

fof(sos_09,axiom,
    ! [X30,X31] :
      ( earlier(X30,X31)
     => ~ earlier(X31,X30) ) ).

fof(sos_10,axiom,
    ! [X32,X33] :
      ( root_occ(X32,X33)
    <=> ? [X34] :
          ( occurrence_of(X33,X34)
          & subactivity_occurrence(X32,X33)
          & root(X32,X34) ) ) ).

fof(sos_11,axiom,
    ! [X35,X36] :
      ( leaf_occ(X35,X36)
    <=> ? [X37] :
          ( occurrence_of(X36,X37)
          & subactivity_occurrence(X35,X36)
          & leaf(X35,X37) ) ) ).

fof(sos_12,axiom,
    ! [X38,X39] :
      ( root(X38,X39)
     => legal(X38) ) ).

fof(sos_13,axiom,
    ! [X40,X41] :
      ( occurrence_of(X40,X41)
     => ( arboreal(X40)
      <=> atomic(X41) ) ) ).

fof(sos_14,axiom,
    ! [X42,X43] :
      ( leaf(X42,X43)
    <=> ( ( root(X42,X43)
          | ? [X44] : min_precedes(X44,X42,X43) )
        & ~ ? [X45] : min_precedes(X42,X45,X43) ) ) ).

fof(sos_15,axiom,
    ! [X46,X47] :
      ( atocc(X46,X47)
    <=> ? [X48] :
          ( subactivity(X47,X48)
          & atomic(X48)
          & occurrence_of(X46,X48) ) ) ).

fof(sos_16,axiom,
    ! [X49,X50] :
      ( ( atocc(X49,X50)
        & legal(X49) )
     => root(X49,X50) ) ).

fof(sos_17,axiom,
    ! [X51] :
      ( legal(X51)
     => arboreal(X51) ) ).

fof(sos_18,axiom,
    ! [X52] :
      ( activity_occurrence(X52)
     => ? [X53] :
          ( activity(X53)
          & occurrence_of(X52,X53) ) ) ).

fof(sos_19,axiom,
    ! [X54,X55] :
      ( subactivity_occurrence(X54,X55)
     => ( activity_occurrence(X54)
        & activity_occurrence(X55) ) ) ).

fof(sos_20,axiom,
    ! [X56,X57,X58] :
      ( ( occurrence_of(X56,X58)
        & root_occ(X57,X56) )
     => ~ ? [X59] : min_precedes(X59,X57,X58) ) ).

fof(sos_21,axiom,
    ! [X60,X61,X62] :
      ( ( occurrence_of(X60,X62)
        & leaf_occ(X61,X60) )
     => ~ ? [X63] : min_precedes(X61,X63,X62) ) ).

fof(sos_22,axiom,
    ! [X64,X65,X66] :
      ( ( occurrence_of(X64,X65)
        & occurrence_of(X64,X66) )
     => X65 = X66 ) ).

fof(sos_23,axiom,
    ! [X67,X68] :
      ( ( leaf(X67,X68)
        & ~ atomic(X68) )
     => ? [X69] :
          ( occurrence_of(X69,X68)
          & leaf_occ(X67,X69) ) ) ).

fof(sos_24,axiom,
    ! [X70,X71,X72] :
      ( min_precedes(X71,X72,X70)
     => ? [X73] :
          ( occurrence_of(X73,X70)
          & subactivity_occurrence(X71,X73)
          & subactivity_occurrence(X72,X73) ) ) ).

fof(sos_25,axiom,
    ! [X74,X75] :
      ( ( leaf(X74,X75)
        & ~ atomic(X75) )
     => ? [X76] :
          ( occurrence_of(X76,X75)
          & leaf_occ(X74,X76) ) ) ).

fof(sos_26,axiom,
    ! [X77,X78,X79] :
      ( min_precedes(X78,X79,X77)
     => ? [X80,X81] :
          ( subactivity(X80,X77)
          & subactivity(X81,X77)
          & atocc(X78,X80)
          & atocc(X79,X81) ) ) ).

fof(sos_27,axiom,
    ! [X82,X83] :
      ( root(X83,X82)
     => ? [X84] :
          ( subactivity(X84,X82)
          & atocc(X83,X84) ) ) ).

fof(sos_28,axiom,
    ! [X85,X86,X87,X88] :
      ( ( occurrence_of(X86,X85)
        & arboreal(X87)
        & arboreal(X88)
        & subactivity_occurrence(X87,X86)
        & subactivity_occurrence(X88,X86) )
     => ( min_precedes(X87,X88,X85)
        | min_precedes(X88,X87,X85)
        | X87 = X88 ) ) ).

fof(sos_29,axiom,
    ! [X89,X90] :
      ( occurrence_of(X90,X89)
     => ( activity(X89)
        & activity_occurrence(X90) ) ) ).

fof(sos_30,axiom,
    ! [X91,X92] :
      ( ( occurrence_of(X92,X91)
        & ~ atomic(X91) )
     => ? [X93] :
          ( root(X93,X91)
          & subactivity_occurrence(X93,X92) ) ) ).

fof(sos_31,axiom,
    ! [X94] :
      ( activity(X94)
     => subactivity(X94,X94) ) ).

fof(sos_32,axiom,
    ! [X95,X96] :
      ( ( occurrence_of(X96,tptp0)
        & subactivity_occurrence(X95,X96)
        & arboreal(X95)
        & ~ leaf_occ(X95,X96) )
     => ? [X97,X98,X99] :
          ( occurrence_of(X97,tptp3)
          & next_subocc(X95,X97,tptp0)
          & occurrence_of(X98,tptp4)
          & min_precedes(X97,X98,tptp0)
          & ( occurrence_of(X99,tptp1)
            | occurrence_of(X99,tptp2) )
          & min_precedes(X98,X99,tptp0)
          & ! [X100] :
              ( min_precedes(X97,X100,tptp0)
             => ( X100 = X98
                | X100 = X99 ) ) ) ) ).

fof(sos_33,axiom,
    activity(tptp0) ).

fof(sos_34,axiom,
    ~ atomic(tptp0) ).

fof(sos_35,axiom,
    atomic(tptp4) ).

fof(sos_36,axiom,
    atomic(tptp1) ).

fof(sos_37,axiom,
    atomic(tptp2) ).

fof(sos_38,axiom,
    atomic(tptp3) ).

fof(sos_39,axiom,
    tptp4 != tptp3 ).

fof(sos_40,axiom,
    tptp4 != tptp1 ).

fof(sos_41,axiom,
    tptp4 != tptp2 ).

fof(sos_42,axiom,
    tptp3 != tptp1 ).

fof(sos_43,axiom,
    tptp3 != tptp2 ).

fof(sos_44,axiom,
    tptp1 != tptp2 ).

fof(goals,conjecture,
    ! [X101,X102] :
      ( ( occurrence_of(X102,tptp0)
        & subactivity_occurrence(X101,X102)
        & arboreal(X101)
        & ~ leaf_occ(X101,X102) )
     => ? [X103,X104] :
          ( occurrence_of(X103,tptp3)
          & next_subocc(X101,X103,tptp0)
          & ( occurrence_of(X104,tptp1)
            | occurrence_of(X104,tptp2) )
          & min_precedes(X103,X104,tptp0)
          & leaf_occ(X104,X102)
          & ( occurrence_of(X104,tptp1)
           => ~ ? [X105] :
                  ( occurrence_of(X105,tptp2)
                  & min_precedes(X103,X105,tptp0) ) )
          & ( occurrence_of(X104,tptp2)
           => ~ ? [X106] :
                  ( occurrence_of(X106,tptp1)
                  & min_precedes(X103,X106,tptp0) ) ) ) ) ).

%------------------------------------------------------------------------------
