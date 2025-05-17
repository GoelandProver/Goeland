%--------------------------------------------------------------------------
% File     : SYN456+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=60, K=3, D=1, P=0, Index=057
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-60-3-1-057.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.40 v5.3.0, 0.50 v5.0.0, 0.33 v4.1.0, 0.67 v4.0.1, 0.33 v3.7.0, 0.00 v3.5.0, 0.25 v3.4.0, 0.33 v3.2.0, 0.25 v3.1.0, 0.50 v2.6.0, 0.25 v2.5.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  595 (   0 equ)
%            Maximal formula atoms :  595 ( 595 avg)
%            Number of connectives :  805 ( 211   ~; 324   |; 183   &)
%                                         (   0 <=>;  87  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   94 (  94 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   36 (  36 usr;  32 prp; 0-1 aty)
%            Number of functors    :   31 (  31 usr;  31 con; 0-0 aty)
%            Number of variables   :   87 (  87   !;   0   ?)
% SPC      : FOF_CSA_EPR_NEQ

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
    ~ ( ( ~ hskp0
        | ( ndr1_0
          & c2_1(a988)
          & ~ c0_1(a988)
          & ~ c1_1(a988) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & c3_1(a989)
          & ~ c1_1(a989)
          & ~ c2_1(a989) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & c0_1(a990)
          & c1_1(a990)
          & ~ c3_1(a990) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & c1_1(a991)
          & c2_1(a991)
          & ~ c3_1(a991) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & ~ c0_1(a992)
          & ~ c1_1(a992)
          & ~ c3_1(a992) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & c0_1(a994)
          & c1_1(a994)
          & ~ c2_1(a994) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & c0_1(a995)
          & c3_1(a995)
          & ~ c1_1(a995) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & ~ c0_1(a996)
          & ~ c1_1(a996)
          & ~ c2_1(a996) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & ~ c0_1(a997)
          & ~ c2_1(a997)
          & ~ c3_1(a997) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & c1_1(a1000)
          & c3_1(a1000)
          & ~ c2_1(a1000) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & c3_1(a1002)
          & ~ c0_1(a1002)
          & ~ c2_1(a1002) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & c0_1(a1003)
          & ~ c1_1(a1003)
          & ~ c2_1(a1003) ) )
      & ( ~ hskp12
        | ( ndr1_0
          & c2_1(a1004)
          & c3_1(a1004)
          & ~ c0_1(a1004) ) )
      & ( ~ hskp13
        | ( ndr1_0
          & c3_1(a1007)
          & ~ c0_1(a1007)
          & ~ c1_1(a1007) ) )
      & ( ~ hskp14
        | ( ndr1_0
          & c2_1(a1008)
          & ~ c1_1(a1008)
          & ~ c3_1(a1008) ) )
      & ( ~ hskp15
        | ( ndr1_0
          & c0_1(a1012)
          & ~ c1_1(a1012)
          & ~ c3_1(a1012) ) )
      & ( ~ hskp16
        | ( ndr1_0
          & ~ c1_1(a1015)
          & ~ c2_1(a1015)
          & ~ c3_1(a1015) ) )
      & ( ~ hskp17
        | ( ndr1_0
          & c0_1(a1016)
          & ~ c2_1(a1016)
          & ~ c3_1(a1016) ) )
      & ( ~ hskp18
        | ( ndr1_0
          & c0_1(a1017)
          & c2_1(a1017)
          & ~ c3_1(a1017) ) )
      & ( ~ hskp19
        | ( ndr1_0
          & c1_1(a1021)
          & ~ c2_1(a1021)
          & ~ c3_1(a1021) ) )
      & ( ~ hskp20
        | ( ndr1_0
          & c1_1(a1025)
          & c2_1(a1025)
          & ~ c0_1(a1025) ) )
      & ( ~ hskp21
        | ( ndr1_0
          & c1_1(a1037)
          & ~ c0_1(a1037)
          & ~ c2_1(a1037) ) )
      & ( ~ hskp22
        | ( ndr1_0
          & c2_1(a1040)
          & ~ c0_1(a1040)
          & ~ c3_1(a1040) ) )
      & ( ~ hskp23
        | ( ndr1_0
          & c0_1(a1045)
          & c3_1(a1045)
          & ~ c2_1(a1045) ) )
      & ( ~ hskp24
        | ( ndr1_0
          & c1_1(a1051)
          & ~ c0_1(a1051)
          & ~ c3_1(a1051) ) )
      & ( ~ hskp25
        | ( ndr1_0
          & c2_1(a1058)
          & c3_1(a1058)
          & ~ c1_1(a1058) ) )
      & ( ~ hskp26
        | ( ndr1_0
          & c0_1(a1059)
          & c2_1(a1059)
          & ~ c1_1(a1059) ) )
      & ( ~ hskp27
        | ( ndr1_0
          & c0_1(a1009)
          & c2_1(a1009)
          & c3_1(a1009) ) )
      & ( ~ hskp28
        | ( ndr1_0
          & c1_1(a1019)
          & c2_1(a1019)
          & c3_1(a1019) ) )
      & ( ~ hskp29
        | ( ndr1_0
          & c0_1(a1028)
          & c1_1(a1028)
          & c2_1(a1028) ) )
      & ( ~ hskp30
        | ( ndr1_0
          & c0_1(a1032)
          & c1_1(a1032)
          & c3_1(a1032) ) )
      & ( ! [U] :
            ( ndr1_0
           => ( c0_1(U)
              | c1_1(U)
              | c2_1(U) ) )
        | hskp0
        | hskp1 )
      & ( ! [V] :
            ( ndr1_0
           => ( c0_1(V)
              | c1_1(V)
              | c3_1(V) ) )
        | ! [W] :
            ( ndr1_0
           => ( c0_1(W)
              | c2_1(W)
              | ~ c1_1(W) ) )
        | ! [X] :
            ( ndr1_0
           => ( ~ c0_1(X)
              | ~ c2_1(X)
              | ~ c3_1(X) ) ) )
      & ( ! [Y] :
            ( ndr1_0
           => ( c0_1(Y)
              | c1_1(Y)
              | c3_1(Y) ) )
        | ! [Z] :
            ( ndr1_0
           => ( c1_1(Z)
              | ~ c2_1(Z)
              | ~ c3_1(Z) ) )
        | ! [X1] :
            ( ndr1_0
           => ( c2_1(X1)
              | ~ c0_1(X1)
              | ~ c1_1(X1) ) ) )
      & ( ! [X2] :
            ( ndr1_0
           => ( c0_1(X2)
              | c1_1(X2)
              | c3_1(X2) ) )
        | ! [X3] :
            ( ndr1_0
           => ( c3_1(X3)
              | ~ c0_1(X3)
              | ~ c1_1(X3) ) )
        | hskp2 )
      & ( ! [X4] :
            ( ndr1_0
           => ( c0_1(X4)
              | c1_1(X4)
              | c3_1(X4) ) )
        | hskp3
        | hskp4 )
      & ( ! [X5] :
            ( ndr1_0
           => ( c0_1(X5)
              | c1_1(X5)
              | ~ c2_1(X5) ) )
        | ! [X6] :
            ( ndr1_0
           => ( c0_1(X6)
              | c2_1(X6)
              | ~ c3_1(X6) ) )
        | ! [X7] :
            ( ndr1_0
           => ( c2_1(X7)
              | ~ c0_1(X7)
              | ~ c1_1(X7) ) ) )
      & ( ! [X8] :
            ( ndr1_0
           => ( c0_1(X8)
              | c1_1(X8)
              | ~ c2_1(X8) ) )
        | ! [X9] :
            ( ndr1_0
           => ( c1_1(X9)
              | ~ c0_1(X9)
              | ~ c3_1(X9) ) )
        | ! [X10] :
            ( ndr1_0
           => ( c3_1(X10)
              | ~ c0_1(X10)
              | ~ c1_1(X10) ) ) )
      & ( ! [X11] :
            ( ndr1_0
           => ( c0_1(X11)
              | c1_1(X11)
              | ~ c3_1(X11) ) )
        | ! [X12] :
            ( ndr1_0
           => ( c0_1(X12)
              | c2_1(X12)
              | ~ c1_1(X12) ) )
        | ! [X13] :
            ( ndr1_0
           => ( c2_1(X13)
              | c3_1(X13)
              | ~ c1_1(X13) ) ) )
      & ( ! [X14] :
            ( ndr1_0
           => ( c0_1(X14)
              | c1_1(X14)
              | ~ c3_1(X14) ) )
        | ! [X15] :
            ( ndr1_0
           => ( c0_1(X15)
              | c2_1(X15)
              | ~ c3_1(X15) ) )
        | ! [X16] :
            ( ndr1_0
           => ( c2_1(X16)
              | ~ c0_1(X16)
              | ~ c1_1(X16) ) ) )
      & ( ! [X17] :
            ( ndr1_0
           => ( c0_1(X17)
              | c1_1(X17)
              | ~ c3_1(X17) ) )
        | ! [X18] :
            ( ndr1_0
           => ( c0_1(X18)
              | ~ c1_1(X18)
              | ~ c3_1(X18) ) ) )
      & ( ! [X19] :
            ( ndr1_0
           => ( c0_1(X19)
              | c1_1(X19)
              | ~ c3_1(X19) ) )
        | ! [X20] :
            ( ndr1_0
           => ( c1_1(X20)
              | c3_1(X20)
              | ~ c0_1(X20) ) )
        | hskp0 )
      & ( ! [X21] :
            ( ndr1_0
           => ( c0_1(X21)
              | c1_1(X21)
              | ~ c3_1(X21) ) )
        | hskp5
        | hskp6 )
      & ( ! [X22] :
            ( ndr1_0
           => ( c0_1(X22)
              | c1_1(X22)
              | ~ c3_1(X22) ) )
        | hskp7
        | hskp8 )
      & ( ! [X23] :
            ( ndr1_0
           => ( c0_1(X23)
              | c2_1(X23)
              | c3_1(X23) ) )
        | ! [X24] :
            ( ndr1_0
           => ( c0_1(X24)
              | ~ c1_1(X24)
              | ~ c3_1(X24) ) )
        | ! [X25] :
            ( ndr1_0
           => ( c2_1(X25)
              | ~ c1_1(X25)
              | ~ c3_1(X25) ) ) )
      & ( ! [X26] :
            ( ndr1_0
           => ( c0_1(X26)
              | c2_1(X26)
              | ~ c1_1(X26) ) )
        | ! [X27] :
            ( ndr1_0
           => ( c2_1(X27)
              | ~ c0_1(X27)
              | ~ c3_1(X27) ) )
        | hskp1 )
      & ( ! [X28] :
            ( ndr1_0
           => ( c0_1(X28)
              | c2_1(X28)
              | ~ c1_1(X28) ) )
        | hskp6
        | hskp9 )
      & ( ! [X29] :
            ( ndr1_0
           => ( c0_1(X29)
              | c2_1(X29)
              | ~ c3_1(X29) ) )
        | hskp9
        | hskp10 )
      & ( ! [X30] :
            ( ndr1_0
           => ( c0_1(X30)
              | c3_1(X30)
              | ~ c1_1(X30) ) )
        | ! [X31] :
            ( ndr1_0
           => ( c1_1(X31)
              | c2_1(X31)
              | ~ c3_1(X31) ) )
        | hskp11 )
      & ( ! [X32] :
            ( ndr1_0
           => ( c0_1(X32)
              | c3_1(X32)
              | ~ c2_1(X32) ) )
        | ! [X33] :
            ( ndr1_0
           => ( c1_1(X33)
              | c2_1(X33)
              | c3_1(X33) ) )
        | ! [X34] :
            ( ndr1_0
           => ( c1_1(X34)
              | ~ c2_1(X34)
              | ~ c3_1(X34) ) ) )
      & ( ! [X35] :
            ( ndr1_0
           => ( c0_1(X35)
              | c3_1(X35)
              | ~ c2_1(X35) ) )
        | ! [X36] :
            ( ndr1_0
           => ( c2_1(X36)
              | ~ c0_1(X36)
              | ~ c1_1(X36) ) )
        | hskp12 )
      & ( ! [X37] :
            ( ndr1_0
           => ( c0_1(X37)
              | c3_1(X37)
              | ~ c2_1(X37) ) )
        | ! [X38] :
            ( ndr1_0
           => ( c3_1(X38)
              | ~ c1_1(X38)
              | ~ c2_1(X38) ) )
        | hskp1 )
      & ( ! [X39] :
            ( ndr1_0
           => ( c0_1(X39)
              | ~ c1_1(X39)
              | ~ c2_1(X39) ) )
        | ! [X40] :
            ( ndr1_0
           => ( c1_1(X40)
              | c2_1(X40)
              | ~ c0_1(X40) ) )
        | ! [X41] :
            ( ndr1_0
           => ( ~ c0_1(X41)
              | ~ c1_1(X41)
              | ~ c2_1(X41) ) ) )
      & ( ! [X42] :
            ( ndr1_0
           => ( c0_1(X42)
              | ~ c1_1(X42)
              | ~ c2_1(X42) ) )
        | hskp6
        | hskp13 )
      & ( ! [X43] :
            ( ndr1_0
           => ( c0_1(X43)
              | ~ c1_1(X43)
              | ~ c3_1(X43) ) )
        | ! [X44] :
            ( ndr1_0
           => ( ~ c0_1(X44)
              | ~ c2_1(X44)
              | ~ c3_1(X44) ) )
        | hskp14 )
      & ( ! [X45] :
            ( ndr1_0
           => ( c0_1(X45)
              | ~ c1_1(X45)
              | ~ c3_1(X45) ) )
        | hskp27
        | hskp14 )
      & ( ! [X46] :
            ( ndr1_0
           => ( c0_1(X46)
              | ~ c2_1(X46)
              | ~ c3_1(X46) ) )
        | ! [X47] :
            ( ndr1_0
           => ( c1_1(X47)
              | c2_1(X47)
              | c3_1(X47) ) )
        | hskp9 )
      & ( ! [X48] :
            ( ndr1_0
           => ( c0_1(X48)
              | ~ c2_1(X48)
              | ~ c3_1(X48) ) )
        | ! [X49] :
            ( ndr1_0
           => ( c2_1(X49)
              | ~ c0_1(X49)
              | ~ c3_1(X49) ) )
        | hskp15 )
      & ( ! [X50] :
            ( ndr1_0
           => ( c0_1(X50)
              | ~ c2_1(X50)
              | ~ c3_1(X50) ) )
        | ! [X51] :
            ( ndr1_0
           => ( c3_1(X51)
              | ~ c1_1(X51)
              | ~ c2_1(X51) ) )
        | hskp7 )
      & ( ! [X52] :
            ( ndr1_0
           => ( c0_1(X52)
              | ~ c2_1(X52)
              | ~ c3_1(X52) ) )
        | hskp12
        | hskp16 )
      & ( ! [X53] :
            ( ndr1_0
           => ( c1_1(X53)
              | c2_1(X53)
              | c3_1(X53) ) )
        | ! [X54] :
            ( ndr1_0
           => ( c1_1(X54)
              | c2_1(X54)
              | ~ c0_1(X54) ) )
        | hskp17 )
      & ( ! [X55] :
            ( ndr1_0
           => ( c1_1(X55)
              | c2_1(X55)
              | c3_1(X55) ) )
        | hskp18
        | hskp3 )
      & ( ! [X56] :
            ( ndr1_0
           => ( c1_1(X56)
              | c2_1(X56)
              | ~ c0_1(X56) ) )
        | ! [X57] :
            ( ndr1_0
           => ( ~ c0_1(X57)
              | ~ c1_1(X57)
              | ~ c3_1(X57) ) )
        | hskp28 )
      & ( ! [X58] :
            ( ndr1_0
           => ( c1_1(X58)
              | c2_1(X58)
              | ~ c0_1(X58) ) )
        | hskp3
        | hskp19 )
      & ( ! [X59] :
            ( ndr1_0
           => ( c1_1(X59)
              | c2_1(X59)
              | ~ c3_1(X59) ) )
        | ! [X60] :
            ( ndr1_0
           => ( c2_1(X60)
              | ~ c0_1(X60)
              | ~ c1_1(X60) ) )
        | hskp5 )
      & ( ! [X61] :
            ( ndr1_0
           => ( c1_1(X61)
              | c2_1(X61)
              | ~ c3_1(X61) ) )
        | ! [X62] :
            ( ndr1_0
           => ( c3_1(X62)
              | ~ c1_1(X62)
              | ~ c2_1(X62) ) )
        | hskp15 )
      & ( ! [X63] :
            ( ndr1_0
           => ( c1_1(X63)
              | c2_1(X63)
              | ~ c3_1(X63) ) )
        | hskp15
        | hskp20 )
      & ( ! [X64] :
            ( ndr1_0
           => ( c1_1(X64)
              | c3_1(X64)
              | ~ c0_1(X64) ) )
        | ! [X65] :
            ( ndr1_0
           => ( c1_1(X65)
              | ~ c2_1(X65)
              | ~ c3_1(X65) ) )
        | hskp8 )
      & ( ! [X66] :
            ( ndr1_0
           => ( c1_1(X66)
              | ~ c0_1(X66)
              | ~ c2_1(X66) ) )
        | ! [X67] :
            ( ndr1_0
           => ( ~ c0_1(X67)
              | ~ c1_1(X67)
              | ~ c3_1(X67) ) )
        | hskp4 )
      & ( ! [X68] :
            ( ndr1_0
           => ( c1_1(X68)
              | ~ c0_1(X68)
              | ~ c2_1(X68) ) )
        | hskp29
        | hskp6 )
      & ( ! [X69] :
            ( ndr1_0
           => ( c2_1(X69)
              | ~ c0_1(X69)
              | ~ c1_1(X69) ) )
        | hskp17
        | hskp16 )
      & ( ! [X70] :
            ( ndr1_0
           => ( c2_1(X70)
              | ~ c0_1(X70)
              | ~ c3_1(X70) ) )
        | hskp30
        | hskp13 )
      & ( ! [X71] :
            ( ndr1_0
           => ( c2_1(X71)
              | ~ c1_1(X71)
              | ~ c3_1(X71) ) )
        | hskp5
        | hskp16 )
      & ( ! [X72] :
            ( ndr1_0
           => ( c2_1(X72)
              | ~ c1_1(X72)
              | ~ c3_1(X72) ) )
        | hskp2
        | hskp21 )
      & ( ! [X73] :
            ( ndr1_0
           => ( c2_1(X73)
              | ~ c1_1(X73)
              | ~ c3_1(X73) ) )
        | hskp3
        | hskp0 )
      & ( ! [X74] :
            ( ndr1_0
           => ( c3_1(X74)
              | ~ c0_1(X74)
              | ~ c1_1(X74) ) )
        | ! [X75] :
            ( ndr1_0
           => ( c3_1(X75)
              | ~ c1_1(X75)
              | ~ c2_1(X75) ) )
        | ! [X76] :
            ( ndr1_0
           => ( ~ c1_1(X76)
              | ~ c2_1(X76)
              | ~ c3_1(X76) ) ) )
      & ( ! [X77] :
            ( ndr1_0
           => ( c3_1(X77)
              | ~ c0_1(X77)
              | ~ c1_1(X77) ) )
        | ! [X78] :
            ( ndr1_0
           => ( ~ c0_1(X78)
              | ~ c2_1(X78)
              | ~ c3_1(X78) ) )
        | hskp22 )
      & ( ! [X79] :
            ( ndr1_0
           => ( c3_1(X79)
              | ~ c0_1(X79)
              | ~ c1_1(X79) ) )
        | hskp6
        | hskp16 )
      & ( ! [X80] :
            ( ndr1_0
           => ( c3_1(X80)
              | ~ c0_1(X80)
              | ~ c2_1(X80) ) )
        | hskp11
        | hskp12 )
      & ( ! [X81] :
            ( ndr1_0
           => ( ~ c0_1(X81)
              | ~ c1_1(X81)
              | ~ c2_1(X81) ) )
        | hskp23
        | hskp11 )
      & ( hskp29
        | hskp27
        | hskp7 )
      & ( hskp5
        | hskp24
        | hskp4 )
      & ( hskp27
        | hskp21
        | hskp12 )
      & ( hskp27
        | hskp21
        | hskp25 )
      & ( hskp26
        | hskp18
        | hskp7 )
      & ( hskp26
        | hskp22
        | hskp4 )
      & ( hskp6
        | hskp19
        | hskp4 )
      & ( hskp17
        | hskp12
        | hskp1 )
      & ( hskp28
        | hskp1
        | hskp7 )
      & ( hskp19
        | hskp25
        | hskp0 )
      & ( hskp0
        | hskp1
        | hskp4 ) ) ).

%--------------------------------------------------------------------------
