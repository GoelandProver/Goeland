%--------------------------------------------------------------------------
% File     : SYN446+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=60, K=3, D=1, P=0, Index=016
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-60-3-1-016.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.20 v5.3.0, 0.00 v4.1.0, 0.67 v4.0.1, 0.33 v3.7.0, 0.00 v3.5.0, 0.25 v3.4.0, 0.00 v3.1.0, 0.50 v2.6.0, 0.25 v2.5.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  609 (   0 equ)
%            Maximal formula atoms :  609 ( 609 avg)
%            Number of connectives :  832 ( 224   ~; 333   |; 183   &)
%                                         (   0 <=>;  92  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   94 (  94 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   36 (  36 usr;  32 prp; 0-1 aty)
%            Number of functors    :   31 (  31 usr;  31 con; 0-0 aty)
%            Number of variables   :   92 (  92   !;   0   ?)
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
          & c1_1(a375)
          & ~ c0_1(a375)
          & ~ c2_1(a375) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & c0_1(a376)
          & ~ c2_1(a376)
          & ~ c3_1(a376) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & c1_1(a377)
          & ~ c2_1(a377)
          & ~ c3_1(a377) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & c1_1(a378)
          & c3_1(a378)
          & ~ c0_1(a378) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & ~ c0_1(a379)
          & ~ c1_1(a379)
          & ~ c2_1(a379) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & c0_1(a380)
          & c1_1(a380)
          & ~ c3_1(a380) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & c1_1(a381)
          & c2_1(a381)
          & ~ c0_1(a381) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & c3_1(a384)
          & ~ c0_1(a384)
          & ~ c2_1(a384) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & c0_1(a385)
          & c2_1(a385)
          & ~ c1_1(a385) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & c2_1(a387)
          & c3_1(a387)
          & ~ c1_1(a387) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & c0_1(a392)
          & c1_1(a392)
          & ~ c2_1(a392) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & c3_1(a394)
          & ~ c1_1(a394)
          & ~ c2_1(a394) ) )
      & ( ~ hskp12
        | ( ndr1_0
          & c0_1(a395)
          & ~ c1_1(a395)
          & ~ c2_1(a395) ) )
      & ( ~ hskp13
        | ( ndr1_0
          & c1_1(a396)
          & ~ c0_1(a396)
          & ~ c3_1(a396) ) )
      & ( ~ hskp14
        | ( ndr1_0
          & c0_1(a398)
          & ~ c1_1(a398)
          & ~ c3_1(a398) ) )
      & ( ~ hskp15
        | ( ndr1_0
          & ~ c0_1(a399)
          & ~ c2_1(a399)
          & ~ c3_1(a399) ) )
      & ( ~ hskp16
        | ( ndr1_0
          & c0_1(a400)
          & c2_1(a400)
          & ~ c3_1(a400) ) )
      & ( ~ hskp17
        | ( ndr1_0
          & c1_1(a401)
          & c2_1(a401)
          & ~ c3_1(a401) ) )
      & ( ~ hskp18
        | ( ndr1_0
          & c1_1(a404)
          & c3_1(a404)
          & ~ c2_1(a404) ) )
      & ( ~ hskp19
        | ( ndr1_0
          & c0_1(a407)
          & c3_1(a407)
          & ~ c2_1(a407) ) )
      & ( ~ hskp20
        | ( ndr1_0
          & c2_1(a409)
          & ~ c1_1(a409)
          & ~ c3_1(a409) ) )
      & ( ~ hskp21
        | ( ndr1_0
          & c2_1(a411)
          & c3_1(a411)
          & ~ c0_1(a411) ) )
      & ( ~ hskp22
        | ( ndr1_0
          & c2_1(a418)
          & ~ c0_1(a418)
          & ~ c3_1(a418) ) )
      & ( ~ hskp23
        | ( ndr1_0
          & ~ c1_1(a420)
          & ~ c2_1(a420)
          & ~ c3_1(a420) ) )
      & ( ~ hskp24
        | ( ndr1_0
          & c2_1(a424)
          & ~ c0_1(a424)
          & ~ c1_1(a424) ) )
      & ( ~ hskp25
        | ( ndr1_0
          & c3_1(a425)
          & ~ c0_1(a425)
          & ~ c1_1(a425) ) )
      & ( ~ hskp26
        | ( ndr1_0
          & ~ c0_1(a427)
          & ~ c1_1(a427)
          & ~ c3_1(a427) ) )
      & ( ~ hskp27
        | ( ndr1_0
          & c0_1(a374)
          & c1_1(a374)
          & c2_1(a374) ) )
      & ( ~ hskp28
        | ( ndr1_0
          & c1_1(a386)
          & c2_1(a386)
          & c3_1(a386) ) )
      & ( ~ hskp29
        | ( ndr1_0
          & c0_1(a390)
          & c1_1(a390)
          & c3_1(a390) ) )
      & ( ~ hskp30
        | ( ndr1_0
          & c0_1(a397)
          & c2_1(a397)
          & c3_1(a397) ) )
      & ( ! [U] :
            ( ndr1_0
           => ( c0_1(U)
              | c1_1(U)
              | c2_1(U) ) )
        | hskp27
        | hskp0 )
      & ( ! [V] :
            ( ndr1_0
           => ( c0_1(V)
              | c1_1(V)
              | c2_1(V) ) )
        | hskp1
        | hskp2 )
      & ( ! [W] :
            ( ndr1_0
           => ( c0_1(W)
              | c1_1(W)
              | c2_1(W) ) )
        | hskp3
        | hskp4 )
      & ( ! [X] :
            ( ndr1_0
           => ( c0_1(X)
              | c1_1(X)
              | ~ c2_1(X) ) )
        | ! [Y] :
            ( ndr1_0
           => ( c1_1(Y)
              | c3_1(Y)
              | ~ c2_1(Y) ) )
        | hskp5 )
      & ( ! [Z] :
            ( ndr1_0
           => ( c0_1(Z)
              | c1_1(Z)
              | ~ c2_1(Z) ) )
        | ! [X1] :
            ( ndr1_0
           => ( c1_1(X1)
              | ~ c0_1(X1)
              | ~ c3_1(X1) ) )
        | ! [X2] :
            ( ndr1_0
           => ( c2_1(X2)
              | c3_1(X2)
              | ~ c1_1(X2) ) ) )
      & ( ! [X3] :
            ( ndr1_0
           => ( c0_1(X3)
              | c1_1(X3)
              | ~ c3_1(X3) ) )
        | ! [X4] :
            ( ndr1_0
           => ( c0_1(X4)
              | c3_1(X4)
              | ~ c2_1(X4) ) )
        | ! [X5] :
            ( ndr1_0
           => ( c1_1(X5)
              | c2_1(X5)
              | ~ c0_1(X5) ) ) )
      & ( ! [X6] :
            ( ndr1_0
           => ( c0_1(X6)
              | c1_1(X6)
              | ~ c3_1(X6) ) )
        | ! [X7] :
            ( ndr1_0
           => ( c0_1(X7)
              | c3_1(X7)
              | ~ c2_1(X7) ) )
        | hskp6 )
      & ( ! [X8] :
            ( ndr1_0
           => ( c0_1(X8)
              | c1_1(X8)
              | ~ c3_1(X8) ) )
        | ! [X9] :
            ( ndr1_0
           => ( c1_1(X9)
              | ~ c2_1(X9)
              | ~ c3_1(X9) ) )
        | hskp5 )
      & ( ! [X10] :
            ( ndr1_0
           => ( c0_1(X10)
              | c1_1(X10)
              | ~ c3_1(X10) ) )
        | ! [X11] :
            ( ndr1_0
           => ( c2_1(X11)
              | c3_1(X11)
              | ~ c0_1(X11) ) )
        | ! [X12] :
            ( ndr1_0
           => ( ~ c0_1(X12)
              | ~ c2_1(X12)
              | ~ c3_1(X12) ) ) )
      & ( ! [X13] :
            ( ndr1_0
           => ( c0_1(X13)
              | c1_1(X13)
              | ~ c3_1(X13) ) )
        | hskp5
        | hskp7 )
      & ( ! [X14] :
            ( ndr1_0
           => ( c0_1(X14)
              | c2_1(X14)
              | c3_1(X14) ) )
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
              | c2_1(X17)
              | c3_1(X17) ) )
        | ! [X18] :
            ( ndr1_0
           => ( c0_1(X18)
              | ~ c1_1(X18)
              | ~ c3_1(X18) ) )
        | hskp8 )
      & ( ! [X19] :
            ( ndr1_0
           => ( c0_1(X19)
              | c2_1(X19)
              | ~ c1_1(X19) ) )
        | ! [X20] :
            ( ndr1_0
           => ( c0_1(X20)
              | c3_1(X20)
              | ~ c1_1(X20) ) )
        | ! [X21] :
            ( ndr1_0
           => ( ~ c0_1(X21)
              | ~ c2_1(X21)
              | ~ c3_1(X21) ) ) )
      & ( ! [X22] :
            ( ndr1_0
           => ( c0_1(X22)
              | c2_1(X22)
              | ~ c1_1(X22) ) )
        | ! [X23] :
            ( ndr1_0
           => ( c0_1(X23)
              | ~ c1_1(X23)
              | ~ c2_1(X23) ) )
        | ! [X24] :
            ( ndr1_0
           => ( c1_1(X24)
              | c3_1(X24)
              | ~ c2_1(X24) ) ) )
      & ( ! [X25] :
            ( ndr1_0
           => ( c0_1(X25)
              | c2_1(X25)
              | ~ c1_1(X25) ) )
        | hskp28
        | hskp9 )
      & ( ! [X26] :
            ( ndr1_0
           => ( c0_1(X26)
              | c2_1(X26)
              | ~ c3_1(X26) ) )
        | ! [X27] :
            ( ndr1_0
           => ( c2_1(X27)
              | c3_1(X27)
              | ~ c0_1(X27) ) )
        | hskp4 )
      & ( ! [X28] :
            ( ndr1_0
           => ( c0_1(X28)
              | c3_1(X28)
              | ~ c1_1(X28) ) )
        | ! [X29] :
            ( ndr1_0
           => ( c1_1(X29)
              | ~ c2_1(X29)
              | ~ c3_1(X29) ) )
        | hskp5 )
      & ( ! [X30] :
            ( ndr1_0
           => ( c0_1(X30)
              | c3_1(X30)
              | ~ c1_1(X30) ) )
        | ! [X31] :
            ( ndr1_0
           => ( c2_1(X31)
              | ~ c0_1(X31)
              | ~ c1_1(X31) ) )
        | hskp29 )
      & ( ! [X32] :
            ( ndr1_0
           => ( c0_1(X32)
              | c3_1(X32)
              | ~ c2_1(X32) ) )
        | ! [X33] :
            ( ndr1_0
           => ( c1_1(X33)
              | c2_1(X33)
              | ~ c0_1(X33) ) )
        | hskp3 )
      & ( ! [X34] :
            ( ndr1_0
           => ( c0_1(X34)
              | c3_1(X34)
              | ~ c2_1(X34) ) )
        | ! [X35] :
            ( ndr1_0
           => ( c1_1(X35)
              | c3_1(X35)
              | ~ c0_1(X35) ) )
        | ! [X36] :
            ( ndr1_0
           => ( c1_1(X36)
              | ~ c0_1(X36)
              | ~ c2_1(X36) ) ) )
      & ( ! [X37] :
            ( ndr1_0
           => ( c0_1(X37)
              | c3_1(X37)
              | ~ c2_1(X37) ) )
        | ! [X38] :
            ( ndr1_0
           => ( c2_1(X38)
              | ~ c1_1(X38)
              | ~ c3_1(X38) ) )
        | hskp10 )
      & ( ! [X39] :
            ( ndr1_0
           => ( c0_1(X39)
              | c3_1(X39)
              | ~ c2_1(X39) ) )
        | hskp3
        | hskp11 )
      & ( ! [X40] :
            ( ndr1_0
           => ( c0_1(X40)
              | ~ c1_1(X40)
              | ~ c2_1(X40) ) )
        | ! [X41] :
            ( ndr1_0
           => ( c2_1(X41)
              | ~ c0_1(X41)
              | ~ c3_1(X41) ) )
        | hskp12 )
      & ( ! [X42] :
            ( ndr1_0
           => ( c0_1(X42)
              | ~ c1_1(X42)
              | ~ c3_1(X42) ) )
        | ! [X43] :
            ( ndr1_0
           => ( ~ c0_1(X43)
              | ~ c1_1(X43)
              | ~ c2_1(X43) ) )
        | hskp13 )
      & ( ! [X44] :
            ( ndr1_0
           => ( c0_1(X44)
              | ~ c1_1(X44)
              | ~ c3_1(X44) ) )
        | ! [X45] :
            ( ndr1_0
           => ( ~ c0_1(X45)
              | ~ c2_1(X45)
              | ~ c3_1(X45) ) )
        | hskp30 )
      & ( ! [X46] :
            ( ndr1_0
           => ( c0_1(X46)
              | ~ c1_1(X46)
              | ~ c3_1(X46) ) )
        | hskp14
        | hskp15 )
      & ( ! [X47] :
            ( ndr1_0
           => ( c0_1(X47)
              | ~ c2_1(X47)
              | ~ c3_1(X47) ) )
        | ! [X48] :
            ( ndr1_0
           => ( c3_1(X48)
              | ~ c1_1(X48)
              | ~ c2_1(X48) ) )
        | hskp16 )
      & ( ! [X49] :
            ( ndr1_0
           => ( c0_1(X49)
              | ~ c2_1(X49)
              | ~ c3_1(X49) ) )
        | hskp17
        | hskp11 )
      & ( ! [X50] :
            ( ndr1_0
           => ( c1_1(X50)
              | c2_1(X50)
              | c3_1(X50) ) )
        | hskp8
        | hskp18 )
      & ( ! [X51] :
            ( ndr1_0
           => ( c1_1(X51)
              | c2_1(X51)
              | ~ c0_1(X51) ) )
        | ! [X52] :
            ( ndr1_0
           => ( c1_1(X52)
              | ~ c0_1(X52)
              | ~ c3_1(X52) ) )
        | hskp11 )
      & ( ! [X53] :
            ( ndr1_0
           => ( c1_1(X53)
              | c2_1(X53)
              | ~ c0_1(X53) ) )
        | ! [X54] :
            ( ndr1_0
           => ( c2_1(X54)
              | c3_1(X54)
              | ~ c1_1(X54) ) )
        | hskp1 )
      & ( ! [X55] :
            ( ndr1_0
           => ( c1_1(X55)
              | c2_1(X55)
              | ~ c3_1(X55) ) )
        | ! [X56] :
            ( ndr1_0
           => ( c1_1(X56)
              | ~ c0_1(X56)
              | ~ c2_1(X56) ) )
        | hskp19 )
      & ( ! [X57] :
            ( ndr1_0
           => ( c1_1(X57)
              | c2_1(X57)
              | ~ c3_1(X57) ) )
        | ! [X58] :
            ( ndr1_0
           => ( c2_1(X58)
              | ~ c0_1(X58)
              | ~ c1_1(X58) ) )
        | hskp1 )
      & ( ! [X59] :
            ( ndr1_0
           => ( c1_1(X59)
              | c3_1(X59)
              | ~ c0_1(X59) ) )
        | ! [X60] :
            ( ndr1_0
           => ( c2_1(X60)
              | ~ c0_1(X60)
              | ~ c1_1(X60) ) )
        | hskp20 )
      & ( ! [X61] :
            ( ndr1_0
           => ( c1_1(X61)
              | c3_1(X61)
              | ~ c0_1(X61) ) )
        | hskp6
        | hskp21 )
      & ( ! [X62] :
            ( ndr1_0
           => ( c1_1(X62)
              | c3_1(X62)
              | ~ c2_1(X62) ) )
        | ! [X63] :
            ( ndr1_0
           => ( c3_1(X63)
              | ~ c0_1(X63)
              | ~ c2_1(X63) ) )
        | hskp14 )
      & ( ! [X64] :
            ( ndr1_0
           => ( c1_1(X64)
              | c3_1(X64)
              | ~ c2_1(X64) ) )
        | ! [X65] :
            ( ndr1_0
           => ( ~ c0_1(X65)
              | ~ c2_1(X65)
              | ~ c3_1(X65) ) )
        | hskp15 )
      & ( ! [X66] :
            ( ndr1_0
           => ( c1_1(X66)
              | c3_1(X66)
              | ~ c2_1(X66) ) )
        | hskp30
        | hskp19 )
      & ( ! [X67] :
            ( ndr1_0
           => ( c1_1(X67)
              | ~ c0_1(X67)
              | ~ c2_1(X67) ) )
        | ! [X68] :
            ( ndr1_0
           => ( c3_1(X68)
              | ~ c1_1(X68)
              | ~ c2_1(X68) ) )
        | ! [X69] :
            ( ndr1_0
           => ( ~ c1_1(X69)
              | ~ c2_1(X69)
              | ~ c3_1(X69) ) ) )
      & ( ! [X70] :
            ( ndr1_0
           => ( c1_1(X70)
              | ~ c0_1(X70)
              | ~ c3_1(X70) ) )
        | ! [X71] :
            ( ndr1_0
           => ( c2_1(X71)
              | ~ c0_1(X71)
              | ~ c1_1(X71) ) )
        | hskp5 )
      & ( ! [X72] :
            ( ndr1_0
           => ( c1_1(X72)
              | ~ c2_1(X72)
              | ~ c3_1(X72) ) )
        | ! [X73] :
            ( ndr1_0
           => ( c3_1(X73)
              | ~ c0_1(X73)
              | ~ c2_1(X73) ) )
        | hskp5 )
      & ( ! [X74] :
            ( ndr1_0
           => ( c2_1(X74)
              | c3_1(X74)
              | ~ c1_1(X74) ) )
        | ! [X75] :
            ( ndr1_0
           => ( ~ c0_1(X75)
              | ~ c1_1(X75)
              | ~ c3_1(X75) ) )
        | hskp22 )
      & ( ! [X76] :
            ( ndr1_0
           => ( c2_1(X76)
              | ~ c1_1(X76)
              | ~ c3_1(X76) ) )
        | hskp30
        | hskp23 )
      & ( ! [X77] :
            ( ndr1_0
           => ( c3_1(X77)
              | ~ c0_1(X77)
              | ~ c2_1(X77) ) )
        | hskp1
        | hskp13 )
      & ( ! [X78] :
            ( ndr1_0
           => ( c3_1(X78)
              | ~ c0_1(X78)
              | ~ c2_1(X78) ) )
        | hskp6 )
      & ( ! [X79] :
            ( ndr1_0
           => ( c3_1(X79)
              | ~ c0_1(X79)
              | ~ c2_1(X79) ) )
        | hskp24
        | hskp25 )
      & ( ! [X80] :
            ( ndr1_0
           => ( c3_1(X80)
              | ~ c0_1(X80)
              | ~ c2_1(X80) ) )
        | hskp22
        | hskp26 )
      & ( ! [X81] :
            ( ndr1_0
           => ( c3_1(X81)
              | ~ c1_1(X81)
              | ~ c2_1(X81) ) )
        | hskp27
        | hskp10 )
      & ( ! [X82] :
            ( ndr1_0
           => ( c3_1(X82)
              | ~ c1_1(X82)
              | ~ c2_1(X82) ) )
        | hskp30
        | hskp4 )
      & ( ! [X83] :
            ( ndr1_0
           => ( ~ c0_1(X83)
              | ~ c2_1(X83)
              | ~ c3_1(X83) ) )
        | ! [X84] :
            ( ndr1_0
           => ( ~ c1_1(X84)
              | ~ c2_1(X84)
              | ~ c3_1(X84) ) )
        | hskp23 )
      & ( ! [X85] :
            ( ndr1_0
           => ( ~ c0_1(X85)
              | ~ c2_1(X85)
              | ~ c3_1(X85) ) )
        | hskp14
        | hskp21 )
      & ( ! [X86] :
            ( ndr1_0
           => ( ~ c1_1(X86)
              | ~ c2_1(X86)
              | ~ c3_1(X86) ) )
        | hskp0
        | hskp7 )
      & ( hskp29
        | hskp10
        | hskp22 )
      & ( hskp29
        | hskp28
        | hskp23 )
      & ( hskp5
        | hskp3
        | hskp2 )
      & ( hskp8
        | hskp17 )
      & ( hskp19
        | hskp4
        | hskp26 )
      & ( hskp28
        | hskp0
        | hskp23 )
      & ( hskp6
        | hskp20
        | hskp23 )
      & ( hskp0
        | hskp25
        | hskp4 ) ) ).

%--------------------------------------------------------------------------
