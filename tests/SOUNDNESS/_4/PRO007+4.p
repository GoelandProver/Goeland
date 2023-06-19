%------------------------------------------------------------------------------
% File     : PRO007+4 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Processes
% Problem  : PSL cliff problem coe-7.1.1
% Version  : Especial : Augmented > Especial.
% English  : 
% Refs     : [Hal09] Halcomb (2009), Email to G. Sutcliffe
% Source   : [Hal09]
% Names    : unique-cat-p9x__coe-7.1.1-pd [Hal09]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0, 0.33 v7.0.0, 0.00 v6.4.0, 0.33 v6.2.0, 0.45 v6.1.0, 0.64 v6.0.0, 0.69 v5.5.0, 0.50 v5.4.0, 0.57 v5.3.0, 0.71 v5.2.0, 0.67 v5.0.0, 0.57 v4.1.0, 0.80 v4.0.0
% Syntax   : Number of formulae    :   46 (  12 unt;   0 def)
%            Number of atoms       :  150 (  12 equ)
%            Maximal formula atoms :   13 (   3 avg)
%            Number of connectives :  124 (  20   ~;   5   |;  62   &)
%                                         (   7 <=>;  30  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   15 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   18 (  17 usr;   0 prp; 1-3 aty)
%            Number of functors    :    5 (   5 usr;   5 con; 0-0 aty)
%            Number of variables   :  110 (  89   !;  21   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(sos,axiom,
    ! [X0,X1] :
      ( ( occurrence_of(X1,X0)
        & ~ atomic(X0) )
     => ? [X2] :
          ( root(X2,X0)
          & subactivity_occurrence(X2,X1) ) ) ).

fof(sos_01,axiom,
    ! [X3,X4,X5,X6,X7] :
      ( ( occurrence_of(X4,X3)
        & root_occ(X6,X4)
        & leaf_occ(X7,X4)
        & subactivity_occurrence(X5,X4)
        & min_precedes(X6,X5,X3)
        & X5 != X7 )
     => min_precedes(X5,X7,X3) ) ).

fof(sos_02,axiom,
    ! [X8,X9,X10,X11] :
      ( ( occurrence_of(X9,X8)
        & subactivity_occurrence(X10,X9)
        & leaf_occ(X11,X9)
        & arboreal(X10)
        & ~ min_precedes(X10,X11,X8) )
     => X11 = X10 ) ).

fof(sos_03,axiom,
    ! [X12,X13] :
      ( occurrence_of(X13,X12)
     => ( activity(X12)
        & activity_occurrence(X13) ) ) ).

fof(sos_04,axiom,
    ! [X14,X15,X16,X17] :
      ( ( occurrence_of(X15,X14)
        & arboreal(X16)
        & arboreal(X17)
        & subactivity_occurrence(X16,X15)
        & subactivity_occurrence(X17,X15) )
     => ( min_precedes(X16,X17,X14)
        | min_precedes(X17,X16,X14)
        | X16 = X17 ) ) ).

fof(sos_05,axiom,
    ! [X18,X19] :
      ( root(X19,X18)
     => ? [X20] :
          ( subactivity(X20,X18)
          & atocc(X19,X20) ) ) ).

fof(sos_06,axiom,
    ! [X21,X22,X23] :
      ( min_precedes(X22,X23,X21)
     => ? [X24] :
          ( occurrence_of(X24,X21)
          & subactivity_occurrence(X22,X24)
          & subactivity_occurrence(X23,X24) ) ) ).

fof(sos_07,axiom,
    ! [X25,X26] :
      ( ( leaf(X25,X26)
        & ~ atomic(X26) )
     => ? [X27] :
          ( occurrence_of(X27,X26)
          & leaf_occ(X25,X27) ) ) ).

fof(sos_08,axiom,
    ! [X28,X29,X30] :
      ( ( occurrence_of(X28,X29)
        & occurrence_of(X28,X30) )
     => X29 = X30 ) ).

fof(sos_09,axiom,
    ! [X31,X32,X33] :
      ( ( occurrence_of(X31,X33)
        & leaf_occ(X32,X31) )
     => ~ ? [X34] : min_precedes(X32,X34,X33) ) ).

fof(sos_10,axiom,
    ! [X35,X36,X37] :
      ( ( occurrence_of(X35,X37)
        & root_occ(X36,X35) )
     => ~ ? [X38] : min_precedes(X38,X36,X37) ) ).

fof(sos_11,axiom,
    ! [X39,X40] :
      ( subactivity_occurrence(X39,X40)
     => ( activity_occurrence(X39)
        & activity_occurrence(X40) ) ) ).

fof(sos_12,axiom,
    ! [X41] :
      ( activity_occurrence(X41)
     => ? [X42] :
          ( activity(X42)
          & occurrence_of(X41,X42) ) ) ).

fof(sos_13,axiom,
    ! [X43] :
      ( legal(X43)
     => arboreal(X43) ) ).

fof(sos_14,axiom,
    ! [X44,X45] :
      ( atocc(X44,X45)
    <=> ? [X46] :
          ( subactivity(X45,X46)
          & atomic(X46)
          & occurrence_of(X44,X46) ) ) ).

fof(sos_15,axiom,
    ! [X47,X48] :
      ( leaf(X47,X48)
    <=> ( ( root(X47,X48)
          | ? [X49] : min_precedes(X49,X47,X48) )
        & ~ ? [X50] : min_precedes(X47,X50,X48) ) ) ).

fof(sos_16,axiom,
    ! [X51,X52] :
      ( occurrence_of(X51,X52)
     => ( arboreal(X51)
      <=> atomic(X52) ) ) ).

fof(sos_17,axiom,
    ! [X53,X54] :
      ( root(X53,X54)
     => legal(X53) ) ).

fof(sos_18,axiom,
    ! [X55,X56] :
      ( leaf_occ(X55,X56)
    <=> ? [X57] :
          ( occurrence_of(X56,X57)
          & subactivity_occurrence(X55,X56)
          & leaf(X55,X57) ) ) ).

fof(sos_19,axiom,
    ! [X58,X59] :
      ( root_occ(X58,X59)
    <=> ? [X60] :
          ( occurrence_of(X59,X60)
          & subactivity_occurrence(X58,X59)
          & root(X58,X60) ) ) ).

fof(sos_20,axiom,
    ! [X61,X62] :
      ( earlier(X61,X62)
     => ~ earlier(X62,X61) ) ).

fof(sos_21,axiom,
    ! [X63,X64] :
      ( precedes(X63,X64)
    <=> ( earlier(X63,X64)
        & legal(X64) ) ) ).

fof(sos_22,axiom,
    ! [X65,X66,X67] :
      ( min_precedes(X65,X66,X67)
     => ~ root(X66,X67) ) ).

fof(sos_23,axiom,
    ! [X68,X69,X70] :
      ( min_precedes(X68,X69,X70)
     => ? [X71] :
          ( root(X71,X70)
          & min_precedes(X71,X69,X70) ) ) ).

fof(sos_24,axiom,
    ! [X72,X73,X74] :
      ( min_precedes(X72,X73,X74)
     => precedes(X72,X73) ) ).

fof(sos_25,axiom,
    ! [X75,X76,X77] :
      ( next_subocc(X75,X76,X77)
     => ( arboreal(X75)
        & arboreal(X76) ) ) ).

fof(sos_26,axiom,
    ! [X78,X79,X80] :
      ( next_subocc(X78,X79,X80)
    <=> ( min_precedes(X78,X79,X80)
        & ~ ? [X81] :
              ( min_precedes(X78,X81,X80)
              & min_precedes(X81,X79,X80) ) ) ) ).

fof(sos_27,axiom,
    ! [X82,X83,X84,X85] :
      ( ( min_precedes(X82,X83,X84)
        & occurrence_of(X85,X84)
        & subactivity_occurrence(X83,X85) )
     => subactivity_occurrence(X82,X85) ) ).

fof(sos_28,axiom,
    ! [X86,X87,X88,X89] :
      ( ( occurrence_of(X88,X89)
        & ~ atomic(X89)
        & leaf_occ(X86,X88)
        & leaf_occ(X87,X88) )
     => X86 = X87 ) ).

fof(sos_29,axiom,
    ! [X90,X91,X92,X93] :
      ( ( occurrence_of(X92,X93)
        & root_occ(X90,X92)
        & root_occ(X91,X92) )
     => X90 = X91 ) ).

fof(sos_30,axiom,
    ! [X94,X95,X96] :
      ( ( earlier(X94,X95)
        & earlier(X95,X96) )
     => earlier(X94,X96) ) ).

fof(sos_31,axiom,
    ! [X97,X98,X99,X100] :
      ( ( min_precedes(X97,X98,X100)
        & min_precedes(X97,X99,X100)
        & precedes(X98,X99) )
     => min_precedes(X98,X99,X100) ) ).

fof(sos_32,axiom,
    ! [X101] :
      ( occurrence_of(X101,tptp0)
     => ? [X102,X103,X104] :
          ( occurrence_of(X102,tptp3)
          & root_occ(X102,X101)
          & occurrence_of(X103,tptp4)
          & next_subocc(X102,X103,tptp0)
          & ( occurrence_of(X104,tptp1)
            | occurrence_of(X104,tptp2) )
          & next_subocc(X103,X104,tptp0)
          & leaf_occ(X104,X101) ) ) ).

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
    ! [X105] :
      ( occurrence_of(X105,tptp0)
     => ? [X106,X107] :
          ( occurrence_of(X106,tptp3)
          & root_occ(X106,X105)
          & ( occurrence_of(X107,tptp1)
            | occurrence_of(X107,tptp2) )
          & min_precedes(X106,X107,tptp0)
          & leaf_occ(X107,X105)
          & ( occurrence_of(X107,tptp1)
           => ~ ? [X108] :
                  ( occurrence_of(X108,tptp2)
                  & min_precedes(X106,X108,tptp0) ) )
          & ( occurrence_of(X107,tptp2)
           => ~ ? [X109] :
                  ( occurrence_of(X109,tptp1)
                  & min_precedes(X106,X109,tptp0) ) ) ) ) ).

%------------------------------------------------------------------------------
