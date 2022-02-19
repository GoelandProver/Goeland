
%--------------------------------------------------------------------------
% File     : SYN458+1 : TPTP v7.4.0. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=60, K=3, D=1, P=0, Index=062
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-60-3-1-062.dfg [Wei97]

% Status   : Theorem
% Rating   : 0.00 v6.1.0, 0.17 v6.0.0, 0.00 v5.5.0, 0.22 v5.3.0, 0.27 v5.2.0, 0.00 v5.0.0, 0.25 v4.1.0, 0.39 v4.0.1, 0.42 v4.0.0, 0.45 v3.7.0, 0.67 v3.5.0, 0.38 v3.4.0, 0.25 v3.3.0, 0.22 v3.2.0, 0.33 v3.1.0, 0.67 v2.7.0, 0.33 v2.6.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.50 v2.2.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :  596 (   0 equality)
%            Maximal formula depth :   96 (  96 average)
%            Number of connectives :  809 ( 214 ~  ; 321  |; 187  &)
%                                         (   0 <=>;  87 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   37 (  33 propositional; 0-1 arity)
%            Number of functors    :   32 (  32 constant; 0-0 arity)
%            Number of variables   :   87 (   0 singleton;  87 !;   0 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_EPR_NEQ

% Comments : These ALC problems have been translated from propositional
%            multi-modal K logic formulae generated according to the scheme
%            described in [HS97], using the optimized functional translation
%            described in [OS95]. The finite model property holds, the
%            Herbrand Universe is finite, they are decidable (the complexity
%            is PSPACE-complete), resolution + subsumption + condensing is a
%            decision procedure, and the translated formulae belong to the
%            (CNF-translation of the) Bernays-Schoenfinkel class [Wei97].
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ( ~ ( ( ~ hskp0
          | ( ndr1_0
            & c1_1(a1080)
            & ~ c0_1(a1080)
            & ~ c2_1(a1080) ) )
        & ( ~ hskp1
          | ( ndr1_0
            & c3_1(a1081)
            & ~ c0_1(a1081)
            & ~ c1_1(a1081) ) )
        & ( ~ hskp2
          | ( ndr1_0
            & ~ c0_1(a1082)
            & ~ c2_1(a1082)
            & ~ c3_1(a1082) ) )
        & ( ~ hskp3
          | ( ndr1_0
            & c1_1(a1083)
            & ~ c2_1(a1083)
            & ~ c3_1(a1083) ) )
        & ( ~ hskp4
          | ( ndr1_0
            & c0_1(a1084)
            & ~ c1_1(a1084)
            & ~ c3_1(a1084) ) )
        & ( ~ hskp5
          | ( ndr1_0
            & c2_1(a1085)
            & ~ c0_1(a1085)
            & ~ c1_1(a1085) ) )
        & ( ~ hskp6
          | ( ndr1_0
            & c0_1(a1086)
            & c2_1(a1086)
            & ~ c1_1(a1086) ) )
        & ( ~ hskp7
          | ( ndr1_0
            & ~ c0_1(a1087)
            & ~ c1_1(a1087)
            & ~ c2_1(a1087) ) )
        & ( ~ hskp8
          | ( ndr1_0
            & c0_1(a1088)
            & c3_1(a1088)
            & ~ c2_1(a1088) ) )
        & ( ~ hskp9
          | ( ndr1_0
            & c2_1(a1089)
            & c3_1(a1089)
            & ~ c1_1(a1089) ) )
        & ( ~ hskp10
          | ( ndr1_0
            & ~ c0_1(a1090)
            & ~ c1_1(a1090)
            & ~ c3_1(a1090) ) )
        & ( ~ hskp11
          | ( ndr1_0
            & c2_1(a1091)
            & ~ c0_1(a1091)
            & ~ c3_1(a1091) ) )
        & ( ~ hskp12
          | ( ndr1_0
            & c0_1(a1094)
            & c1_1(a1094)
            & ~ c3_1(a1094) ) )
        & ( ~ hskp13
          | ( ndr1_0
            & c3_1(a1095)
            & ~ c1_1(a1095)
            & ~ c2_1(a1095) ) )
        & ( ~ hskp14
          | ( ndr1_0
            & c1_1(a1097)
            & c3_1(a1097)
            & ~ c2_1(a1097) ) )
        & ( ~ hskp15
          | ( ndr1_0
            & c2_1(a1098)
            & ~ c1_1(a1098)
            & ~ c3_1(a1098) ) )
        & ( ~ hskp16
          | ( ndr1_0
            & c1_1(a1100)
            & ~ c0_1(a1100)
            & ~ c3_1(a1100) ) )
        & ( ~ hskp17
          | ( ndr1_0
            & c3_1(a1102)
            & ~ c0_1(a1102)
            & ~ c2_1(a1102) ) )
        & ( ~ hskp18
          | ( ndr1_0
            & c0_1(a1103)
            & c3_1(a1103)
            & ~ c1_1(a1103) ) )
        & ( ~ hskp19
          | ( ndr1_0
            & c0_1(a1113)
            & c1_1(a1113)
            & ~ c2_1(a1113) ) )
        & ( ~ hskp20
          | ( ndr1_0
            & c0_1(a1114)
            & ~ c1_1(a1114)
            & ~ c2_1(a1114) ) )
        & ( ~ hskp21
          | ( ndr1_0
            & c1_1(a1120)
            & c2_1(a1120)
            & ~ c3_1(a1120) ) )
        & ( ~ hskp22
          | ( ndr1_0
            & c1_1(a1121)
            & c3_1(a1121)
            & ~ c0_1(a1121) ) )
        & ( ~ hskp23
          | ( ndr1_0
            & c0_1(a1122)
            & c2_1(a1122)
            & ~ c3_1(a1122) ) )
        & ( ~ hskp24
          | ( ndr1_0
            & c1_1(a1124)
            & c2_1(a1124)
            & ~ c0_1(a1124) ) )
        & ( ~ hskp25
          | ( ndr1_0
            & ~ c1_1(a1125)
            & ~ c2_1(a1125)
            & ~ c3_1(a1125) ) )
        & ( ~ hskp26
          | ( ndr1_0
            & c2_1(a1146)
            & c3_1(a1146)
            & ~ c0_1(a1146) ) )
        & ( ~ hskp27
          | ( ndr1_0
            & c0_1(a1164)
            & ~ c2_1(a1164)
            & ~ c3_1(a1164) ) )
        & ( ~ hskp28
          | ( ndr1_0
            & c0_1(a1092)
            & c2_1(a1092)
            & c3_1(a1092) ) )
        & ( ~ hskp29
          | ( ndr1_0
            & c1_1(a1101)
            & c2_1(a1101)
            & c3_1(a1101) ) )
        & ( ~ hskp30
          | ( ndr1_0
            & c0_1(a1109)
            & c1_1(a1109)
            & c3_1(a1109) ) )
        & ( ~ hskp31
          | ( ndr1_0
            & c0_1(a1148)
            & c1_1(a1148)
            & c2_1(a1148) ) )
        & ( ! [U] :
              ( ndr1_0
             => ( c0_1(U)
                | c1_1(U)
                | c2_1(U) ) )
          | ! [V] :
              ( ndr1_0
             => ( c0_1(V)
                | c2_1(V)
                | c3_1(V) ) )
          | ! [W] :
              ( ndr1_0
             => ( c1_1(W)
                | ~ c2_1(W)
                | ~ c3_1(W) ) ) )
        & ( ! [X] :
              ( ndr1_0
             => ( c0_1(X)
                | c1_1(X)
                | c2_1(X) ) )
          | ! [Y] :
              ( ndr1_0
             => ( c0_1(Y)
                | c2_1(Y)
                | ~ c3_1(Y) ) )
          | ! [Z] :
              ( ndr1_0
             => ( c3_1(Z)
                | ~ c0_1(Z)
                | ~ c1_1(Z) ) ) )
        & ( ! [X1] :
              ( ndr1_0
             => ( c0_1(X1)
                | c1_1(X1)
                | c2_1(X1) ) )
          | ! [X2] :
              ( ndr1_0
             => ( c0_1(X2)
                | c2_1(X2)
                | ~ c3_1(X2) ) )
          | hskp0 )
        & ( ! [X3] :
              ( ndr1_0
             => ( c0_1(X3)
                | c1_1(X3)
                | c2_1(X3) ) )
          | ! [X4] :
              ( ndr1_0
             => ( ~ c0_1(X4)
                | ~ c1_1(X4)
                | ~ c3_1(X4) ) )
          | ! [X5] :
              ( ndr1_0
             => ( ~ c0_1(X5)
                | ~ c2_1(X5)
                | ~ c3_1(X5) ) ) )
        & ( ! [X6] :
              ( ndr1_0
             => ( c0_1(X6)
                | c1_1(X6)
                | c2_1(X6) ) )
          | hskp1
          | hskp2 )
        & ( ! [X7] :
              ( ndr1_0
             => ( c0_1(X7)
                | c1_1(X7)
                | c3_1(X7) ) )
          | ! [X8] :
              ( ndr1_0
             => ( c2_1(X8)
                | c3_1(X8)
                | ~ c1_1(X8) ) )
          | ! [X9] :
              ( ndr1_0
             => ( c2_1(X9)
                | ~ c1_1(X9)
                | ~ c3_1(X9) ) ) )
        & ( ! [X10] :
              ( ndr1_0
             => ( c0_1(X10)
                | c1_1(X10)
                | ~ c2_1(X10) ) )
          | ! [X11] :
              ( ndr1_0
             => ( c0_1(X11)
                | c2_1(X11)
                | ~ c1_1(X11) ) )
          | hskp3 )
        & ( ! [X12] :
              ( ndr1_0
             => ( c0_1(X12)
                | c1_1(X12)
                | ~ c2_1(X12) ) )
          | ! [X13] :
              ( ndr1_0
             => ( c0_1(X13)
                | c3_1(X13)
                | ~ c1_1(X13) ) )
          | hskp4 )
        & ( ! [X14] :
              ( ndr1_0
             => ( c0_1(X14)
                | c1_1(X14)
                | ~ c2_1(X14) ) )
          | ! [X15] :
              ( ndr1_0
             => ( c0_1(X15)
                | ~ c1_1(X15)
                | ~ c2_1(X15) ) )
          | ! [X16] :
              ( ndr1_0
             => ( ~ c0_1(X16)
                | ~ c1_1(X16)
                | ~ c2_1(X16) ) ) )
        & ( ! [X17] :
              ( ndr1_0
             => ( c0_1(X17)
                | c1_1(X17)
                | ~ c2_1(X17) ) )
          | ! [X18] :
              ( ndr1_0
             => ( c1_1(X18)
                | ~ c2_1(X18)
                | ~ c3_1(X18) ) )
          | hskp5 )
        & ( ! [X19] :
              ( ndr1_0
             => ( c0_1(X19)
                | c1_1(X19)
                | ~ c2_1(X19) ) )
          | ! [X20] :
              ( ndr1_0
             => ( c2_1(X20)
                | c3_1(X20)
                | ~ c0_1(X20) ) )
          | ! [X21] :
              ( ndr1_0
             => ( c2_1(X21)
                | ~ c0_1(X21)
                | ~ c1_1(X21) ) ) )
        & ( ! [X22] :
              ( ndr1_0
             => ( c0_1(X22)
                | c1_1(X22)
                | ~ c2_1(X22) ) )
          | hskp6
          | hskp7 )
        & ( ! [X23] :
              ( ndr1_0
             => ( c0_1(X23)
                | c1_1(X23)
                | ~ c2_1(X23) ) )
          | hskp8
          | hskp9 )
        & ( ! [X24] :
              ( ndr1_0
             => ( c0_1(X24)
                | c1_1(X24)
                | ~ c3_1(X24) ) )
          | ! [X25] :
              ( ndr1_0
             => ( ~ c0_1(X25)
                | ~ c1_1(X25)
                | ~ c2_1(X25) ) )
          | hskp10 )
        & ( ! [X26] :
              ( ndr1_0
             => ( c0_1(X26)
                | c1_1(X26)
                | ~ c3_1(X26) ) )
          | ! [X27] :
              ( ndr1_0
             => ( ~ c0_1(X27)
                | ~ c2_1(X27)
                | ~ c3_1(X27) ) )
          | hskp11 )
        & ( ! [X28] :
              ( ndr1_0
             => ( c0_1(X28)
                | c1_1(X28)
                | ~ c3_1(X28) ) )
          | hskp28
          | hskp1 )
        & ( ! [X29] :
              ( ndr1_0
             => ( c0_1(X29)
                | c2_1(X29)
                | c3_1(X29) ) )
          | hskp12
          | hskp13 )
        & ( ! [X30] :
              ( ndr1_0
             => ( c0_1(X30)
                | c2_1(X30)
                | ~ c1_1(X30) ) )
          | ! [X31] :
              ( ndr1_0
             => ( c1_1(X31)
                | ~ c0_1(X31)
                | ~ c3_1(X31) ) )
          | hskp5 )
        & ( ! [X32] :
              ( ndr1_0
             => ( c0_1(X32)
                | c2_1(X32)
                | ~ c1_1(X32) ) )
          | hskp14
          | hskp15 )
        & ( ! [X33] :
              ( ndr1_0
             => ( c0_1(X33)
                | c2_1(X33)
                | ~ c1_1(X33) ) )
          | hskp0
          | hskp16 )
        & ( ! [X34] :
              ( ndr1_0
             => ( c0_1(X34)
                | c3_1(X34)
                | ~ c1_1(X34) ) )
          | ! [X35] :
              ( ndr1_0
             => ( c1_1(X35)
                | ~ c2_1(X35)
                | ~ c3_1(X35) ) )
          | hskp29 )
        & ( ! [X36] :
              ( ndr1_0
             => ( c0_1(X36)
                | c3_1(X36)
                | ~ c2_1(X36) ) )
          | ! [X37] :
              ( ndr1_0
             => ( ~ c0_1(X37)
                | ~ c1_1(X37)
                | ~ c3_1(X37) ) )
          | hskp17 )
        & ( ! [X38] :
              ( ndr1_0
             => ( c0_1(X38)
                | c3_1(X38)
                | ~ c2_1(X38) ) )
          | hskp18 )
        & ( ! [X39] :
              ( ndr1_0
             => ( c0_1(X39)
                | c3_1(X39)
                | ~ c2_1(X39) ) )
          | hskp4
          | hskp16 )
        & ( ! [X40] :
              ( ndr1_0
             => ( c0_1(X40)
                | ~ c1_1(X40)
                | ~ c2_1(X40) ) )
          | ! [X41] :
              ( ndr1_0
             => ( c1_1(X41)
                | c3_1(X41)
                | ~ c2_1(X41) ) )
          | hskp9 )
        & ( ! [X42] :
              ( ndr1_0
             => ( c0_1(X42)
                | ~ c1_1(X42)
                | ~ c2_1(X42) ) )
          | hskp15
          | hskp17 )
        & ( ! [X43] :
              ( ndr1_0
             => ( c0_1(X43)
                | ~ c1_1(X43)
                | ~ c3_1(X43) ) )
          | hskp30
          | hskp18 )
        & ( ! [X44] :
              ( ndr1_0
             => ( c0_1(X44)
                | ~ c1_1(X44)
                | ~ c3_1(X44) ) )
          | hskp9
          | hskp2 )
        & ( ! [X45] :
              ( ndr1_0
             => ( c0_1(X45)
                | ~ c2_1(X45)
                | ~ c3_1(X45) ) )
          | hskp19 )
        & ( ! [X46] :
              ( ndr1_0
             => ( c0_1(X46)
                | ~ c2_1(X46)
                | ~ c3_1(X46) ) )
          | hskp20
          | hskp3 )
        & ( ! [X47] :
              ( ndr1_0
             => ( c1_1(X47)
                | c2_1(X47)
                | c3_1(X47) ) )
          | ! [X48] :
              ( ndr1_0
             => ( c3_1(X48)
                | ~ c0_1(X48)
                | ~ c1_1(X48) ) )
          | hskp9 )
        & ( ! [X49] :
              ( ndr1_0
             => ( c1_1(X49)
                | c2_1(X49)
                | c3_1(X49) ) )
          | ! [X50] :
              ( ndr1_0
             => ( ~ c1_1(X50)
                | ~ c2_1(X50)
                | ~ c3_1(X50) ) )
          | hskp20 )
        & ( ! [X51] :
              ( ndr1_0
             => ( c1_1(X51)
                | c2_1(X51)
                | c3_1(X51) ) )
          | hskp6
          | hskp8 )
        & ( ! [X52] :
              ( ndr1_0
             => ( c1_1(X52)
                | c2_1(X52)
                | ~ c0_1(X52) ) )
          | hskp21
          | hskp22 )
        & ( ! [X53] :
              ( ndr1_0
             => ( c1_1(X53)
                | c2_1(X53)
                | ~ c3_1(X53) ) )
          | ! [X54] :
              ( ndr1_0
             => ( c2_1(X54)
                | c3_1(X54)
                | ~ c1_1(X54) ) )
          | hskp23 )
        & ( ! [X55] :
              ( ndr1_0
             => ( c1_1(X55)
                | c2_1(X55)
                | ~ c3_1(X55) ) )
          | ! [X56] :
              ( ndr1_0
             => ( c2_1(X56)
                | ~ c0_1(X56)
                | ~ c1_1(X56) ) )
          | hskp1 )
        & ( ! [X57] :
              ( ndr1_0
             => ( c1_1(X57)
                | c2_1(X57)
                | ~ c3_1(X57) ) )
          | hskp24
          | hskp25 )
        & ( ! [X58] :
              ( ndr1_0
             => ( c1_1(X58)
                | c3_1(X58)
                | ~ c0_1(X58) ) )
          | hskp14
          | hskp13 )
        & ( ! [X59] :
              ( ndr1_0
             => ( c1_1(X59)
                | c3_1(X59)
                | ~ c2_1(X59) ) )
          | ! [X60] :
              ( ndr1_0
             => ( c1_1(X60)
                | ~ c0_1(X60)
                | ~ c2_1(X60) ) )
          | hskp17 )
        & ( ! [X61] :
              ( ndr1_0
             => ( c1_1(X61)
                | ~ c0_1(X61)
                | ~ c2_1(X61) ) )
          | ! [X62] :
              ( ndr1_0
             => ( ~ c0_1(X62)
                | ~ c1_1(X62)
                | ~ c2_1(X62) ) )
          | hskp25 )
        & ( ! [X63] :
              ( ndr1_0
             => ( c1_1(X63)
                | ~ c0_1(X63)
                | ~ c2_1(X63) ) )
          | hskp14 )
        & ( ! [X64] :
              ( ndr1_0
             => ( c1_1(X64)
                | ~ c0_1(X64)
                | ~ c2_1(X64) ) )
          | hskp0
          | hskp2 )
        & ( ! [X65] :
              ( ndr1_0
             => ( c1_1(X65)
                | ~ c2_1(X65)
                | ~ c3_1(X65) ) )
          | hskp21 )
        & ( ! [X66] :
              ( ndr1_0
             => ( c1_1(X66)
                | ~ c2_1(X66)
                | ~ c3_1(X66) ) )
          | hskp14
          | hskp11 )
        & ( ! [X67] :
              ( ndr1_0
             => ( c1_1(X67)
                | ~ c2_1(X67)
                | ~ c3_1(X67) ) )
          | hskp9
          | hskp11 )
        & ( ! [X68] :
              ( ndr1_0
             => ( c2_1(X68)
                | c3_1(X68)
                | ~ c0_1(X68) ) )
          | hskp22
          | hskp5 )
        & ( ! [X69] :
              ( ndr1_0
             => ( c2_1(X69)
                | ~ c0_1(X69)
                | ~ c1_1(X69) ) )
          | hskp30
          | hskp9 )
        & ( ! [X70] :
              ( ndr1_0
             => ( c2_1(X70)
                | ~ c0_1(X70)
                | ~ c1_1(X70) ) )
          | hskp4
          | hskp1 )
        & ( ! [X71] :
              ( ndr1_0
             => ( c2_1(X71)
                | ~ c0_1(X71)
                | ~ c3_1(X71) ) )
          | hskp28
          | hskp9 )
        & ( ! [X72] :
              ( ndr1_0
             => ( c2_1(X72)
                | ~ c1_1(X72)
                | ~ c3_1(X72) ) )
          | ! [X73] :
              ( ndr1_0
             => ( ~ c0_1(X73)
                | ~ c2_1(X73)
                | ~ c3_1(X73) ) )
          | hskp26 )
        & ( ! [X74] :
              ( ndr1_0
             => ( c3_1(X74)
                | ~ c0_1(X74)
                | ~ c1_1(X74) ) )
          | ! [X75] :
              ( ndr1_0
             => ( c3_1(X75)
                | ~ c0_1(X75)
                | ~ c2_1(X75) ) )
          | hskp5 )
        & ( ! [X76] :
              ( ndr1_0
             => ( c3_1(X76)
                | ~ c0_1(X76)
                | ~ c2_1(X76) ) )
          | ! [X77] :
              ( ndr1_0
             => ( c3_1(X77)
                | ~ c1_1(X77)
                | ~ c2_1(X77) ) )
          | hskp31 )
        & ( ! [X78] :
              ( ndr1_0
             => ( ~ c0_1(X78)
                | ~ c1_1(X78)
                | ~ c2_1(X78) ) )
          | hskp5
          | hskp13 )
        & ( ! [X79] :
              ( ndr1_0
             => ( ~ c0_1(X79)
                | ~ c1_1(X79)
                | ~ c3_1(X79) ) )
          | hskp19
          | hskp2 )
        & ( ! [X80] :
              ( ndr1_0
             => ( ~ c1_1(X80)
                | ~ c2_1(X80)
                | ~ c3_1(X80) ) )
          | hskp31
          | hskp3 )
        & ( ! [X81] :
              ( ndr1_0
             => ( ~ c1_1(X81)
                | ~ c2_1(X81)
                | ~ c3_1(X81) ) )
          | hskp20
          | hskp24 )
        & ( hskp31
          | hskp12
          | hskp13 )
        & ( hskp28
          | hskp6
          | hskp18 )
        & ( hskp20
          | hskp27
          | hskp13 )
        & ( hskp0
          | hskp5 ) ) )).

%--------------------------------------------------------------------------

