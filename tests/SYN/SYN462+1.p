
%--------------------------------------------------------------------------
% File     : SYN462+1 : TPTP v7.4.0. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=60, K=3, D=1, P=0, Index=083
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-60-3-1-083.dfg [Wei97]

% Status   : Theorem
% Rating   : 0.00 v6.1.0, 0.17 v6.0.0, 0.00 v5.5.0, 0.22 v5.3.0, 0.27 v5.2.0, 0.00 v5.0.0, 0.25 v4.1.0, 0.39 v4.0.1, 0.47 v4.0.0, 0.50 v3.7.0, 0.67 v3.5.0, 0.38 v3.4.0, 0.25 v3.3.0, 0.22 v3.2.0, 0.33 v3.1.0, 0.67 v2.7.0, 0.33 v2.6.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.50 v2.2.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :  593 (   0 equality)
%            Maximal formula depth :   94 (  94 average)
%            Number of connectives :  807 ( 215 ~  ; 322  |; 183  &)
%                                         (   0 <=>;  87 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   36 (  32 propositional; 0-1 arity)
%            Number of functors    :   31 (  31 constant; 0-0 arity)
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
            & c0_1(a267)
            & ~ c2_1(a267)
            & ~ c3_1(a267) ) )
        & ( ~ hskp1
          | ( ndr1_0
            & c3_1(a268)
            & ~ c1_1(a268)
            & ~ c2_1(a268) ) )
        & ( ~ hskp2
          | ( ndr1_0
            & c0_1(a269)
            & ~ c1_1(a269)
            & ~ c2_1(a269) ) )
        & ( ~ hskp3
          | ( ndr1_0
            & c0_1(a270)
            & c3_1(a270)
            & ~ c2_1(a270) ) )
        & ( ~ hskp4
          | ( ndr1_0
            & ~ c0_1(a271)
            & ~ c1_1(a271)
            & ~ c3_1(a271) ) )
        & ( ~ hskp5
          | ( ndr1_0
            & c0_1(a272)
            & ~ c1_1(a272)
            & ~ c3_1(a272) ) )
        & ( ~ hskp6
          | ( ndr1_0
            & c1_1(a273)
            & c2_1(a273)
            & ~ c0_1(a273) ) )
        & ( ~ hskp7
          | ( ndr1_0
            & c0_1(a274)
            & c1_1(a274)
            & ~ c3_1(a274) ) )
        & ( ~ hskp8
          | ( ndr1_0
            & ~ c0_1(a275)
            & ~ c2_1(a275)
            & ~ c3_1(a275) ) )
        & ( ~ hskp9
          | ( ndr1_0
            & c2_1(a280)
            & c3_1(a280)
            & ~ c1_1(a280) ) )
        & ( ~ hskp10
          | ( ndr1_0
            & c3_1(a281)
            & ~ c0_1(a281)
            & ~ c2_1(a281) ) )
        & ( ~ hskp11
          | ( ndr1_0
            & c2_1(a282)
            & ~ c0_1(a282)
            & ~ c1_1(a282) ) )
        & ( ~ hskp12
          | ( ndr1_0
            & c2_1(a284)
            & ~ c0_1(a284)
            & ~ c3_1(a284) ) )
        & ( ~ hskp13
          | ( ndr1_0
            & c1_1(a286)
            & c3_1(a286)
            & ~ c0_1(a286) ) )
        & ( ~ hskp14
          | ( ndr1_0
            & c1_1(a287)
            & ~ c0_1(a287)
            & ~ c2_1(a287) ) )
        & ( ~ hskp15
          | ( ndr1_0
            & c2_1(a291)
            & c3_1(a291)
            & ~ c0_1(a291) ) )
        & ( ~ hskp16
          | ( ndr1_0
            & c0_1(a293)
            & c1_1(a293)
            & ~ c2_1(a293) ) )
        & ( ~ hskp17
          | ( ndr1_0
            & c3_1(a295)
            & ~ c0_1(a295)
            & ~ c1_1(a295) ) )
        & ( ~ hskp18
          | ( ndr1_0
            & c1_1(a298)
            & c3_1(a298)
            & ~ c2_1(a298) ) )
        & ( ~ hskp19
          | ( ndr1_0
            & c1_1(a303)
            & c2_1(a303)
            & ~ c3_1(a303) ) )
        & ( ~ hskp20
          | ( ndr1_0
            & c1_1(a305)
            & ~ c0_1(a305)
            & ~ c3_1(a305) ) )
        & ( ~ hskp21
          | ( ndr1_0
            & c0_1(a307)
            & c2_1(a307)
            & ~ c1_1(a307) ) )
        & ( ~ hskp22
          | ( ndr1_0
            & c0_1(a311)
            & c2_1(a311)
            & ~ c3_1(a311) ) )
        & ( ~ hskp23
          | ( ndr1_0
            & ~ c1_1(a313)
            & ~ c2_1(a313)
            & ~ c3_1(a313) ) )
        & ( ~ hskp24
          | ( ndr1_0
            & c2_1(a318)
            & ~ c1_1(a318)
            & ~ c3_1(a318) ) )
        & ( ~ hskp25
          | ( ndr1_0
            & c1_1(a352)
            & ~ c2_1(a352)
            & ~ c3_1(a352) ) )
        & ( ~ hskp26
          | ( ndr1_0
            & ~ c0_1(a356)
            & ~ c1_1(a356)
            & ~ c2_1(a356) ) )
        & ( ~ hskp27
          | ( ndr1_0
            & c1_1(a276)
            & c2_1(a276)
            & c3_1(a276) ) )
        & ( ~ hskp28
          | ( ndr1_0
            & c0_1(a278)
            & c1_1(a278)
            & c3_1(a278) ) )
        & ( ~ hskp29
          | ( ndr1_0
            & c0_1(a304)
            & c1_1(a304)
            & c2_1(a304) ) )
        & ( ~ hskp30
          | ( ndr1_0
            & c0_1(a337)
            & c2_1(a337)
            & c3_1(a337) ) )
        & ( ! [U] :
              ( ndr1_0
             => ( c0_1(U)
                | c1_1(U)
                | c2_1(U) ) )
          | ! [V] :
              ( ndr1_0
             => ( c1_1(V)
                | c2_1(V)
                | c3_1(V) ) )
          | ! [W] :
              ( ndr1_0
             => ( c1_1(W)
                | ~ c0_1(W)
                | ~ c2_1(W) ) ) )
        & ( ! [X] :
              ( ndr1_0
             => ( c0_1(X)
                | c1_1(X)
                | c2_1(X) ) )
          | ! [Y] :
              ( ndr1_0
             => ( c1_1(Y)
                | c2_1(Y)
                | ~ c3_1(Y) ) )
          | ! [Z] :
              ( ndr1_0
             => ( c1_1(Z)
                | c3_1(Z)
                | ~ c2_1(Z) ) ) )
        & ( ! [X1] :
              ( ndr1_0
             => ( c0_1(X1)
                | c1_1(X1)
                | c2_1(X1) ) )
          | hskp0
          | hskp1 )
        & ( ! [X2] :
              ( ndr1_0
             => ( c0_1(X2)
                | c1_1(X2)
                | c3_1(X2) ) )
          | ! [X3] :
              ( ndr1_0
             => ( c0_1(X3)
                | c2_1(X3)
                | c3_1(X3) ) )
          | hskp2 )
        & ( ! [X4] :
              ( ndr1_0
             => ( c0_1(X4)
                | c1_1(X4)
                | ~ c2_1(X4) ) )
          | ! [X5] :
              ( ndr1_0
             => ( c0_1(X5)
                | c1_1(X5)
                | ~ c3_1(X5) ) )
          | hskp3 )
        & ( ! [X6] :
              ( ndr1_0
             => ( c0_1(X6)
                | c1_1(X6)
                | ~ c2_1(X6) ) )
          | ! [X7] :
              ( ndr1_0
             => ( c0_1(X7)
                | ~ c1_1(X7)
                | ~ c3_1(X7) ) )
          | ! [X8] :
              ( ndr1_0
             => ( c2_1(X8)
                | ~ c0_1(X8)
                | ~ c1_1(X8) ) ) )
        & ( ! [X9] :
              ( ndr1_0
             => ( c0_1(X9)
                | c1_1(X9)
                | ~ c2_1(X9) ) )
          | ! [X10] :
              ( ndr1_0
             => ( c1_1(X10)
                | c3_1(X10)
                | ~ c0_1(X10) ) )
          | hskp4 )
        & ( ! [X11] :
              ( ndr1_0
             => ( c0_1(X11)
                | c1_1(X11)
                | ~ c2_1(X11) ) )
          | ! [X12] :
              ( ndr1_0
             => ( c2_1(X12)
                | c3_1(X12)
                | ~ c0_1(X12) ) )
          | hskp5 )
        & ( ! [X13] :
              ( ndr1_0
             => ( c0_1(X13)
                | c1_1(X13)
                | ~ c3_1(X13) ) )
          | ! [X14] :
              ( ndr1_0
             => ( ~ c0_1(X14)
                | ~ c1_1(X14)
                | ~ c2_1(X14) ) )
          | hskp6 )
        & ( ! [X15] :
              ( ndr1_0
             => ( c0_1(X15)
                | c1_1(X15)
                | ~ c3_1(X15) ) )
          | hskp7
          | hskp8 )
        & ( ! [X16] :
              ( ndr1_0
             => ( c0_1(X16)
                | c1_1(X16)
                | ~ c3_1(X16) ) )
          | hskp27
          | hskp1 )
        & ( ! [X17] :
              ( ndr1_0
             => ( c0_1(X17)
                | c2_1(X17)
                | c3_1(X17) ) )
          | ! [X18] :
              ( ndr1_0
             => ( c0_1(X18)
                | c3_1(X18)
                | ~ c2_1(X18) ) )
          | hskp28 )
        & ( ! [X19] :
              ( ndr1_0
             => ( c0_1(X19)
                | c2_1(X19)
                | ~ c1_1(X19) ) )
          | ! [X20] :
              ( ndr1_0
             => ( ~ c0_1(X20)
                | ~ c2_1(X20)
                | ~ c3_1(X20) ) )
          | hskp27 )
        & ( ! [X21] :
              ( ndr1_0
             => ( c0_1(X21)
                | c2_1(X21)
                | ~ c1_1(X21) ) )
          | hskp9 )
        & ( ! [X22] :
              ( ndr1_0
             => ( c0_1(X22)
                | c2_1(X22)
                | ~ c3_1(X22) ) )
          | ! [X23] :
              ( ndr1_0
             => ( c0_1(X23)
                | ~ c1_1(X23)
                | ~ c3_1(X23) ) )
          | ! [X24] :
              ( ndr1_0
             => ( ~ c0_1(X24)
                | ~ c1_1(X24)
                | ~ c3_1(X24) ) ) )
        & ( ! [X25] :
              ( ndr1_0
             => ( c0_1(X25)
                | c2_1(X25)
                | ~ c3_1(X25) ) )
          | ! [X26] :
              ( ndr1_0
             => ( c1_1(X26)
                | ~ c2_1(X26)
                | ~ c3_1(X26) ) )
          | hskp10 )
        & ( ! [X27] :
              ( ndr1_0
             => ( c0_1(X27)
                | c2_1(X27)
                | ~ c3_1(X27) ) )
          | ! [X28] :
              ( ndr1_0
             => ( c2_1(X28)
                | ~ c1_1(X28)
                | ~ c3_1(X28) ) )
          | hskp11 )
        & ( ! [X29] :
              ( ndr1_0
             => ( c0_1(X29)
                | c3_1(X29)
                | ~ c1_1(X29) ) )
          | ! [X30] :
              ( ndr1_0
             => ( c1_1(X30)
                | ~ c0_1(X30)
                | ~ c3_1(X30) ) )
          | ! [X31] :
              ( ndr1_0
             => ( c3_1(X31)
                | ~ c0_1(X31)
                | ~ c1_1(X31) ) ) )
        & ( ! [X32] :
              ( ndr1_0
             => ( c0_1(X32)
                | c3_1(X32)
                | ~ c2_1(X32) ) )
          | hskp7
          | hskp12 )
        & ( ! [X33] :
              ( ndr1_0
             => ( c0_1(X33)
                | c3_1(X33)
                | ~ c2_1(X33) ) )
          | hskp6
          | hskp13 )
        & ( ! [X34] :
              ( ndr1_0
             => ( c0_1(X34)
                | c3_1(X34)
                | ~ c2_1(X34) ) )
          | hskp14 )
        & ( ! [X35] :
              ( ndr1_0
             => ( c0_1(X35)
                | c3_1(X35)
                | ~ c2_1(X35) ) )
          | hskp1
          | hskp4 )
        & ( ! [X36] :
              ( ndr1_0
             => ( c0_1(X36)
                | ~ c1_1(X36)
                | ~ c2_1(X36) ) )
          | ! [X37] :
              ( ndr1_0
             => ( c1_1(X37)
                | c3_1(X37)
                | ~ c0_1(X37) ) )
          | ! [X38] :
              ( ndr1_0
             => ( c3_1(X38)
                | ~ c0_1(X38)
                | ~ c2_1(X38) ) ) )
        & ( ! [X39] :
              ( ndr1_0
             => ( c0_1(X39)
                | ~ c1_1(X39)
                | ~ c2_1(X39) ) )
          | ! [X40] :
              ( ndr1_0
             => ( ~ c0_1(X40)
                | ~ c2_1(X40)
                | ~ c3_1(X40) ) )
          | hskp6 )
        & ( ! [X41] :
              ( ndr1_0
             => ( c0_1(X41)
                | ~ c1_1(X41)
                | ~ c2_1(X41) ) )
          | hskp15
          | hskp12 )
        & ( ! [X42] :
              ( ndr1_0
             => ( c0_1(X42)
                | ~ c1_1(X42)
                | ~ c3_1(X42) ) )
          | ! [X43] :
              ( ndr1_0
             => ( c1_1(X43)
                | ~ c0_1(X43)
                | ~ c3_1(X43) ) )
          | hskp16 )
        & ( ! [X44] :
              ( ndr1_0
             => ( c0_1(X44)
                | ~ c1_1(X44)
                | ~ c3_1(X44) ) )
          | hskp0
          | hskp17 )
        & ( ! [X45] :
              ( ndr1_0
             => ( c1_1(X45)
                | c2_1(X45)
                | c3_1(X45) ) )
          | ! [X46] :
              ( ndr1_0
             => ( c3_1(X46)
                | ~ c0_1(X46)
                | ~ c2_1(X46) ) )
          | hskp7 )
        & ( ! [X47] :
              ( ndr1_0
             => ( c1_1(X47)
                | c2_1(X47)
                | ~ c0_1(X47) ) )
          | ! [X48] :
              ( ndr1_0
             => ( c2_1(X48)
                | c3_1(X48)
                | ~ c0_1(X48) ) )
          | ! [X49] :
              ( ndr1_0
             => ( c2_1(X49)
                | c3_1(X49)
                | ~ c1_1(X49) ) ) )
        & ( ! [X50] :
              ( ndr1_0
             => ( c1_1(X50)
                | c2_1(X50)
                | ~ c0_1(X50) ) )
          | ! [X51] :
              ( ndr1_0
             => ( c2_1(X51)
                | ~ c1_1(X51)
                | ~ c3_1(X51) ) )
          | hskp7 )
        & ( ! [X52] :
              ( ndr1_0
             => ( c1_1(X52)
                | c2_1(X52)
                | ~ c0_1(X52) ) )
          | ! [X53] :
              ( ndr1_0
             => ( ~ c0_1(X53)
                | ~ c1_1(X53)
                | ~ c2_1(X53) ) )
          | hskp18 )
        & ( ! [X54] :
              ( ndr1_0
             => ( c1_1(X54)
                | c2_1(X54)
                | ~ c3_1(X54) ) )
          | ! [X55] :
              ( ndr1_0
             => ( c2_1(X55)
                | ~ c0_1(X55)
                | ~ c1_1(X55) ) )
          | ! [X56] :
              ( ndr1_0
             => ( c3_1(X56)
                | ~ c1_1(X56)
                | ~ c2_1(X56) ) ) )
        & ( ! [X57] :
              ( ndr1_0
             => ( c1_1(X57)
                | c2_1(X57)
                | ~ c3_1(X57) ) )
          | hskp0
          | hskp10 )
        & ( ! [X58] :
              ( ndr1_0
             => ( c1_1(X58)
                | c2_1(X58)
                | ~ c3_1(X58) ) )
          | hskp8 )
        & ( ! [X59] :
              ( ndr1_0
             => ( c1_1(X59)
                | c3_1(X59)
                | ~ c0_1(X59) ) )
          | hskp27
          | hskp19 )
        & ( ! [X60] :
              ( ndr1_0
             => ( c1_1(X60)
                | ~ c0_1(X60)
                | ~ c2_1(X60) ) )
          | ! [X61] :
              ( ndr1_0
             => ( c1_1(X61)
                | ~ c0_1(X61)
                | ~ c3_1(X61) ) )
          | ! [X62] :
              ( ndr1_0
             => ( ~ c1_1(X62)
                | ~ c2_1(X62)
                | ~ c3_1(X62) ) ) )
        & ( ! [X63] :
              ( ndr1_0
             => ( c1_1(X63)
                | ~ c0_1(X63)
                | ~ c2_1(X63) ) )
          | hskp29
          | hskp20 )
        & ( ! [X64] :
              ( ndr1_0
             => ( c1_1(X64)
                | ~ c0_1(X64)
                | ~ c3_1(X64) ) )
          | ! [X65] :
              ( ndr1_0
             => ( c2_1(X65)
                | c3_1(X65)
                | ~ c0_1(X65) ) )
          | hskp1 )
        & ( ! [X66] :
              ( ndr1_0
             => ( c1_1(X66)
                | ~ c0_1(X66)
                | ~ c3_1(X66) ) )
          | ! [X67] :
              ( ndr1_0
             => ( c3_1(X67)
                | ~ c1_1(X67)
                | ~ c2_1(X67) ) )
          | hskp21 )
        & ( ! [X68] :
              ( ndr1_0
             => ( c1_1(X68)
                | ~ c2_1(X68)
                | ~ c3_1(X68) ) )
          | ! [X69] :
              ( ndr1_0
             => ( c2_1(X69)
                | ~ c0_1(X69)
                | ~ c1_1(X69) ) )
          | hskp8 )
        & ( ! [X70] :
              ( ndr1_0
             => ( c1_1(X70)
                | ~ c2_1(X70)
                | ~ c3_1(X70) ) )
          | hskp29
          | hskp5 )
        & ( ! [X71] :
              ( ndr1_0
             => ( c1_1(X71)
                | ~ c2_1(X71)
                | ~ c3_1(X71) ) )
          | hskp22
          | hskp0 )
        & ( ! [X72] :
              ( ndr1_0
             => ( c2_1(X72)
                | ~ c1_1(X72)
                | ~ c3_1(X72) ) )
          | ! [X73] :
              ( ndr1_0
             => ( ~ c0_1(X73)
                | ~ c1_1(X73)
                | ~ c3_1(X73) ) )
          | hskp23 )
        & ( ! [X74] :
              ( ndr1_0
             => ( c3_1(X74)
                | ~ c0_1(X74)
                | ~ c1_1(X74) ) )
          | hskp28
          | hskp23 )
        & ( ! [X75] :
              ( ndr1_0
             => ( c3_1(X75)
                | ~ c0_1(X75)
                | ~ c2_1(X75) ) )
          | ! [X76] :
              ( ndr1_0
             => ( ~ c0_1(X76)
                | ~ c1_1(X76)
                | ~ c2_1(X76) ) )
          | hskp0 )
        & ( ! [X77] :
              ( ndr1_0
             => ( c3_1(X77)
                | ~ c0_1(X77)
                | ~ c2_1(X77) ) )
          | hskp21
          | hskp24 )
        & ( ! [X78] :
              ( ndr1_0
             => ( ~ c0_1(X78)
                | ~ c1_1(X78)
                | ~ c2_1(X78) ) )
          | hskp3
          | hskp4 )
        & ( ! [X79] :
              ( ndr1_0
             => ( ~ c0_1(X79)
                | ~ c1_1(X79)
                | ~ c3_1(X79) ) )
          | hskp7
          | hskp19 )
        & ( ! [X80] :
              ( ndr1_0
             => ( ~ c1_1(X80)
                | ~ c2_1(X80)
                | ~ c3_1(X80) ) )
          | hskp7
          | hskp8 )
        & ( ! [X81] :
              ( ndr1_0
             => ( ~ c1_1(X81)
                | ~ c2_1(X81)
                | ~ c3_1(X81) ) )
          | hskp19
          | hskp20 )
        & ( hskp29
          | hskp22
          | hskp11 )
        & ( hskp29
          | hskp9
          | hskp11 )
        & ( hskp16
          | hskp7
          | hskp18 )
        & ( hskp16
          | hskp30
          | hskp5 )
        & ( hskp30
          | hskp14
          | hskp17 )
        & ( hskp21
          | hskp10
          | hskp23 )
        & ( hskp22
          | hskp6
          | hskp9 )
        & ( hskp0
          | hskp19
          | hskp9 )
        & ( hskp14
          | hskp25
          | hskp12 )
        & ( hskp12
          | hskp1
          | hskp26 ) ) )).

%--------------------------------------------------------------------------

