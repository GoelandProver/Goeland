fof(sos_13,axiom,
    ! [X43] :
      ( arboreal(X43)
     <= legal(X43) ) ).

fof(sos_22,axiom,
    ! [X65,X66,X67] :
      ( ~ root(X66,X67)
     <= min_precedes(X65,X66,X67) ) ).

fof(sos,axiom,
    ! [X0,X1] :
      ( ? [X2] :
          ( root(X2,X0)
          & subactivity_occurrence(X2,X1) )
     <= ( ~ atomic(X0)
        & occurrence_of(X1,X0) ) ) ).

fof(sos_37,axiom,
    atomic(tptp2) ).

fof(sos_32,axiom,
    ! [X101] :
      ( ? [X102,X103] :
          ( occurrence_of(X102,tptp4)
          & leaf_occ(X103,X101)
          & next_subocc(X102,X103,tptp0)
          & occurrence_of(X103,tptp3)
          & root_occ(X102,X101) )
     <= occurrence_of(X101,tptp0) ) ).

fof(sos_31,axiom,
    ! [X97,X98,X99,X100] :
      ( min_precedes(X98,X99,X100)
     <= ( precedes(X98,X99)
        & min_precedes(X97,X99,X100)
        & min_precedes(X97,X98,X100) ) ) ).

fof(sos_39,axiom,
    tptp1 != tptp4 ).

fof(sos_12,axiom,
    ! [X41] :
      ( ? [X42] :
          ( occurrence_of(X41,X42)
          & activity(X42) )
     <= activity_occurrence(X41) ) ).

fof(sos_20,axiom,
    ! [X61,X62] :
      ( ~ earlier(X62,X61)
     <= earlier(X61,X62) ) ).

fof(sos_34,axiom,
    ~ atomic(tptp0) ).

fof(sos_29,axiom,
    ! [X90,X91,X92,X93] :
      ( ( root_occ(X90,X92)
        & root_occ(X91,X92)
        & occurrence_of(X92,X93) )
     => X91 = X90 ) ).

fof(sos_42,axiom,
    tptp3 != tptp1 ).

fof(sos_26,axiom,
    ! [X78,X79,X80] :
      ( next_subocc(X78,X79,X80)
    <=> ( min_precedes(X78,X79,X80)
        & ~ ? [X81] :
              ( min_precedes(X78,X81,X80)
              & min_precedes(X81,X79,X80) ) ) ) ).

fof(sos_11,axiom,
    ! [X39,X40] :
      ( subactivity_occurrence(X39,X40)
     => ( activity_occurrence(X39)
        & activity_occurrence(X40) ) ) ).

fof(sos_10,axiom,
    ! [X35,X36,X37] :
      ( ( occurrence_of(X35,X37)
        & root_occ(X36,X35) )
     => ~ ? [X38] : min_precedes(X38,X36,X37) ) ).

fof(sos_15,axiom,
    ! [X47,X48] :
      ( ( ( ? [X49] : min_precedes(X49,X47,X48)
          | root(X47,X48) )
        & ~ ? [X50] : min_precedes(X47,X50,X48) )
    <=> leaf(X47,X48) ) ).

fof(sos_05,axiom,
    ! [X18,X19] :
      ( ? [X20] :
          ( subactivity(X20,X18)
          & atocc(X19,X20) )
     <= root(X19,X18) ) ).

fof(sos_25,axiom,
    ! [X75,X76,X77] :
      ( ( arboreal(X76)
        & arboreal(X75) )
     <= next_subocc(X75,X76,X77) ) ).

fof(sos_06,axiom,
    ! [X21,X22,X23] :
      ( min_precedes(X22,X23,X21)
     => ? [X24] :
          ( occurrence_of(X24,X21)
          & subactivity_occurrence(X23,X24)
          & subactivity_occurrence(X22,X24) ) ) ).

fof(sos_04,axiom,
    ! [X14,X15,X16,X17] :
      ( ( arboreal(X16)
        & arboreal(X17)
        & subactivity_occurrence(X16,X15)
        & subactivity_occurrence(X17,X15)
        & occurrence_of(X15,X14) )
     => ( X17 = X16
        | min_precedes(X17,X16,X14)
        | min_precedes(X16,X17,X14) ) ) ).

fof(sos_40,axiom,
    tptp3 != tptp4 ).

fof(sos_24,axiom,
    ! [X72,X73,X74] :
      ( precedes(X72,X73)
     <= min_precedes(X72,X73,X74) ) ).

fof(sos_17,axiom,
    ! [X53,X54] :
      ( legal(X53)
     <= root(X53,X54) ) ).

fof(sos_03,axiom,
    ! [X12,X13] :
      ( ( activity(X12)
        & activity_occurrence(X13) )
     <= occurrence_of(X13,X12) ) ).

fof(sos_08,axiom,
    ! [X28,X29,X30] :
      ( X29 = X30
     <= ( occurrence_of(X28,X29)
        & occurrence_of(X28,X30) ) ) ).

