

%--------------------------------------------------------------------------
% File     : SYN442+1 : TPTP v7.4.0. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=60, K=3, D=1, P=0, Index=011
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-60-3-1-011.dfg [Wei97]

% Status   : Theorem
% Rating   : 0.00 v6.1.0, 0.17 v6.0.0, 0.00 v5.5.0, 0.33 v5.3.0, 0.27 v5.2.0, 0.00 v5.0.0, 0.25 v4.1.0, 0.44 v4.0.1, 0.42 v4.0.0, 0.45 v3.7.0, 0.67 v3.5.0, 0.38 v3.4.0, 0.25 v3.3.0, 0.22 v3.2.0, 0.33 v3.1.0, 0.67 v2.7.0, 0.33 v2.6.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.50 v2.2.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :  596 (   0 equality)
%            Maximal formula depth :   94 (  94 average)
%            Number of connectives :  807 ( 212 ~  ; 324  |; 183  &)
%                                         (   0 <=>;  88 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   36 (  32 propositional; 0-1 arity)
%            Number of functors    :   31 (  31 constant; 0-0 arity)
%            Number of variables   :   88 (   0 singleton;  88 !;   0 ?)
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
            & c2_1(a124)
            & c3_1(a124)
            & ~ c0_1(a124) ) )
        & ( ~ hskp1
          | ( ndr1_0
            & c0_1(a125)
            & c1_1(a125)
            & ~ c3_1(a125) ) )
        & ( ~ hskp2
          | ( ndr1_0
            & c0_1(a126)
            & ~ c1_1(a126)
            & ~ c2_1(a126) ) )
        & ( ~ hskp3
          | ( ndr1_0
            & ~ c0_1(a128)
            & ~ c2_1(a128)
            & ~ c3_1(a128) ) )
        & ( ~ hskp4
          | ( ndr1_0
            & c1_1(a130)
            & c2_1(a130)
            & ~ c3_1(a130) ) )
        & ( ~ hskp5
          | ( ndr1_0
            & c1_1(a131)
            & c3_1(a131)
            & ~ c2_1(a131) ) )
        & ( ~ hskp6
          | ( ndr1_0
            & ~ c0_1(a133)
            & ~ c1_1(a133)
            & ~ c2_1(a133) ) )
        & ( ~ hskp7
          | ( ndr1_0
            & c1_1(a134)
            & ~ c0_1(a134)
            & ~ c3_1(a134) ) )
        & ( ~ hskp8
          | ( ndr1_0
            & c2_1(a135)
            & c3_1(a135)
            & ~ c1_1(a135) ) )
        & ( ~ hskp9
          | ( ndr1_0
            & c0_1(a136)
            & c2_1(a136)
            & ~ c3_1(a136) ) )
        & ( ~ hskp10
          | ( ndr1_0
            & c0_1(a138)
            & c3_1(a138)
            & ~ c1_1(a138) ) )
        & ( ~ hskp11
          | ( ndr1_0
            & c0_1(a139)
            & ~ c1_1(a139)
            & ~ c3_1(a139) ) )
        & ( ~ hskp12
          | ( ndr1_0
            & c1_1(a140)
            & c3_1(a140)
            & ~ c0_1(a140) ) )
        & ( ~ hskp13
          | ( ndr1_0
            & c2_1(a144)
            & ~ c0_1(a144)
            & ~ c3_1(a144) ) )
        & ( ~ hskp14
          | ( ndr1_0
            & ~ c0_1(a145)
            & ~ c1_1(a145)
            & ~ c3_1(a145) ) )
        & ( ~ hskp15
          | ( ndr1_0
            & c3_1(a149)
            & ~ c1_1(a149)
            & ~ c2_1(a149) ) )
        & ( ~ hskp16
          | ( ndr1_0
            & c0_1(a151)
            & c1_1(a151)
            & ~ c2_1(a151) ) )
        & ( ~ hskp17
          | ( ndr1_0
            & c1_1(a158)
            & ~ c2_1(a158)
            & ~ c3_1(a158) ) )
        & ( ~ hskp18
          | ( ndr1_0
            & c0_1(a159)
            & ~ c2_1(a159)
            & ~ c3_1(a159) ) )
        & ( ~ hskp19
          | ( ndr1_0
            & c0_1(a162)
            & c3_1(a162)
            & ~ c2_1(a162) ) )
        & ( ~ hskp20
          | ( ndr1_0
            & c1_1(a168)
            & ~ c0_1(a168)
            & ~ c2_1(a168) ) )
        & ( ~ hskp21
          | ( ndr1_0
            & c3_1(a170)
            & ~ c0_1(a170)
            & ~ c2_1(a170) ) )
        & ( ~ hskp22
          | ( ndr1_0
            & c0_1(a179)
            & c2_1(a179)
            & ~ c1_1(a179) ) )
        & ( ~ hskp23
          | ( ndr1_0
            & c1_1(a181)
            & c2_1(a181)
            & ~ c0_1(a181) ) )
        & ( ~ hskp24
          | ( ndr1_0
            & ~ c1_1(a183)
            & ~ c2_1(a183)
            & ~ c3_1(a183) ) )
        & ( ~ hskp25
          | ( ndr1_0
            & c2_1(a192)
            & ~ c1_1(a192)
            & ~ c3_1(a192) ) )
        & ( ~ hskp26
          | ( ndr1_0
            & c2_1(a196)
            & ~ c0_1(a196)
            & ~ c1_1(a196) ) )
        & ( ~ hskp27
          | ( ndr1_0
            & c1_1(a137)
            & c2_1(a137)
            & c3_1(a137) ) )
        & ( ~ hskp28
          | ( ndr1_0
            & c0_1(a143)
            & c2_1(a143)
            & c3_1(a143) ) )
        & ( ~ hskp29
          | ( ndr1_0
            & c0_1(a150)
            & c1_1(a150)
            & c3_1(a150) ) )
        & ( ~ hskp30
          | ( ndr1_0
            & c0_1(a199)
            & c1_1(a199)
            & c2_1(a199) ) )
        & ( ! [U] :
              ( ndr1_0
             => ( c0_1(U)
                | c1_1(U)
                | c2_1(U) ) )
          | ! [V] :
              ( ndr1_0
             => ( c0_1(V)
                | c1_1(V)
                | c3_1(V) ) )
          | ! [W] :
              ( ndr1_0
             => ( c1_1(W)
                | c2_1(W)
                | ~ c0_1(W) ) ) )
        & ( ! [X] :
              ( ndr1_0
             => ( c0_1(X)
                | c1_1(X)
                | c2_1(X) ) )
          | ! [Y] :
              ( ndr1_0
             => ( c0_1(Y)
                | c2_1(Y)
                | c3_1(Y) ) )
          | ! [Z] :
              ( ndr1_0
             => ( c1_1(Z)
                | ~ c0_1(Z)
                | ~ c3_1(Z) ) ) )
        & ( ! [X1] :
              ( ndr1_0
             => ( c0_1(X1)
                | c1_1(X1)
                | c3_1(X1) ) )
          | ! [X2] :
              ( ndr1_0
             => ( c0_1(X2)
                | c1_1(X2)
                | ~ c3_1(X2) ) )
          | hskp0 )
        & ( ! [X3] :
              ( ndr1_0
             => ( c0_1(X3)
                | c1_1(X3)
                | c3_1(X3) ) )
          | hskp1
          | hskp2 )
        & ( ! [X4] :
              ( ndr1_0
             => ( c0_1(X4)
                | c1_1(X4)
                | ~ c2_1(X4) ) )
          | hskp1
          | hskp3 )
        & ( ! [X5] :
              ( ndr1_0
             => ( c0_1(X5)
                | c1_1(X5)
                | ~ c3_1(X5) ) )
          | ! [X6] :
              ( ndr1_0
             => ( c1_1(X6)
                | ~ c2_1(X6)
                | ~ c3_1(X6) ) )
          | hskp2 )
        & ( ! [X7] :
              ( ndr1_0
             => ( c0_1(X7)
                | c1_1(X7)
                | ~ c3_1(X7) ) )
          | hskp4
          | hskp5 )
        & ( ! [X8] :
              ( ndr1_0
             => ( c0_1(X8)
                | c1_1(X8)
                | ~ c3_1(X8) ) )
          | hskp4
          | hskp6 )
        & ( ! [X9] :
              ( ndr1_0
             => ( c0_1(X9)
                | c1_1(X9)
                | ~ c3_1(X9) ) )
          | hskp7
          | hskp8 )
        & ( ! [X10] :
              ( ndr1_0
             => ( c0_1(X10)
                | c2_1(X10)
                | c3_1(X10) ) )
          | ! [X11] :
              ( ndr1_0
             => ( c0_1(X11)
                | c2_1(X11)
                | ~ c3_1(X11) ) )
          | hskp9 )
        & ( ! [X12] :
              ( ndr1_0
             => ( c0_1(X12)
                | c2_1(X12)
                | c3_1(X12) ) )
          | ! [X13] :
              ( ndr1_0
             => ( c0_1(X13)
                | c2_1(X13)
                | ~ c3_1(X13) ) )
          | hskp27 )
        & ( ! [X14] :
              ( ndr1_0
             => ( c0_1(X14)
                | c2_1(X14)
                | ~ c1_1(X14) ) )
          | hskp10
          | hskp11 )
        & ( ! [X15] :
              ( ndr1_0
             => ( c0_1(X15)
                | c2_1(X15)
                | ~ c1_1(X15) ) )
          | hskp12
          | hskp8 )
        & ( ! [X16] :
              ( ndr1_0
             => ( c0_1(X16)
                | c2_1(X16)
                | ~ c3_1(X16) ) )
          | ! [X17] :
              ( ndr1_0
             => ( c1_1(X17)
                | c3_1(X17)
                | ~ c2_1(X17) ) )
          | hskp3 )
        & ( ! [X18] :
              ( ndr1_0
             => ( c0_1(X18)
                | c2_1(X18)
                | ~ c3_1(X18) ) )
          | hskp28
          | hskp13 )
        & ( ! [X19] :
              ( ndr1_0
             => ( c0_1(X19)
                | c2_1(X19)
                | ~ c3_1(X19) ) )
          | hskp14
          | hskp3 )
        & ( ! [X20] :
              ( ndr1_0
             => ( c0_1(X20)
                | c3_1(X20)
                | ~ c1_1(X20) ) )
          | ! [X21] :
              ( ndr1_0
             => ( c0_1(X21)
                | ~ c1_1(X21)
                | ~ c3_1(X21) ) )
          | hskp6 )
        & ( ! [X22] :
              ( ndr1_0
             => ( c0_1(X22)
                | c3_1(X22)
                | ~ c1_1(X22) ) )
          | hskp27
          | hskp15 )
        & ( ! [X23] :
              ( ndr1_0
             => ( c0_1(X23)
                | c3_1(X23)
                | ~ c2_1(X23) ) )
          | ! [X24] :
              ( ndr1_0
             => ( c0_1(X24)
                | ~ c1_1(X24)
                | ~ c2_1(X24) ) )
          | hskp29 )
        & ( ! [X25] :
              ( ndr1_0
             => ( c0_1(X25)
                | c3_1(X25)
                | ~ c2_1(X25) ) )
          | ! [X26] :
              ( ndr1_0
             => ( c1_1(X26)
                | c2_1(X26)
                | c3_1(X26) ) )
          | ! [X27] :
              ( ndr1_0
             => ( ~ c1_1(X27)
                | ~ c2_1(X27)
                | ~ c3_1(X27) ) ) )
        & ( ! [X28] :
              ( ndr1_0
             => ( c0_1(X28)
                | c3_1(X28)
                | ~ c2_1(X28) ) )
          | ! [X29] :
              ( ndr1_0
             => ( c2_1(X29)
                | c3_1(X29)
                | ~ c1_1(X29) ) )
          | hskp16 )
        & ( ! [X30] :
              ( ndr1_0
             => ( c0_1(X30)
                | c3_1(X30)
                | ~ c2_1(X30) ) )
          | ! [X31] :
              ( ndr1_0
             => ( ~ c0_1(X31)
                | ~ c2_1(X31)
                | ~ c3_1(X31) ) )
          | hskp28 )
        & ( ! [X32] :
              ( ndr1_0
             => ( c0_1(X32)
                | c3_1(X32)
                | ~ c2_1(X32) ) )
          | hskp29
          | hskp3 )
        & ( ! [X33] :
              ( ndr1_0
             => ( c0_1(X33)
                | c3_1(X33)
                | ~ c2_1(X33) ) )
          | hskp9
          | hskp10 )
        & ( ! [X34] :
              ( ndr1_0
             => ( c0_1(X34)
                | c3_1(X34)
                | ~ c2_1(X34) ) )
          | hskp7
          | hskp17 )
        & ( ! [X35] :
              ( ndr1_0
             => ( c0_1(X35)
                | ~ c1_1(X35)
                | ~ c2_1(X35) ) )
          | ! [X36] :
              ( ndr1_0
             => ( ~ c0_1(X36)
                | ~ c2_1(X36)
                | ~ c3_1(X36) ) )
          | hskp18 )
        & ( ! [X37] :
              ( ndr1_0
             => ( c0_1(X37)
                | ~ c2_1(X37)
                | ~ c3_1(X37) ) )
          | ! [X38] :
              ( ndr1_0
             => ( c1_1(X38)
                | c2_1(X38)
                | ~ c3_1(X38) ) )
          | ! [X39] :
              ( ndr1_0
             => ( c2_1(X39)
                | ~ c1_1(X39)
                | ~ c3_1(X39) ) ) )
        & ( ! [X40] :
              ( ndr1_0
             => ( c1_1(X40)
                | c2_1(X40)
                | c3_1(X40) ) )
          | ! [X41] :
              ( ndr1_0
             => ( ~ c0_1(X41)
                | ~ c1_1(X41)
                | ~ c3_1(X41) ) )
          | hskp7 )
        & ( ! [X42] :
              ( ndr1_0
             => ( c1_1(X42)
                | c2_1(X42)
                | ~ c0_1(X42) ) )
          | ! [X43] :
              ( ndr1_0
             => ( ~ c0_1(X43)
                | ~ c2_1(X43)
                | ~ c3_1(X43) ) )
          | hskp16 )
        & ( ! [X44] :
              ( ndr1_0
             => ( c1_1(X44)
                | c3_1(X44)
                | ~ c0_1(X44) ) )
          | ! [X45] :
              ( ndr1_0
             => ( c1_1(X45)
                | ~ c0_1(X45)
                | ~ c3_1(X45) ) )
          | hskp19 )
        & ( ! [X46] :
              ( ndr1_0
             => ( c1_1(X46)
                | c3_1(X46)
                | ~ c0_1(X46) ) )
          | ! [X47] :
              ( ndr1_0
             => ( c2_1(X47)
                | ~ c0_1(X47)
                | ~ c3_1(X47) ) )
          | ! [X48] :
              ( ndr1_0
             => ( ~ c1_1(X48)
                | ~ c2_1(X48)
                | ~ c3_1(X48) ) ) )
        & ( ! [X49] :
              ( ndr1_0
             => ( c1_1(X49)
                | c3_1(X49)
                | ~ c0_1(X49) ) )
          | hskp4
          | hskp5 )
        & ( ! [X50] :
              ( ndr1_0
             => ( c1_1(X50)
                | c3_1(X50)
                | ~ c2_1(X50) ) )
          | ! [X51] :
              ( ndr1_0
             => ( c2_1(X51)
                | c3_1(X51)
                | ~ c1_1(X51) ) )
          | ! [X52] :
              ( ndr1_0
             => ( c2_1(X52)
                | ~ c1_1(X52)
                | ~ c3_1(X52) ) ) )
        & ( ! [X53] :
              ( ndr1_0
             => ( c1_1(X53)
                | c3_1(X53)
                | ~ c2_1(X53) ) )
          | ! [X54] :
              ( ndr1_0
             => ( c2_1(X54)
                | ~ c0_1(X54)
                | ~ c1_1(X54) ) )
          | ! [X55] :
              ( ndr1_0
             => ( ~ c1_1(X55)
                | ~ c2_1(X55)
                | ~ c3_1(X55) ) ) )
        & ( ! [X56] :
              ( ndr1_0
             => ( c1_1(X56)
                | c3_1(X56)
                | ~ c2_1(X56) ) )
          | ! [X57] :
              ( ndr1_0
             => ( c2_1(X57)
                | ~ c0_1(X57)
                | ~ c3_1(X57) ) )
          | hskp8 )
        & ( ! [X58] :
              ( ndr1_0
             => ( c1_1(X58)
                | c3_1(X58)
                | ~ c2_1(X58) ) )
          | hskp16
          | hskp17 )
        & ( ! [X59] :
              ( ndr1_0
             => ( c1_1(X59)
                | ~ c0_1(X59)
                | ~ c2_1(X59) ) )
          | ! [X60] :
              ( ndr1_0
             => ( c2_1(X60)
                | ~ c1_1(X60)
                | ~ c3_1(X60) ) )
          | hskp20 )
        & ( ! [X61] :
              ( ndr1_0
             => ( c1_1(X61)
                | ~ c0_1(X61)
                | ~ c3_1(X61) ) )
          | hskp16
          | hskp21 )
        & ( ! [X62] :
              ( ndr1_0
             => ( c1_1(X62)
                | ~ c0_1(X62)
                | ~ c3_1(X62) ) )
          | hskp10
          | hskp13 )
        & ( ! [X63] :
              ( ndr1_0
             => ( c2_1(X63)
                | c3_1(X63)
                | ~ c0_1(X63) ) )
          | ! [X64] :
              ( ndr1_0
             => ( c2_1(X64)
                | ~ c0_1(X64)
                | ~ c3_1(X64) ) )
          | hskp17 )
        & ( ! [X65] :
              ( ndr1_0
             => ( c2_1(X65)
                | c3_1(X65)
                | ~ c0_1(X65) ) )
          | hskp1
          | hskp3 )
        & ( ! [X66] :
              ( ndr1_0
             => ( c2_1(X66)
                | c3_1(X66)
                | ~ c1_1(X66) ) )
          | hskp18
          | hskp21 )
        & ( ! [X67] :
              ( ndr1_0
             => ( c2_1(X67)
                | ~ c0_1(X67)
                | ~ c1_1(X67) ) )
          | hskp15 )
        & ( ! [X68] :
              ( ndr1_0
             => ( c2_1(X68)
                | ~ c0_1(X68)
                | ~ c3_1(X68) ) )
          | ! [X69] :
              ( ndr1_0
             => ( ~ c0_1(X69)
                | ~ c1_1(X69)
                | ~ c2_1(X69) ) )
          | hskp22 )
        & ( ! [X70] :
              ( ndr1_0
             => ( c2_1(X70)
                | ~ c0_1(X70)
                | ~ c3_1(X70) ) )
          | hskp16
          | hskp23 )
        & ( ! [X71] :
              ( ndr1_0
             => ( c2_1(X71)
                | ~ c0_1(X71)
                | ~ c3_1(X71) ) )
          | hskp5
          | hskp24 )
        & ( ! [X72] :
              ( ndr1_0
             => ( c2_1(X72)
                | ~ c1_1(X72)
                | ~ c3_1(X72) ) )
          | hskp4
          | hskp24 )
        & ( ! [X73] :
              ( ndr1_0
             => ( c3_1(X73)
                | ~ c0_1(X73)
                | ~ c1_1(X73) ) )
          | ! [X74] :
              ( ndr1_0
             => ( ~ c0_1(X74)
                | ~ c1_1(X74)
                | ~ c2_1(X74) ) )
          | hskp13 )
        & ( ! [X75] :
              ( ndr1_0
             => ( c3_1(X75)
                | ~ c0_1(X75)
                | ~ c1_1(X75) ) )
          | hskp12 )
        & ( ! [X76] :
              ( ndr1_0
             => ( ~ c0_1(X76)
                | ~ c1_1(X76)
                | ~ c2_1(X76) ) )
          | hskp19
          | hskp13 )
        & ( ! [X77] :
              ( ndr1_0
             => ( ~ c0_1(X77)
                | ~ c1_1(X77)
                | ~ c3_1(X77) ) )
          | hskp10
          | hskp15 )
        & ( ! [X78] :
              ( ndr1_0
             => ( ~ c0_1(X78)
                | ~ c1_1(X78)
                | ~ c3_1(X78) ) )
          | hskp25
          | hskp24 )
        & ( ! [X79] :
              ( ndr1_0
             => ( ~ c0_1(X79)
                | ~ c2_1(X79)
                | ~ c3_1(X79) ) )
          | ! [X80] :
              ( ndr1_0
             => ( ~ c1_1(X80)
                | ~ c2_1(X80)
                | ~ c3_1(X80) ) )
          | hskp1 )
        & ( ! [X81] :
              ( ndr1_0
             => ( ~ c0_1(X81)
                | ~ c2_1(X81)
                | ~ c3_1(X81) ) )
          | hskp27
          | hskp26 )
        & ( ! [X82] :
              ( ndr1_0
             => ( ~ c1_1(X82)
                | ~ c2_1(X82)
                | ~ c3_1(X82) ) )
          | hskp18
          | hskp12 )
        & ( hskp30
          | hskp10
          | hskp18 )
        & ( hskp9
          | hskp21
          | hskp6 )
        & ( hskp10
          | hskp5
          | hskp0 )
        & ( hskp11
          | hskp8 )
        & ( hskp12
          | hskp5
          | hskp15 ) ) )).

%--------------------------------------------------------------------------

