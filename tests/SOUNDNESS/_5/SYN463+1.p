%--------------------------------------------------------------------------
% File     : SYN463+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=60, K=3, D=1, P=0, Index=092
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-60-3-1-092.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.10 v5.4.0, 0.20 v5.3.0, 0.25 v5.0.0, 0.33 v4.1.0, 0.67 v4.0.1, 0.33 v3.7.0, 0.00 v3.5.0, 0.25 v3.4.0, 0.00 v3.1.0, 0.50 v2.6.0, 0.25 v2.5.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  596 (   0 equ)
%            Maximal formula atoms :  596 ( 596 avg)
%            Number of connectives :  791 ( 196   ~; 327   |; 179   &)
%                                         (   0 <=>;  89  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   93 (  93 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   35 (  35 usr;  31 prp; 0-1 aty)
%            Number of functors    :   30 (  30 usr;  30 con; 0-0 aty)
%            Number of variables   :   89 (  89   !;   0   ?)
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
          & c0_1(a1252)
          & c2_1(a1252)
          & ~ c3_1(a1252) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & c1_1(a1254)
          & ~ c2_1(a1254)
          & ~ c3_1(a1254) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & c0_1(a1255)
          & c2_1(a1255)
          & ~ c1_1(a1255) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & c3_1(a1256)
          & ~ c0_1(a1256)
          & ~ c1_1(a1256) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & c2_1(a1257)
          & c3_1(a1257)
          & ~ c1_1(a1257) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & c3_1(a1258)
          & ~ c1_1(a1258)
          & ~ c2_1(a1258) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & c1_1(a1260)
          & c2_1(a1260)
          & ~ c3_1(a1260) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & c3_1(a1261)
          & ~ c0_1(a1261)
          & ~ c2_1(a1261) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & c0_1(a1262)
          & ~ c2_1(a1262)
          & ~ c3_1(a1262) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & c0_1(a1263)
          & c3_1(a1263)
          & ~ c1_1(a1263) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & c1_1(a1264)
          & c2_1(a1264)
          & ~ c0_1(a1264) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & c0_1(a1265)
          & c1_1(a1265)
          & ~ c3_1(a1265) ) )
      & ( ~ hskp12
        | ( ndr1_0
          & c2_1(a1266)
          & ~ c0_1(a1266)
          & ~ c1_1(a1266) ) )
      & ( ~ hskp13
        | ( ndr1_0
          & c1_1(a1268)
          & ~ c0_1(a1268)
          & ~ c2_1(a1268) ) )
      & ( ~ hskp14
        | ( ndr1_0
          & c2_1(a1270)
          & c3_1(a1270)
          & ~ c0_1(a1270) ) )
      & ( ~ hskp15
        | ( ndr1_0
          & ~ c0_1(a1272)
          & ~ c2_1(a1272)
          & ~ c3_1(a1272) ) )
      & ( ~ hskp16
        | ( ndr1_0
          & c0_1(a1274)
          & ~ c1_1(a1274)
          & ~ c3_1(a1274) ) )
      & ( ~ hskp17
        | ( ndr1_0
          & c1_1(a1277)
          & c3_1(a1277)
          & ~ c2_1(a1277) ) )
      & ( ~ hskp18
        | ( ndr1_0
          & ~ c0_1(a1279)
          & ~ c1_1(a1279)
          & ~ c2_1(a1279) ) )
      & ( ~ hskp19
        | ( ndr1_0
          & c2_1(a1283)
          & ~ c1_1(a1283)
          & ~ c3_1(a1283) ) )
      & ( ~ hskp20
        | ( ndr1_0
          & c0_1(a1287)
          & ~ c1_1(a1287)
          & ~ c2_1(a1287) ) )
      & ( ~ hskp21
        | ( ndr1_0
          & c1_1(a1288)
          & c3_1(a1288)
          & ~ c0_1(a1288) ) )
      & ( ~ hskp22
        | ( ndr1_0
          & c0_1(a1291)
          & c1_1(a1291)
          & ~ c2_1(a1291) ) )
      & ( ~ hskp23
        | ( ndr1_0
          & c1_1(a1300)
          & ~ c0_1(a1300)
          & ~ c3_1(a1300) ) )
      & ( ~ hskp24
        | ( ndr1_0
          & c2_1(a1301)
          & ~ c0_1(a1301)
          & ~ c3_1(a1301) ) )
      & ( ~ hskp25
        | ( ndr1_0
          & ~ c0_1(a1303)
          & ~ c1_1(a1303)
          & ~ c3_1(a1303) ) )
      & ( ~ hskp26
        | ( ndr1_0
          & c0_1(a1250)
          & c1_1(a1250)
          & c2_1(a1250) ) )
      & ( ~ hskp27
        | ( ndr1_0
          & c0_1(a1253)
          & c1_1(a1253)
          & c3_1(a1253) ) )
      & ( ~ hskp28
        | ( ndr1_0
          & c1_1(a1259)
          & c2_1(a1259)
          & c3_1(a1259) ) )
      & ( ~ hskp29
        | ( ndr1_0
          & c0_1(a1280)
          & c2_1(a1280)
          & c3_1(a1280) ) )
      & ( ! [U] :
            ( ndr1_0
           => ( c0_1(U)
              | c1_1(U)
              | c2_1(U) ) )
        | ! [V] :
            ( ndr1_0
           => ( c2_1(V)
              | c3_1(V)
              | ~ c0_1(V) ) )
        | hskp26 )
      & ( ! [W] :
            ( ndr1_0
           => ( c0_1(W)
              | c1_1(W)
              | c2_1(W) ) )
        | hskp26
        | hskp0 )
      & ( ! [X] :
            ( ndr1_0
           => ( c0_1(X)
              | c1_1(X)
              | c2_1(X) ) )
        | hskp27
        | hskp1 )
      & ( ! [Y] :
            ( ndr1_0
           => ( c0_1(Y)
              | c1_1(Y)
              | c2_1(Y) ) )
        | hskp2
        | hskp3 )
      & ( ! [Z] :
            ( ndr1_0
           => ( c0_1(Z)
              | c1_1(Z)
              | c2_1(Z) ) )
        | hskp4
        | hskp5 )
      & ( ! [X1] :
            ( ndr1_0
           => ( c0_1(X1)
              | c1_1(X1)
              | c3_1(X1) ) )
        | hskp28
        | hskp6 )
      & ( ! [X2] :
            ( ndr1_0
           => ( c0_1(X2)
              | c1_1(X2)
              | ~ c2_1(X2) ) )
        | ! [X3] :
            ( ndr1_0
           => ( c0_1(X3)
              | ~ c1_1(X3)
              | ~ c2_1(X3) ) )
        | hskp7 )
      & ( ! [X4] :
            ( ndr1_0
           => ( c0_1(X4)
              | c1_1(X4)
              | ~ c2_1(X4) ) )
        | ! [X5] :
            ( ndr1_0
           => ( c0_1(X5)
              | ~ c1_1(X5)
              | ~ c3_1(X5) ) )
        | ! [X6] :
            ( ndr1_0
           => ( c2_1(X6)
              | c3_1(X6)
              | ~ c0_1(X6) ) ) )
      & ( ! [X7] :
            ( ndr1_0
           => ( c0_1(X7)
              | c1_1(X7)
              | ~ c3_1(X7) ) )
        | ! [X8] :
            ( ndr1_0
           => ( c1_1(X8)
              | c3_1(X8)
              | ~ c0_1(X8) ) )
        | hskp8 )
      & ( ! [X9] :
            ( ndr1_0
           => ( c0_1(X9)
              | c1_1(X9)
              | ~ c3_1(X9) ) )
        | ! [X10] :
            ( ndr1_0
           => ( c1_1(X10)
              | ~ c2_1(X10)
              | ~ c3_1(X10) ) )
        | hskp9 )
      & ( ! [X11] :
            ( ndr1_0
           => ( c0_1(X11)
              | c1_1(X11)
              | ~ c3_1(X11) ) )
        | ! [X12] :
            ( ndr1_0
           => ( c2_1(X12)
              | ~ c0_1(X12)
              | ~ c3_1(X12) ) )
        | hskp10 )
      & ( ! [X13] :
            ( ndr1_0
           => ( c0_1(X13)
              | c1_1(X13)
              | ~ c3_1(X13) ) )
        | hskp11
        | hskp12 )
      & ( ! [X14] :
            ( ndr1_0
           => ( c0_1(X14)
              | c2_1(X14)
              | c3_1(X14) ) )
        | ! [X15] :
            ( ndr1_0
           => ( c0_1(X15)
              | c2_1(X15)
              | ~ c3_1(X15) ) )
        | hskp3 )
      & ( ! [X16] :
            ( ndr1_0
           => ( c0_1(X16)
              | c2_1(X16)
              | c3_1(X16) ) )
        | ! [X17] :
            ( ndr1_0
           => ( c0_1(X17)
              | c3_1(X17)
              | ~ c2_1(X17) ) )
        | hskp13 )
      & ( ! [X18] :
            ( ndr1_0
           => ( c0_1(X18)
              | c2_1(X18)
              | c3_1(X18) ) )
        | ! [X19] :
            ( ndr1_0
           => ( c2_1(X19)
              | c3_1(X19)
              | ~ c1_1(X19) ) )
        | hskp26 )
      & ( ! [X20] :
            ( ndr1_0
           => ( c0_1(X20)
              | c2_1(X20)
              | ~ c1_1(X20) ) )
        | ! [X21] :
            ( ndr1_0
           => ( c0_1(X21)
              | c2_1(X21)
              | ~ c3_1(X21) ) )
        | hskp14 )
      & ( ! [X22] :
            ( ndr1_0
           => ( c0_1(X22)
              | c2_1(X22)
              | ~ c1_1(X22) ) )
        | ! [X23] :
            ( ndr1_0
           => ( c1_1(X23)
              | c2_1(X23)
              | ~ c0_1(X23) ) )
        | ! [X24] :
            ( ndr1_0
           => ( c1_1(X24)
              | ~ c0_1(X24)
              | ~ c2_1(X24) ) ) )
      & ( ! [X25] :
            ( ndr1_0
           => ( c0_1(X25)
              | c2_1(X25)
              | ~ c1_1(X25) ) )
        | hskp10
        | hskp15 )
      & ( ! [X26] :
            ( ndr1_0
           => ( c0_1(X26)
              | c2_1(X26)
              | ~ c3_1(X26) ) )
        | ! [X27] :
            ( ndr1_0
           => ( c0_1(X27)
              | ~ c2_1(X27)
              | ~ c3_1(X27) ) )
        | hskp10 )
      & ( ! [X28] :
            ( ndr1_0
           => ( c0_1(X28)
              | c3_1(X28)
              | ~ c1_1(X28) ) )
        | ! [X29] :
            ( ndr1_0
           => ( c1_1(X29)
              | c3_1(X29)
              | ~ c2_1(X29) ) )
        | ! [X30] :
            ( ndr1_0
           => ( c3_1(X30)
              | ~ c1_1(X30)
              | ~ c2_1(X30) ) ) )
      & ( ! [X31] :
            ( ndr1_0
           => ( c0_1(X31)
              | c3_1(X31)
              | ~ c1_1(X31) ) )
        | ! [X32] :
            ( ndr1_0
           => ( c2_1(X32)
              | c3_1(X32)
              | ~ c1_1(X32) ) )
        | hskp16 )
      & ( ! [X33] :
            ( ndr1_0
           => ( c0_1(X33)
              | c3_1(X33)
              | ~ c1_1(X33) ) )
        | ! [X34] :
            ( ndr1_0
           => ( c3_1(X34)
              | ~ c0_1(X34)
              | ~ c2_1(X34) ) )
        | hskp4 )
      & ( ! [X35] :
            ( ndr1_0
           => ( c0_1(X35)
              | c3_1(X35)
              | ~ c1_1(X35) ) )
        | hskp27
        | hskp17 )
      & ( ! [X36] :
            ( ndr1_0
           => ( c0_1(X36)
              | c3_1(X36)
              | ~ c1_1(X36) ) )
        | hskp17
        | hskp18 )
      & ( ! [X37] :
            ( ndr1_0
           => ( c0_1(X37)
              | c3_1(X37)
              | ~ c2_1(X37) ) )
        | hskp29
        | hskp6 )
      & ( ! [X38] :
            ( ndr1_0
           => ( c0_1(X38)
              | ~ c1_1(X38)
              | ~ c2_1(X38) ) )
        | ! [X39] :
            ( ndr1_0
           => ( c0_1(X39)
              | ~ c2_1(X39)
              | ~ c3_1(X39) ) )
        | ! [X40] :
            ( ndr1_0
           => ( c1_1(X40)
              | c2_1(X40)
              | ~ c3_1(X40) ) ) )
      & ( ! [X41] :
            ( ndr1_0
           => ( c0_1(X41)
              | ~ c1_1(X41)
              | ~ c2_1(X41) ) )
        | ! [X42] :
            ( ndr1_0
           => ( c1_1(X42)
              | c3_1(X42)
              | ~ c0_1(X42) ) )
        | ! [X43] :
            ( ndr1_0
           => ( c1_1(X43)
              | ~ c0_1(X43)
              | ~ c3_1(X43) ) ) )
      & ( ! [X44] :
            ( ndr1_0
           => ( c0_1(X44)
              | ~ c1_1(X44)
              | ~ c2_1(X44) ) )
        | ! [X45] :
            ( ndr1_0
           => ( c1_1(X45)
              | c3_1(X45)
              | ~ c2_1(X45) ) )
        | hskp4 )
      & ( ! [X46] :
            ( ndr1_0
           => ( c0_1(X46)
              | ~ c1_1(X46)
              | ~ c2_1(X46) ) )
        | ! [X47] :
            ( ndr1_0
           => ( c1_1(X47)
              | ~ c0_1(X47)
              | ~ c2_1(X47) ) )
        | hskp19 )
      & ( ! [X48] :
            ( ndr1_0
           => ( c0_1(X48)
              | ~ c1_1(X48)
              | ~ c2_1(X48) ) )
        | hskp26
        | hskp7 )
      & ( ! [X49] :
            ( ndr1_0
           => ( c0_1(X49)
              | ~ c1_1(X49)
              | ~ c3_1(X49) ) )
        | ! [X50] :
            ( ndr1_0
           => ( c1_1(X50)
              | c3_1(X50)
              | ~ c0_1(X50) ) )
        | hskp19 )
      & ( ! [X51] :
            ( ndr1_0
           => ( c0_1(X51)
              | ~ c1_1(X51)
              | ~ c3_1(X51) ) )
        | ! [X52] :
            ( ndr1_0
           => ( c3_1(X52)
              | ~ c1_1(X52)
              | ~ c2_1(X52) ) )
        | hskp20 )
      & ( ! [X53] :
            ( ndr1_0
           => ( c0_1(X53)
              | ~ c2_1(X53)
              | ~ c3_1(X53) ) )
        | hskp21
        | hskp19 )
      & ( ! [X54] :
            ( ndr1_0
           => ( c1_1(X54)
              | c2_1(X54)
              | c3_1(X54) ) )
        | ! [X55] :
            ( ndr1_0
           => ( c1_1(X55)
              | c3_1(X55)
              | ~ c0_1(X55) ) )
        | hskp1 )
      & ( ! [X56] :
            ( ndr1_0
           => ( c1_1(X56)
              | c2_1(X56)
              | c3_1(X56) ) )
        | hskp22
        | hskp17 )
      & ( ! [X57] :
            ( ndr1_0
           => ( c1_1(X57)
              | c2_1(X57)
              | c3_1(X57) ) )
        | hskp6
        | hskp15 )
      & ( ! [X58] :
            ( ndr1_0
           => ( c1_1(X58)
              | c2_1(X58)
              | ~ c0_1(X58) ) )
        | ! [X59] :
            ( ndr1_0
           => ( c2_1(X59)
              | ~ c0_1(X59)
              | ~ c3_1(X59) ) )
        | ! [X60] :
            ( ndr1_0
           => ( c3_1(X60)
              | ~ c1_1(X60)
              | ~ c2_1(X60) ) ) )
      & ( ! [X61] :
            ( ndr1_0
           => ( c1_1(X61)
              | c2_1(X61)
              | ~ c0_1(X61) ) )
        | hskp13
        | hskp12 )
      & ( ! [X62] :
            ( ndr1_0
           => ( c1_1(X62)
              | c2_1(X62)
              | ~ c3_1(X62) ) )
        | hskp28
        | hskp13 )
      & ( ! [X63] :
            ( ndr1_0
           => ( c1_1(X63)
              | c3_1(X63)
              | ~ c0_1(X63) ) )
        | ! [X64] :
            ( ndr1_0
           => ( ~ c1_1(X64)
              | ~ c2_1(X64)
              | ~ c3_1(X64) ) )
        | hskp7 )
      & ( ! [X65] :
            ( ndr1_0
           => ( c1_1(X65)
              | c3_1(X65)
              | ~ c0_1(X65) ) )
        | hskp23
        | hskp24 )
      & ( ! [X66] :
            ( ndr1_0
           => ( c1_1(X66)
              | c3_1(X66)
              | ~ c2_1(X66) ) )
        | hskp10
        | hskp25 )
      & ( ! [X67] :
            ( ndr1_0
           => ( c1_1(X67)
              | c3_1(X67)
              | ~ c2_1(X67) ) )
        | hskp12
        | hskp7 )
      & ( ! [X68] :
            ( ndr1_0
           => ( c1_1(X68)
              | ~ c0_1(X68)
              | ~ c2_1(X68) ) )
        | ! [X69] :
            ( ndr1_0
           => ( c2_1(X69)
              | ~ c1_1(X69)
              | ~ c3_1(X69) ) )
        | hskp19 )
      & ( ! [X70] :
            ( ndr1_0
           => ( c1_1(X70)
              | ~ c0_1(X70)
              | ~ c3_1(X70) ) )
        | hskp2
        | hskp4 )
      & ( ! [X71] :
            ( ndr1_0
           => ( c1_1(X71)
              | ~ c2_1(X71)
              | ~ c3_1(X71) ) )
        | ! [X72] :
            ( ndr1_0
           => ( c2_1(X72)
              | c3_1(X72)
              | ~ c1_1(X72) ) )
        | hskp4 )
      & ( ! [X73] :
            ( ndr1_0
           => ( c1_1(X73)
              | ~ c2_1(X73)
              | ~ c3_1(X73) ) )
        | hskp19
        | hskp7 )
      & ( ! [X74] :
            ( ndr1_0
           => ( c2_1(X74)
              | c3_1(X74)
              | ~ c0_1(X74) ) )
        | hskp11
        | hskp0 )
      & ( ! [X75] :
            ( ndr1_0
           => ( c2_1(X75)
              | ~ c0_1(X75)
              | ~ c3_1(X75) ) )
        | ! [X76] :
            ( ndr1_0
           => ( ~ c0_1(X76)
              | ~ c1_1(X76)
              | ~ c2_1(X76) ) )
        | hskp12 )
      & ( ! [X77] :
            ( ndr1_0
           => ( c3_1(X77)
              | ~ c0_1(X77)
              | ~ c1_1(X77) ) )
        | hskp10 )
      & ( ! [X78] :
            ( ndr1_0
           => ( c3_1(X78)
              | ~ c0_1(X78)
              | ~ c2_1(X78) ) )
        | hskp9
        | hskp6 )
      & ( ! [X79] :
            ( ndr1_0
           => ( ~ c0_1(X79)
              | ~ c1_1(X79)
              | ~ c3_1(X79) ) )
        | ! [X80] :
            ( ndr1_0
           => ( ~ c1_1(X80)
              | ~ c2_1(X80)
              | ~ c3_1(X80) ) )
        | hskp21 )
      & ( ! [X81] :
            ( ndr1_0
           => ( ~ c0_1(X81)
              | ~ c1_1(X81)
              | ~ c3_1(X81) ) )
        | hskp29
        | hskp17 )
      & ( ! [X82] :
            ( ndr1_0
           => ( ~ c0_1(X82)
              | ~ c1_1(X82)
              | ~ c3_1(X82) ) )
        | hskp2
        | hskp20 )
      & ( ! [X83] :
            ( ndr1_0
           => ( ~ c1_1(X83)
              | ~ c2_1(X83)
              | ~ c3_1(X83) ) )
        | hskp19
        | hskp5 )
      & ( hskp26
        | hskp19
        | hskp18 )
      & ( hskp27
        | hskp24
        | hskp18 )
      & ( hskp20
        | hskp16
        | hskp28 )
      & ( hskp16
        | hskp6
        | hskp17 )
      & ( hskp10
        | hskp21
        | hskp5 ) ) ).

%--------------------------------------------------------------------------