fof(sos_16,axiom,
    ! [X51,X52] :
      ( occurrence_of(X51,X52)
     => ( atomic(X52)
      <=> arboreal(X51) ) ) ).

fof(sos_47,axiom,
    ! [X108,X109] :
      ( ? [X110] :
          ( occurrence_of(X110,tptp1)
          & next_subocc(X108,X110,tptp0) )
     <= ( ~ leaf_occ(X108,X109)
        & arboreal(X108)
        & subactivity_occurrence(X108,X109)
        & occurrence_of(X109,tptp0) ) ) ).

fof(goals,conjecture,
    ~ ? [X111] : occurrence_of(X111,tptp0) ).

fof(sos_14,axiom,
    ! [X44,X45] :
      ( ? [X46] :
          ( subactivity(X45,X46)
          & atomic(X46)
          & occurrence_of(X44,X46) )
    <=> atocc(X44,X45) ) ).

fof(sos_23,axiom,
    ! [X68,X69,X70] :
      ( ? [X71] :
          ( root(X71,X70)
          & min_precedes(X71,X69,X70) )
     <= min_precedes(X68,X69,X70) ) ).

fof(sos_46,axiom,
    ! [X106,X107] :
      ( ( subactivity_occurrence(X106,X107)
        & arboreal(X106)
        & ~ leaf_occ(X106,X107)
        & occurrence_of(X107,tptp0) )
     => root_occ(X106,X107) ) ).

fof(sos_33,axiom,
    activity(tptp0) ).

fof(sos_36,axiom,
    atomic(tptp3) ).

fof(sos_43,axiom,
    tptp1 != tptp2 ).

fof(sos_07,axiom,
    ! [X25,X26] :
      ( ? [X27] :
          ( occurrence_of(X27,X26)
          & leaf_occ(X25,X27) )
     <= ( ~ atomic(X26)
        & leaf(X25,X26) ) ) ).

fof(sos_30,axiom,
    ! [X94,X95,X96] :
      ( earlier(X94,X96)
     <= ( earlier(X95,X96)
        & earlier(X94,X95) ) ) ).

fof(sos_27,axiom,
    ! [X82,X83,X84,X85] :
      ( ( min_precedes(X82,X83,X84)
        & subactivity_occurrence(X83,X85)
        & occurrence_of(X85,X84) )
     => subactivity_occurrence(X82,X85) ) ).

fof(sos_45,axiom,
    ! [X104,X105] :
      ( root_occ(X104,X105)
     <= ( subactivity_occurrence(X104,X105)
        & arboreal(X104)
        & ~ leaf_occ(X104,X105)
        & occurrence_of(X105,tptp0) ) ) ).

fof(sos_44,axiom,
    tptp2 != tptp3 ).

fof(sos_35,axiom,
    atomic(tptp4) ).

fof(sos_38,axiom,
    atomic(tptp1) ).

fof(sos_01,axiom,
    ! [X3,X4,X5,X6,X7] :
      ( min_precedes(X5,X7,X3)
     <= ( occurrence_of(X4,X3)
        & min_precedes(X6,X5,X3)
        & X5 != X7
        & subactivity_occurrence(X5,X4)
        & leaf_occ(X7,X4)
        & root_occ(X6,X4) ) ) ).

fof(sos_28,axiom,
    ! [X86,X87,X88,X89] :
      ( X86 = X87
     <= ( leaf_occ(X87,X88)
        & leaf_occ(X86,X88)
        & ~ atomic(X89)
        & occurrence_of(X88,X89) ) ) ).

fof(sos_41,axiom,
    tptp4 != tptp2 ).

fof(sos_02,axiom,
    ! [X8,X9,X10,X11] :
      ( X11 = X10
     <= ( arboreal(X10)
        & ~ min_precedes(X10,X11,X8)
        & leaf_occ(X11,X9)
        & subactivity_occurrence(X10,X9)
        & occurrence_of(X9,X8) ) ) ).

fof(sos_18,axiom,
    ! [X55,X56] :
      ( leaf_occ(X55,X56)
    <=> ? [X57] :
          ( leaf(X55,X57)
          & subactivity_occurrence(X55,X56)
          & occurrence_of(X56,X57) ) ) ).

fof(sos_09,axiom,
    ! [X31,X32,X33] :
      ( ~ ? [X34] : min_precedes(X32,X34,X33)
     <= ( occurrence_of(X31,X33)
        & leaf_occ(X32,X31) ) ) ).

fof(sos_21,axiom,
    ! [X63,X64] :
      ( precedes(X63,X64)
    <=> ( earlier(X63,X64)
        & legal(X64) ) ) ).

fof(sos_19,axiom,
    ! [X58,X59] :
      ( ? [X60] :
          ( occurrence_of(X59,X60)
          & root(X58,X60)
          & subactivity_occurrence(X58,X59) )
    <=> root_occ(X58,X59) ) ).

