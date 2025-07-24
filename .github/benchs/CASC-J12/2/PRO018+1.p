fof(sos_22,axiom,
    ! [X60,X61,X62] :
      ( ( ~ ? [X63] :
              ( min_precedes(X63,X61,X62)
              & min_precedes(X60,X63,X62) )
        & min_precedes(X60,X61,X62) )
    <=> next_subocc(X60,X61,X62) ) ).

fof(goals,conjecture,
    ! [X111,X112] :
      ( ? [X113,X114] :
          ( occurrence_of(X113,tptp3)
          & next_subocc(X111,X113,tptp0)
          & ( occurrence_of(X114,tptp2)
            | occurrence_of(X114,tptp1) )
          & min_precedes(X113,X114,tptp0)
          & leaf_occ(X114,X112)
          & ( occurrence_of(X114,tptp1)
           => ~ ? [X115] :
                  ( min_precedes(X113,X115,tptp0)
                  & occurrence_of(X115,tptp2) ) )
          & ( ~ ? [X116] :
                  ( min_precedes(X113,X116,tptp0)
                  & occurrence_of(X116,tptp1) )
           <= occurrence_of(X114,tptp2) ) )
     <= ( arboreal(X111)
        & ~ leaf_occ(X111,X112)
        & subactivity_occurrence(X111,X112)
        & occurrence_of(X112,tptp0) ) ) ).

fof(sos_36,axiom,
    activity(tptp0) ).

fof(sos_47,axiom,
    tptp2 != tptp1 ).

fof(sos_18,axiom,
    ! [X45,X46,X47,X48] :
      ( min_precedes(X46,X47,X48)
     <= ( min_precedes(X45,X46,X48)
        & min_precedes(X45,X47,X48)
        & precedes(X46,X47) ) ) ).

fof(sos_09,axiom,
    ! [X19,X20] :
      ( legal(X20)
     <= ( earlier(X20,X19)
        & legal(X19) ) ) ).

fof(sos_33,axiom,
    ! [X99,X100] :
      ( root_occ(X99,X100)
    <=> ? [X101] :
          ( occurrence_of(X100,X101)
          & subactivity_occurrence(X99,X100)
          & root(X99,X101) ) ) ).

fof(sos_38,axiom,
    atomic(tptp4) ).

fof(sos_12,axiom,
    ! [X28,X29] :
      ( ? [X30] :
          ( atocc(X29,X30)
          & subactivity(X30,X28) )
     <= root(X29,X28) ) ).

fof(sos_17,axiom,
    ! [X43,X44] :
      ( ( atocc(X43,X44)
        & legal(X43) )
     => root(X43,X44) ) ).

fof(sos_20,axiom,
    ! [X52,X53,X54,X55] :
      ( min_precedes(X53,X54,X55)
     <= ( min_precedes(X54,X52,X55)
        & precedes(X53,X54)
        & min_precedes(X53,X52,X55) ) ) ).

fof(sos_39,axiom,
    atomic(tptp1) ).

fof(sos_21,axiom,
    ! [X56,X57] :
      ( leaf(X56,X57)
    <=> ( ( ? [X58] : min_precedes(X58,X56,X57)
          | root(X56,X57) )
        & ~ ? [X59] : min_precedes(X56,X59,X57) ) ) ).

fof(sos_35,axiom,
    ! [X105,X106] :
      ( ( occurrence_of(X106,tptp0)
        & arboreal(X105)
        & ~ leaf_occ(X105,X106)
        & subactivity_occurrence(X105,X106) )
     => ? [X107,X108,X109] :
          ( next_subocc(X105,X107,tptp0)
          & occurrence_of(X108,tptp4)
          & ! [X110] :
              ( min_precedes(X107,X110,tptp0)
             => ( X109 = X110
                | X110 = X108 ) )
          & min_precedes(X108,X109,tptp0)
          & ( occurrence_of(X109,tptp2)
            | occurrence_of(X109,tptp1) )
          & min_precedes(X107,X108,tptp0)
          & occurrence_of(X107,tptp3) ) ) ).

fof(sos_07,axiom,
    ! [X16,X17] :
      ( occurrence_of(X16,X17)
     => ( arboreal(X16)
      <=> atomic(X17) ) ) ).

fof(sos_04,axiom,
    ! [X8,X9] :
      ( ~ earlier(X9,X8)
     <= earlier(X8,X9) ) ).

fof(sos_43,axiom,
    tptp4 != tptp1 ).

fof(sos_06,axiom,
    ! [X13,X14,X15] :
      ( ( earlier(X15,X13)
        | earlier(X13,X15)
        | X15 = X13 )
     <= ( earlier(X15,X14)
        & earlier(X13,X14) ) ) ).

fof(sos_14,axiom,
    ! [X35,X36,X37] :
      ( min_precedes(X35,X36,X37)
     => ~ root(X36,X37) ) ).

fof(sos_29,axiom,
    ! [X83,X84,X85,X86] :
      ( ( min_precedes(X83,X84,X85)
        & subactivity_occurrence(X84,X86)
        & occurrence_of(X86,X85) )
     => subactivity_occurrence(X83,X86) ) ).

fof(sos_31,axiom,
    ! [X91,X92,X93] :
      ( ( subactivity_occurrence(X91,X92)
        & subactivity_occurrence(X92,X93) )
     => subactivity_occurrence(X91,X93) ) ).

