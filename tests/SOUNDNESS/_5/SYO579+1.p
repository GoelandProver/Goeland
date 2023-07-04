%------------------------------------------------------------------------------
% File     : SYO579+1 : TPTP v8.1.2. Released v5.5.0.
% Domain   : Syntactic
% Problem  : Small buttercup non-theorem
% Version  : Biased.
% English  :

% Refs     : [Tha10] Thau (2010), Email to Geoff Sutcliffe
% Source   : TPTP
% Names    : small_not_entailed.txt [Tha10]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.0.0, 0.17 v5.5.0
% Syntax   : Number of formulae    :   86 (  12 unt;   0 def)
%            Number of atoms       :  281 (   0 equ)
%            Maximal formula atoms :   16 (   3 avg)
%            Number of connectives :  285 (  90   ~;  28   |;  79   &)
%                                         (   1 <=>;  87  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   11 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   12 (  12 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :  143 (  88   !;  55   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments : 
%------------------------------------------------------------------------------
fof(sos_01,axiom,
    ! [X0] :
      ( k04_buttercup10620(X0)
     => k04_buttercup10619(X0) ) ).

fof(sos_02,axiom,
    ! [X1] :
      ( k04_buttercup10622(X1)
     => k04_buttercup10619(X1) ) ).

fof(sos_03,axiom,
    ! [X2] :
      ( b48_buttercup10102(X2)
     => b48_buttercup10098(X2) ) ).

fof(sos_04,axiom,
    ! [X3] :
      ( b48_buttercup10104(X3)
     => b48_buttercup10098(X3) ) ).

fof(sos_05,axiom,
    ! [X4] :
      ( b48_buttercup10107(X4)
     => b48_buttercup10098(X4) ) ).

fof(sos_06,axiom,
    ! [X5] :
      ( b48_buttercup10108(X5)
     => b48_buttercup10098(X5) ) ).

fof(sos_07,axiom,
    ! [X6] :
      ( b48_buttercup10109(X6)
     => b48_buttercup10098(X6) ) ).

fof(sos_08,axiom,
    ! [X7] :
      ( b48_buttercup10110(X7)
     => b48_buttercup10098(X7) ) ).

fof(sos_09,axiom,
    ! [X8] :
      ( b48_buttercup10111(X8)
     => b48_buttercup10098(X8) ) ).

fof(sos_10,axiom,
    ( ? [X9,X10,X11] :
        ( k04_buttercup10100(X9)
        & b48_buttercup10104(X9)
        & k04_buttercup10100(X10)
        & ~ b48_buttercup10104(X10)
        & ~ k04_buttercup10100(X11)
        & b48_buttercup10104(X11) )
    | ( ! [X12] :
          ( b48_buttercup10104(X12)
         => k04_buttercup10100(X12) )
      & ? [X13] :
          ( k04_buttercup10100(X13)
          & ~ b48_buttercup10104(X13) ) )
    | ( ! [X14] :
          ( k04_buttercup10100(X14)
         => b48_buttercup10104(X14) )
      & ? [X15] :
          ( b48_buttercup10104(X15)
          & ~ k04_buttercup10100(X15) ) )
    | ! [X16] :
        ( k04_buttercup10100(X16)
       => ~ b48_buttercup10104(X16) ) ) ).

fof(sos_11,axiom,
    ( ! [X17] :
        ( b48_buttercup10109(X17)
       => k04_buttercup10100(X17) )
    & ? [X18] :
        ( k04_buttercup10100(X18)
        & ~ b48_buttercup10109(X18) ) ) ).

fof(sos_12,axiom,
    ( ? [X19,X20,X21] :
        ( k04_buttercup10619(X19)
        & b48_buttercup10111(X19)
        & k04_buttercup10619(X20)
        & ~ b48_buttercup10111(X20)
        & ~ k04_buttercup10619(X21)
        & b48_buttercup10111(X21) )
    | ( ! [X22] :
          ( b48_buttercup10111(X22)
         => k04_buttercup10619(X22) )
      & ? [X23] :
          ( k04_buttercup10619(X23)
          & ~ b48_buttercup10111(X23) ) )
    | ( ! [X24] :
          ( k04_buttercup10619(X24)
         => b48_buttercup10111(X24) )
      & ? [X25] :
          ( b48_buttercup10111(X25)
          & ~ k04_buttercup10619(X25) ) )
    | ! [X26] :
        ( k04_buttercup10619(X26)
       => ~ b48_buttercup10111(X26) ) ) ).

fof(sos_13,axiom,
    ( ! [X27] :
        ( k04_buttercup10619(X27)
       => b48_buttercup10098(X27) )
    & ? [X28] :
        ( b48_buttercup10098(X28)
        & ~ k04_buttercup10619(X28) ) ) ).

fof(sos_14,axiom,
    ( ? [X29,X30,X31] :
        ( k04_buttercup10619(X29)
        & b48_buttercup10109(X29)
        & k04_buttercup10619(X30)
        & ~ b48_buttercup10109(X30)
        & ~ k04_buttercup10619(X31)
        & b48_buttercup10109(X31) )
    | ( ! [X32] :
          ( b48_buttercup10109(X32)
         => k04_buttercup10619(X32) )
      & ? [X33] :
          ( k04_buttercup10619(X33)
          & ~ b48_buttercup10109(X33) ) )
    | ( ! [X34] :
          ( k04_buttercup10619(X34)
         => b48_buttercup10109(X34) )
      & ? [X35] :
          ( b48_buttercup10109(X35)
          & ~ k04_buttercup10619(X35) ) )
    | ! [X36] :
        ( k04_buttercup10619(X36)
       => ~ b48_buttercup10109(X36) ) ) ).

fof(sos_15,axiom,
    ( ! [X37] :
        ( b48_buttercup10111(X37)
       => k04_buttercup10100(X37) )
    & ? [X38] :
        ( k04_buttercup10100(X38)
        & ~ b48_buttercup10111(X38) ) ) ).

fof(sos_16,axiom,
    ( ? [X39,X40,X41] :
        ( k04_buttercup10100(X39)
        & b48_buttercup10108(X39)
        & k04_buttercup10100(X40)
        & ~ b48_buttercup10108(X40)
        & ~ k04_buttercup10100(X41)
        & b48_buttercup10108(X41) )
    | ( ! [X42] :
          ( b48_buttercup10108(X42)
         => k04_buttercup10100(X42) )
      & ? [X43] :
          ( k04_buttercup10100(X43)
          & ~ b48_buttercup10108(X43) ) )
    | ( ! [X44] :
          ( k04_buttercup10100(X44)
         => b48_buttercup10108(X44) )
      & ? [X45] :
          ( b48_buttercup10108(X45)
          & ~ k04_buttercup10100(X45) ) )
    | ! [X46] :
        ( k04_buttercup10100(X46)
       => ~ b48_buttercup10108(X46) ) ) ).

fof(sos_17,axiom,
    ( ? [X47,X48,X49] :
        ( k04_buttercup10100(X47)
        & b48_buttercup10110(X47)
        & k04_buttercup10100(X48)
        & ~ b48_buttercup10110(X48)
        & ~ k04_buttercup10100(X49)
        & b48_buttercup10110(X49) )
    | ( ! [X50] :
          ( b48_buttercup10110(X50)
         => k04_buttercup10100(X50) )
      & ? [X51] :
          ( k04_buttercup10100(X51)
          & ~ b48_buttercup10110(X51) ) )
    | ( ! [X52] :
          ( k04_buttercup10100(X52)
         => b48_buttercup10110(X52) )
      & ? [X53] :
          ( b48_buttercup10110(X53)
          & ~ k04_buttercup10100(X53) ) )
    | ! [X54] :
        ( k04_buttercup10100(X54)
       => ~ b48_buttercup10110(X54) ) ) ).

fof(sos_18,axiom,
    ( ! [X55] :
        ( b48_buttercup10104(X55)
       => k04_buttercup10622(X55) )
    & ? [X56] :
        ( k04_buttercup10622(X56)
        & ~ b48_buttercup10104(X56) ) ) ).

fof(sos_19,axiom,
    ( ! [X57] :
        ( b48_buttercup10110(X57)
       => k04_buttercup10622(X57) )
    & ? [X58] :
        ( k04_buttercup10622(X58)
        & ~ b48_buttercup10110(X58) ) ) ).

fof(sos_20,axiom,
    ( ! [X59] :
        ( b48_buttercup10108(X59)
       => k04_buttercup10622(X59) )
    & ? [X60] :
        ( k04_buttercup10622(X60)
        & ~ b48_buttercup10108(X60) ) ) ).

fof(sos_21,axiom,
    ( ! [X61] :
        ( k04_buttercup10100(X61)
       => b48_buttercup10098(X61) )
    & ? [X62] :
        ( b48_buttercup10098(X62)
        & ~ k04_buttercup10100(X62) ) ) ).

fof(sos_22,axiom,
    ( ? [X63,X64,X65] :
        ( k04_buttercup10100(X63)
        & b48_buttercup10102(X63)
        & k04_buttercup10100(X64)
        & ~ b48_buttercup10102(X64)
        & ~ k04_buttercup10100(X65)
        & b48_buttercup10102(X65) )
    | ( ! [X66] :
          ( b48_buttercup10102(X66)
         => k04_buttercup10100(X66) )
      & ? [X67] :
          ( k04_buttercup10100(X67)
          & ~ b48_buttercup10102(X67) ) )
    | ( ! [X68] :
          ( k04_buttercup10100(X68)
         => b48_buttercup10102(X68) )
      & ? [X69] :
          ( b48_buttercup10102(X69)
          & ~ k04_buttercup10100(X69) ) )
    | ! [X70] :
        ( k04_buttercup10100(X70)
       => ~ b48_buttercup10102(X70) ) ) ).

fof(sos_23,axiom,
    ( ! [X71] :
        ( b48_buttercup10102(X71)
       => k04_buttercup10622(X71) )
    & ? [X72] :
        ( k04_buttercup10622(X72)
        & ~ b48_buttercup10102(X72) ) ) ).

fof(sos_24,axiom,
    ! [X73] :
      ( k04_buttercup10620(X73)
    <=> b48_buttercup10107(X73) ) ).

fof(sos_25,axiom,
    ( ? [X74,X75,X76] :
        ( k04_buttercup10100(X74)
        & b48_buttercup10107(X74)
        & k04_buttercup10100(X75)
        & ~ b48_buttercup10107(X75)
        & ~ k04_buttercup10100(X76)
        & b48_buttercup10107(X76) )
    | ( ! [X77] :
          ( b48_buttercup10107(X77)
         => k04_buttercup10100(X77) )
      & ? [X78] :
          ( k04_buttercup10100(X78)
          & ~ b48_buttercup10107(X78) ) )
    | ( ! [X79] :
          ( k04_buttercup10100(X79)
         => b48_buttercup10107(X79) )
      & ? [X80] :
          ( b48_buttercup10107(X80)
          & ~ k04_buttercup10100(X80) ) )
    | ! [X81] :
        ( k04_buttercup10100(X81)
       => ~ b48_buttercup10107(X81) ) ) ).

fof(sos_26,axiom,
    ? [X82] : k04_buttercup10100(X82) ).

fof(sos_27,axiom,
    ? [X83] : k04_buttercup10619(X83) ).

fof(sos_28,axiom,
    ? [X84] : k04_buttercup10620(X84) ).

fof(sos_29,axiom,
    ? [X85] : k04_buttercup10622(X85) ).

fof(sos_30,axiom,
    ? [X86] : b48_buttercup10098(X86) ).

fof(sos_31,axiom,
    ? [X87] : b48_buttercup10111(X87) ).

fof(sos_32,axiom,
    ? [X88] : b48_buttercup10110(X88) ).

fof(sos_33,axiom,
    ? [X89] : b48_buttercup10102(X89) ).

fof(sos_34,axiom,
    ? [X90] : b48_buttercup10104(X90) ).

fof(sos_35,axiom,
    ? [X91] : b48_buttercup10107(X91) ).

fof(sos_36,axiom,
    ? [X92] : b48_buttercup10108(X92) ).

fof(sos_37,axiom,
    ? [X93] : b48_buttercup10109(X93) ).

fof(sos_38,axiom,
    ! [X94] :
      ( k04_buttercup10100(X94)
     => ~ k04_buttercup10619(X94) ) ).

fof(sos_39,axiom,
    ! [X95] :
      ( k04_buttercup10620(X95)
     => ~ k04_buttercup10622(X95) ) ).

fof(sos_40,axiom,
    ! [X96] :
      ( k04_buttercup10622(X96)
     => ~ k04_buttercup10620(X96) ) ).

fof(sos_41,axiom,
    ! [X97] :
      ( k04_buttercup10619(X97)
     => ~ k04_buttercup10100(X97) ) ).

fof(sos_42,axiom,
    ! [X98] :
      ( b48_buttercup10102(X98)
     => ~ b48_buttercup10104(X98) ) ).

fof(sos_43,axiom,
    ! [X99] :
      ( b48_buttercup10102(X99)
     => ~ b48_buttercup10107(X99) ) ).

fof(sos_44,axiom,
    ! [X100] :
      ( b48_buttercup10102(X100)
     => ~ b48_buttercup10108(X100) ) ).

fof(sos_45,axiom,
    ! [X101] :
      ( b48_buttercup10102(X101)
     => ~ b48_buttercup10109(X101) ) ).

fof(sos_46,axiom,
    ! [X102] :
      ( b48_buttercup10102(X102)
     => ~ b48_buttercup10110(X102) ) ).

fof(sos_47,axiom,
    ! [X103] :
      ( b48_buttercup10102(X103)
     => ~ b48_buttercup10111(X103) ) ).

fof(sos_48,axiom,
    ! [X104] :
      ( b48_buttercup10104(X104)
     => ~ b48_buttercup10102(X104) ) ).

fof(sos_49,axiom,
    ! [X105] :
      ( b48_buttercup10104(X105)
     => ~ b48_buttercup10107(X105) ) ).

fof(sos_50,axiom,
    ! [X106] :
      ( b48_buttercup10104(X106)
     => ~ b48_buttercup10108(X106) ) ).

fof(sos_51,axiom,
    ! [X107] :
      ( b48_buttercup10104(X107)
     => ~ b48_buttercup10109(X107) ) ).

fof(sos_52,axiom,
    ! [X108] :
      ( b48_buttercup10104(X108)
     => ~ b48_buttercup10110(X108) ) ).

fof(sos_53,axiom,
    ! [X109] :
      ( b48_buttercup10104(X109)
     => ~ b48_buttercup10111(X109) ) ).

fof(sos_54,axiom,
    ! [X110] :
      ( b48_buttercup10107(X110)
     => ~ b48_buttercup10102(X110) ) ).

fof(sos_55,axiom,
    ! [X111] :
      ( b48_buttercup10107(X111)
     => ~ b48_buttercup10104(X111) ) ).

fof(sos_56,axiom,
    ! [X112] :
      ( b48_buttercup10107(X112)
     => ~ b48_buttercup10108(X112) ) ).

fof(sos_57,axiom,
    ! [X113] :
      ( b48_buttercup10107(X113)
     => ~ b48_buttercup10109(X113) ) ).

fof(sos_58,axiom,
    ! [X114] :
      ( b48_buttercup10107(X114)
     => ~ b48_buttercup10110(X114) ) ).

fof(sos_59,axiom,
    ! [X115] :
      ( b48_buttercup10107(X115)
     => ~ b48_buttercup10111(X115) ) ).

fof(sos_60,axiom,
    ! [X116] :
      ( b48_buttercup10108(X116)
     => ~ b48_buttercup10102(X116) ) ).

fof(sos_61,axiom,
    ! [X117] :
      ( b48_buttercup10108(X117)
     => ~ b48_buttercup10104(X117) ) ).

fof(sos_62,axiom,
    ! [X118] :
      ( b48_buttercup10108(X118)
     => ~ b48_buttercup10107(X118) ) ).

fof(sos_63,axiom,
    ! [X119] :
      ( b48_buttercup10108(X119)
     => ~ b48_buttercup10109(X119) ) ).

fof(sos_64,axiom,
    ! [X120] :
      ( b48_buttercup10108(X120)
     => ~ b48_buttercup10110(X120) ) ).

fof(sos_65,axiom,
    ! [X121] :
      ( b48_buttercup10108(X121)
     => ~ b48_buttercup10111(X121) ) ).

fof(sos_66,axiom,
    ! [X122] :
      ( b48_buttercup10109(X122)
     => ~ b48_buttercup10102(X122) ) ).

fof(sos_67,axiom,
    ! [X123] :
      ( b48_buttercup10109(X123)
     => ~ b48_buttercup10104(X123) ) ).

fof(sos_68,axiom,
    ! [X124] :
      ( b48_buttercup10109(X124)
     => ~ b48_buttercup10107(X124) ) ).

fof(sos_69,axiom,
    ! [X125] :
      ( b48_buttercup10109(X125)
     => ~ b48_buttercup10108(X125) ) ).

fof(sos_70,axiom,
    ! [X126] :
      ( b48_buttercup10109(X126)
     => ~ b48_buttercup10110(X126) ) ).

fof(sos_71,axiom,
    ! [X127] :
      ( b48_buttercup10109(X127)
     => ~ b48_buttercup10111(X127) ) ).

fof(sos_72,axiom,
    ! [X128] :
      ( b48_buttercup10110(X128)
     => ~ b48_buttercup10102(X128) ) ).

fof(sos_73,axiom,
    ! [X129] :
      ( b48_buttercup10110(X129)
     => ~ b48_buttercup10104(X129) ) ).

fof(sos_74,axiom,
    ! [X130] :
      ( b48_buttercup10110(X130)
     => ~ b48_buttercup10107(X130) ) ).

fof(sos_75,axiom,
    ! [X131] :
      ( b48_buttercup10110(X131)
     => ~ b48_buttercup10108(X131) ) ).

fof(sos_76,axiom,
    ! [X132] :
      ( b48_buttercup10110(X132)
     => ~ b48_buttercup10109(X132) ) ).

fof(sos_77,axiom,
    ! [X133] :
      ( b48_buttercup10110(X133)
     => ~ b48_buttercup10111(X133) ) ).

fof(sos_78,axiom,
    ! [X134] :
      ( b48_buttercup10111(X134)
     => ~ b48_buttercup10102(X134) ) ).

fof(sos_79,axiom,
    ! [X135] :
      ( b48_buttercup10111(X135)
     => ~ b48_buttercup10104(X135) ) ).

fof(sos_80,axiom,
    ! [X136] :
      ( b48_buttercup10111(X136)
     => ~ b48_buttercup10107(X136) ) ).

fof(sos_81,axiom,
    ! [X137] :
      ( b48_buttercup10111(X137)
     => ~ b48_buttercup10108(X137) ) ).

fof(sos_82,axiom,
    ! [X138] :
      ( b48_buttercup10111(X138)
     => ~ b48_buttercup10109(X138) ) ).

fof(sos_83,axiom,
    ! [X139] :
      ( b48_buttercup10111(X139)
     => ~ b48_buttercup10110(X139) ) ).

fof(sos_84,axiom,
    ! [X140] :
      ( k04_buttercup10619(X140)
     => ( k04_buttercup10620(X140)
        | k04_buttercup10622(X140) ) ) ).

fof(sos_85,axiom,
    ! [X141] :
      ( b48_buttercup10098(X141)
     => ( b48_buttercup10102(X141)
        | b48_buttercup10104(X141)
        | b48_buttercup10107(X141)
        | b48_buttercup10108(X141)
        | b48_buttercup10109(X141)
        | b48_buttercup10110(X141)
        | b48_buttercup10111(X141) ) ) ).

fof(goals_86,conjecture,
    ! [X142] :
      ( k04_buttercup10100(X142)
     => ~ b48_buttercup10098(X142) ) ).

%------------------------------------------------------------------------------