fof(sos_11,axiom,
    ! [X23,X24,X25] :
      ( ? [X26,X27] :
          ( subactivity(X27,X23)
          & atocc(X24,X26)
          & atocc(X25,X27)
          & subactivity(X26,X23) )
     <= min_precedes(X24,X25,X23) ) ).

fof(sos_44,axiom,
    tptp4 != tptp2 ).

fof(sos_27,axiom,
    ! [X76,X77] :
      ( ? [X78] :
          ( root(X78,X76)
          & subactivity_occurrence(X78,X77) )
     <= ( occurrence_of(X77,X76)
        & ~ atomic(X76) ) ) ).

fof(sos_40,axiom,
    atomic(tptp2) ).

fof(sos_46,axiom,
    tptp3 != tptp2 ).

fof(sos_37,axiom,
    ~ atomic(tptp0) ).

fof(sos_19,axiom,
    ! [X49,X50,X51] :
      ( ~ atomic(X51)
     <= min_precedes(X49,X50,X51) ) ).

fof(sos_10,axiom,
    ! [X21,X22] :
      ( ( legal(X22)
        & earlier(X21,X22) )
    <=> precedes(X21,X22) ) ).

fof(sos_05,axiom,
    ! [X10,X11,X12] :
      ( earlier(X10,X12)
     <= ( earlier(X11,X12)
        & earlier(X10,X11) ) ) ).

fof(sos_16,axiom,
    ! [X41,X42] :
      ( legal(X41)
     <= root(X41,X42) ) ).

fof(sos_24,axiom,
    ! [X67,X68] :
      ( ( activity_occurrence(X68)
        & activity_occurrence(X67) )
     <= subactivity_occurrence(X67,X68) ) ).

fof(sos_26,axiom,
    ! [X73,X74] :
      ( ( ~ atomic(X73)
        & root(X74,X73) )
     => ? [X75] :
          ( occurrence_of(X75,X73)
          & subactivity_occurrence(X74,X75) ) ) ).

fof(sos_34,axiom,
    ! [X102,X103] :
      ( leaf_occ(X102,X103)
    <=> ? [X104] :
          ( occurrence_of(X103,X104)
          & subactivity_occurrence(X102,X103)
          & leaf(X102,X104) ) ) ).

fof(sos_02,axiom,
    ! [X4,X5,X6] :
      ( ( occurrence_of(X4,X6)
        & occurrence_of(X4,X5) )
     => X6 = X5 ) ).

fof(sos_32,axiom,
    ! [X94,X95,X96,X97] :
      ( ( occurrence_of(X96,X94)
        & occurrence_of(X97,X95)
        & subactivity(X94,X95)
        & ~ subactivity_occurrence(X96,X97) )
     => ? [X98] :
          ( subactivity_occurrence(X98,X97)
          & ~ subactivity_occurrence(X98,X96) ) ) ).

fof(sos_41,axiom,
    atomic(tptp3) ).

fof(sos_13,axiom,
    ! [X31,X32,X33] :
      ( min_precedes(X31,X32,X33)
     => ? [X34] :
          ( min_precedes(X34,X32,X33)
          & root(X34,X33) ) ) ).

fof(sos_42,axiom,
    tptp4 != tptp3 ).

fof(sos_03,axiom,
    ! [X7] :
      ( activity(X7)
     => subactivity(X7,X7) ) ).

fof(sos_30,axiom,
    ! [X87,X88,X89,X90] :
      ( ( occurrence_of(X89,X87)
        & occurrence_of(X90,X88)
        & ~ atomic(X87)
        & subactivity_occurrence(X89,X90) )
     => subactivity(X87,X88) ) ).

fof(sos_15,axiom,
    ! [X38,X39,X40] :
      ( min_precedes(X38,X39,X40)
     => precedes(X38,X39) ) ).

fof(sos_25,axiom,
    ! [X69,X70,X71] :
      ( min_precedes(X70,X71,X69)
     => ? [X72] :
          ( subactivity_occurrence(X71,X72)
          & subactivity_occurrence(X70,X72)
          & occurrence_of(X72,X69) ) ) ).

fof(sos,axiom,
    ! [X0,X1] :
      ( occurrence_of(X1,X0)
     => ( activity(X0)
        & activity_occurrence(X1) ) ) ).

fof(sos_01,axiom,
    ! [X2] :
      ( ? [X3] :
          ( occurrence_of(X2,X3)
          & activity(X3) )
     <= activity_occurrence(X2) ) ).

fof(sos_28,axiom,
    ! [X79,X80,X81,X82] :
      ( ( occurrence_of(X80,X79)
        & arboreal(X82)
        & subactivity_occurrence(X81,X80)
        & subactivity_occurrence(X82,X80)
        & arboreal(X81) )
     => ( min_precedes(X81,X82,X79)
        | X82 = X81
        | min_precedes(X82,X81,X79) ) ) ).

fof(sos_23,axiom,
    ! [X64,X65] :
      ( atocc(X64,X65)
    <=> ? [X66] :
          ( subactivity(X65,X66)
          & occurrence_of(X64,X66)
          & atomic(X66) ) ) ).

fof(sos_45,axiom,
    tptp1 != tptp3 ).

fof(sos_08,axiom,
    ! [X18] :
      ( arboreal(X18)
     <= legal(X18) ) ).

