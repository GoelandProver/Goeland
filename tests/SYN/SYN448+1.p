

%--------------------------------------------------------------------------
% File     : SYN448+1 : TPTP v7.4.0. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=60, K=3, D=1, P=0, Index=019
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-60-3-1-019.dfg [Wei97]

% Status   : Theorem
% Rating   : 0.00 v6.1.0, 0.17 v6.0.0, 0.00 v5.5.0, 0.22 v5.3.0, 0.27 v5.2.0, 0.00 v4.1.0, 0.39 v4.0.1, 0.42 v4.0.0, 0.45 v3.7.0, 0.67 v3.5.0, 0.38 v3.4.0, 0.25 v3.3.0, 0.22 v3.2.0, 0.33 v3.1.0, 0.67 v2.7.0, 0.33 v2.6.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.50 v2.2.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :  603 (   0 equality)
%            Maximal formula depth :   92 (  92 average)
%            Number of connectives :  804 ( 202 ~  ; 334  |; 175  &)
%                                         (   0 <=>;  93 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   34 (  30 propositional; 0-1 arity)
%            Number of functors    :   29 (  29 constant; 0-0 arity)
%            Number of variables   :   93 (   0 singleton;  93 !;   0 ?)
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
            & c0_1(a460)
            & ~ c2_1(a460)
            & ~ c3_1(a460) ) )
        & ( ~ hskp1
          | ( ndr1_0
            & c2_1(a463)
            & ~ c0_1(a463)
            & ~ c1_1(a463) ) )
        & ( ~ hskp2
          | ( ndr1_0
            & ~ c0_1(a465)
            & ~ c2_1(a465)
            & ~ c3_1(a465) ) )
        & ( ~ hskp3
          | ( ndr1_0
            & c1_1(a466)
            & c3_1(a466)
            & ~ c0_1(a466) ) )
        & ( ~ hskp4
          | ( ndr1_0
            & c3_1(a467)
            & ~ c0_1(a467)
            & ~ c1_1(a467) ) )
        & ( ~ hskp5
          | ( ndr1_0
            & c0_1(a468)
            & c3_1(a468)
            & ~ c2_1(a468) ) )
        & ( ~ hskp6
          | ( ndr1_0
            & c2_1(a471)
            & ~ c1_1(a471)
            & ~ c3_1(a471) ) )
        & ( ~ hskp7
          | ( ndr1_0
            & c3_1(a474)
            & ~ c1_1(a474)
            & ~ c2_1(a474) ) )
        & ( ~ hskp8
          | ( ndr1_0
            & c0_1(a475)
            & c1_1(a475)
            & ~ c3_1(a475) ) )
        & ( ~ hskp9
          | ( ndr1_0
            & c0_1(a476)
            & c2_1(a476)
            & ~ c1_1(a476) ) )
        & ( ~ hskp10
          | ( ndr1_0
            & c1_1(a477)
            & c2_1(a477)
            & ~ c3_1(a477) ) )
        & ( ~ hskp11
          | ( ndr1_0
            & c2_1(a478)
            & ~ c0_1(a478)
            & ~ c3_1(a478) ) )
        & ( ~ hskp12
          | ( ndr1_0
            & ~ c0_1(a480)
            & ~ c1_1(a480)
            & ~ c2_1(a480) ) )
        & ( ~ hskp13
          | ( ndr1_0
            & c0_1(a483)
            & c2_1(a483)
            & ~ c3_1(a483) ) )
        & ( ~ hskp14
          | ( ndr1_0
            & ~ c1_1(a488)
            & ~ c2_1(a488)
            & ~ c3_1(a488) ) )
        & ( ~ hskp15
          | ( ndr1_0
            & c1_1(a492)
            & c3_1(a492)
            & ~ c2_1(a492) ) )
        & ( ~ hskp16
          | ( ndr1_0
            & c1_1(a493)
            & ~ c0_1(a493)
            & ~ c2_1(a493) ) )
        & ( ~ hskp17
          | ( ndr1_0
            & ~ c0_1(a494)
            & ~ c1_1(a494)
            & ~ c3_1(a494) ) )
        & ( ~ hskp18
          | ( ndr1_0
            & c1_1(a500)
            & c2_1(a500)
            & ~ c0_1(a500) ) )
        & ( ~ hskp19
          | ( ndr1_0
            & c2_1(a502)
            & c3_1(a502)
            & ~ c0_1(a502) ) )
        & ( ~ hskp20
          | ( ndr1_0
            & c2_1(a503)
            & c3_1(a503)
            & ~ c1_1(a503) ) )
        & ( ~ hskp21
          | ( ndr1_0
            & c0_1(a512)
            & c3_1(a512)
            & ~ c1_1(a512) ) )
        & ( ~ hskp22
          | ( ndr1_0
            & c0_1(a524)
            & c1_1(a524)
            & ~ c2_1(a524) ) )
        & ( ~ hskp23
          | ( ndr1_0
            & c0_1(a533)
            & ~ c1_1(a533)
            & ~ c3_1(a533) ) )
        & ( ~ hskp24
          | ( ndr1_0
            & c0_1(a540)
            & ~ c1_1(a540)
            & ~ c2_1(a540) ) )
        & ( ~ hskp25
          | ( ndr1_0
            & c0_1(a461)
            & c2_1(a461)
            & c3_1(a461) ) )
        & ( ~ hskp26
          | ( ndr1_0
            & c1_1(a470)
            & c2_1(a470)
            & c3_1(a470) ) )
        & ( ~ hskp27
          | ( ndr1_0
            & c0_1(a473)
            & c1_1(a473)
            & c3_1(a473) ) )
        & ( ~ hskp28
          | ( ndr1_0
            & c0_1(a490)
            & c1_1(a490)
            & c2_1(a490) ) )
        & ( ! [U] :
              ( ndr1_0
             => ( c0_1(U)
                | c1_1(U)
                | c2_1(U) ) )
          | ! [V] :
              ( ndr1_0
             => ( c0_1(V)
                | c1_1(V)
                | ~ c2_1(V) ) )
          | hskp0 )
        & ( ! [W] :
              ( ndr1_0
             => ( c0_1(W)
                | c1_1(W)
                | c2_1(W) ) )
          | ! [X] :
              ( ndr1_0
             => ( c0_1(X)
                | ~ c1_1(X)
                | ~ c3_1(X) ) )
          | ! [Y] :
              ( ndr1_0
             => ( c2_1(Y)
                | c3_1(Y)
                | ~ c0_1(Y) ) ) )
        & ( ! [Z] :
              ( ndr1_0
             => ( c0_1(Z)
                | c1_1(Z)
                | c2_1(Z) ) )
          | ! [X1] :
              ( ndr1_0
             => ( c1_1(X1)
                | c3_1(X1)
                | ~ c0_1(X1) ) )
          | hskp25 )
        & ( ! [X2] :
              ( ndr1_0
             => ( c0_1(X2)
                | c1_1(X2)
                | c2_1(X2) ) )
          | ! [X3] :
              ( ndr1_0
             => ( c1_1(X3)
                | ~ c2_1(X3)
                | ~ c3_1(X3) ) )
          | ! [X4] :
              ( ndr1_0
             => ( c3_1(X4)
                | ~ c0_1(X4)
                | ~ c2_1(X4) ) ) )
        & ( ! [X5] :
              ( ndr1_0
             => ( c0_1(X5)
                | c1_1(X5)
                | c2_1(X5) ) )
          | hskp0
          | hskp1 )
        & ( ! [X6] :
              ( ndr1_0
             => ( c0_1(X6)
                | c1_1(X6)
                | c3_1(X6) ) )
          | ! [X7] :
              ( ndr1_0
             => ( c0_1(X7)
                | c2_1(X7)
                | c3_1(X7) ) )
          | hskp0 )
        & ( ! [X8] :
              ( ndr1_0
             => ( c0_1(X8)
                | c1_1(X8)
                | c3_1(X8) ) )
          | ! [X9] :
              ( ndr1_0
             => ( c0_1(X9)
                | ~ c1_1(X9)
                | ~ c2_1(X9) ) )
          | hskp2 )
        & ( ! [X10] :
              ( ndr1_0
             => ( c0_1(X10)
                | c1_1(X10)
                | c3_1(X10) ) )
          | ! [X11] :
              ( ndr1_0
             => ( c0_1(X11)
                | ~ c1_1(X11)
                | ~ c3_1(X11) ) )
          | hskp3 )
        & ( ! [X12] :
              ( ndr1_0
             => ( c0_1(X12)
                | c1_1(X12)
                | c3_1(X12) ) )
          | ! [X13] :
              ( ndr1_0
             => ( c1_1(X13)
                | c2_1(X13)
                | c3_1(X13) ) )
          | ! [X14] :
              ( ndr1_0
             => ( c3_1(X14)
                | ~ c1_1(X14)
                | ~ c2_1(X14) ) ) )
        & ( ! [X15] :
              ( ndr1_0
             => ( c0_1(X15)
                | c1_1(X15)
                | c3_1(X15) ) )
          | ! [X16] :
              ( ndr1_0
             => ( c2_1(X16)
                | ~ c1_1(X16)
                | ~ c3_1(X16) ) )
          | hskp4 )
        & ( ! [X17] :
              ( ndr1_0
             => ( c0_1(X17)
                | c1_1(X17)
                | c3_1(X17) ) )
          | ! [X18] :
              ( ndr1_0
             => ( ~ c0_1(X18)
                | ~ c1_1(X18)
                | ~ c2_1(X18) ) )
          | hskp5 )
        & ( ! [X19] :
              ( ndr1_0
             => ( c0_1(X19)
                | c1_1(X19)
                | c3_1(X19) ) )
          | ! [X20] :
              ( ndr1_0
             => ( ~ c1_1(X20)
                | ~ c2_1(X20)
                | ~ c3_1(X20) ) )
          | hskp4 )
        & ( ! [X21] :
              ( ndr1_0
             => ( c0_1(X21)
                | c1_1(X21)
                | ~ c2_1(X21) ) )
          | ! [X22] :
              ( ndr1_0
             => ( ~ c0_1(X22)
                | ~ c2_1(X22)
                | ~ c3_1(X22) ) )
          | hskp26 )
        & ( ! [X23] :
              ( ndr1_0
             => ( c0_1(X23)
                | c1_1(X23)
                | ~ c2_1(X23) ) )
          | hskp6
          | hskp2 )
        & ( ! [X24] :
              ( ndr1_0
             => ( c0_1(X24)
                | c2_1(X24)
                | c3_1(X24) ) )
          | ! [X25] :
              ( ndr1_0
             => ( c1_1(X25)
                | c2_1(X25)
                | c3_1(X25) ) )
          | hskp27 )
        & ( ! [X26] :
              ( ndr1_0
             => ( c0_1(X26)
                | c2_1(X26)
                | c3_1(X26) ) )
          | ! [X27] :
              ( ndr1_0
             => ( c2_1(X27)
                | c3_1(X27)
                | ~ c0_1(X27) ) )
          | hskp7 )
        & ( ! [X28] :
              ( ndr1_0
             => ( c0_1(X28)
                | c2_1(X28)
                | ~ c1_1(X28) ) )
          | ! [X29] :
              ( ndr1_0
             => ( c0_1(X29)
                | ~ c1_1(X29)
                | ~ c3_1(X29) ) )
          | ! [X30] :
              ( ndr1_0
             => ( c0_1(X30)
                | ~ c2_1(X30)
                | ~ c3_1(X30) ) ) )
        & ( ! [X31] :
              ( ndr1_0
             => ( c0_1(X31)
                | c2_1(X31)
                | ~ c1_1(X31) ) )
          | ! [X32] :
              ( ndr1_0
             => ( c1_1(X32)
                | ~ c2_1(X32)
                | ~ c3_1(X32) ) )
          | hskp8 )
        & ( ! [X33] :
              ( ndr1_0
             => ( c0_1(X33)
                | c2_1(X33)
                | ~ c3_1(X33) ) )
          | ! [X34] :
              ( ndr1_0
             => ( c0_1(X34)
                | ~ c2_1(X34)
                | ~ c3_1(X34) ) )
          | hskp9 )
        & ( ! [X35] :
              ( ndr1_0
             => ( c0_1(X35)
                | c2_1(X35)
                | ~ c3_1(X35) ) )
          | ! [X36] :
              ( ndr1_0
             => ( ~ c0_1(X36)
                | ~ c1_1(X36)
                | ~ c2_1(X36) ) )
          | hskp10 )
        & ( ! [X37] :
              ( ndr1_0
             => ( c0_1(X37)
                | c3_1(X37)
                | ~ c1_1(X37) ) )
          | ! [X38] :
              ( ndr1_0
             => ( ~ c0_1(X38)
                | ~ c2_1(X38)
                | ~ c3_1(X38) ) )
          | hskp11 )
        & ( ! [X39] :
              ( ndr1_0
             => ( c0_1(X39)
                | c3_1(X39)
                | ~ c2_1(X39) ) )
          | hskp0
          | hskp12 )
        & ( ! [X40] :
              ( ndr1_0
             => ( c0_1(X40)
                | ~ c1_1(X40)
                | ~ c2_1(X40) ) )
          | ! [X41] :
              ( ndr1_0
             => ( c1_1(X41)
                | c2_1(X41)
                | ~ c0_1(X41) ) )
          | hskp9 )
        & ( ! [X42] :
              ( ndr1_0
             => ( c0_1(X42)
                | ~ c1_1(X42)
                | ~ c2_1(X42) ) )
          | ! [X43] :
              ( ndr1_0
             => ( c1_1(X43)
                | c3_1(X43)
                | ~ c0_1(X43) ) )
          | hskp9 )
        & ( ! [X44] :
              ( ndr1_0
             => ( c0_1(X44)
                | ~ c1_1(X44)
                | ~ c2_1(X44) ) )
          | ! [X45] :
              ( ndr1_0
             => ( c1_1(X45)
                | c3_1(X45)
                | ~ c0_1(X45) ) )
          | hskp13 )
        & ( ! [X46] :
              ( ndr1_0
             => ( c0_1(X46)
                | ~ c1_1(X46)
                | ~ c2_1(X46) ) )
          | hskp27
          | hskp10 )
        & ( ! [X47] :
              ( ndr1_0
             => ( c0_1(X47)
                | ~ c1_1(X47)
                | ~ c3_1(X47) ) )
          | ! [X48] :
              ( ndr1_0
             => ( c3_1(X48)
                | ~ c0_1(X48)
                | ~ c2_1(X48) ) )
          | hskp8 )
        & ( ! [X49] :
              ( ndr1_0
             => ( c0_1(X49)
                | ~ c1_1(X49)
                | ~ c3_1(X49) ) )
          | ! [X50] :
              ( ndr1_0
             => ( ~ c0_1(X50)
                | ~ c1_1(X50)
                | ~ c2_1(X50) ) )
          | hskp7 )
        & ( ! [X51] :
              ( ndr1_0
             => ( c0_1(X51)
                | ~ c1_1(X51)
                | ~ c3_1(X51) ) )
          | ! [X52] :
              ( ndr1_0
             => ( ~ c0_1(X52)
                | ~ c2_1(X52)
                | ~ c3_1(X52) ) )
          | hskp14 )
        & ( ! [X53] :
              ( ndr1_0
             => ( c0_1(X53)
                | ~ c2_1(X53)
                | ~ c3_1(X53) ) )
          | ! [X54] :
              ( ndr1_0
             => ( c1_1(X54)
                | c2_1(X54)
                | c3_1(X54) ) )
          | ! [X55] :
              ( ndr1_0
             => ( ~ c0_1(X55)
                | ~ c1_1(X55)
                | ~ c3_1(X55) ) ) )
        & ( ! [X56] :
              ( ndr1_0
             => ( c0_1(X56)
                | ~ c2_1(X56)
                | ~ c3_1(X56) ) )
          | ! [X57] :
              ( ndr1_0
             => ( c1_1(X57)
                | c3_1(X57)
                | ~ c2_1(X57) ) )
          | ! [X58] :
              ( ndr1_0
             => ( c2_1(X58)
                | ~ c0_1(X58)
                | ~ c1_1(X58) ) ) )
        & ( ! [X59] :
              ( ndr1_0
             => ( c0_1(X59)
                | ~ c2_1(X59)
                | ~ c3_1(X59) ) )
          | ! [X60] :
              ( ndr1_0
             => ( ~ c0_1(X60)
                | ~ c1_1(X60)
                | ~ c2_1(X60) ) )
          | hskp10 )
        & ( ! [X61] :
              ( ndr1_0
             => ( c1_1(X61)
                | c2_1(X61)
                | c3_1(X61) ) )
          | ! [X62] :
              ( ndr1_0
             => ( c2_1(X62)
                | ~ c0_1(X62)
                | ~ c3_1(X62) ) )
          | hskp28 )
        & ( ! [X63] :
              ( ndr1_0
             => ( c1_1(X63)
                | c2_1(X63)
                | c3_1(X63) ) )
          | hskp3
          | hskp15 )
        & ( ! [X64] :
              ( ndr1_0
             => ( c1_1(X64)
                | c2_1(X64)
                | ~ c0_1(X64) ) )
          | hskp16
          | hskp17 )
        & ( ! [X65] :
              ( ndr1_0
             => ( c1_1(X65)
                | c2_1(X65)
                | ~ c3_1(X65) ) )
          | hskp7
          | hskp12 )
        & ( ! [X66] :
              ( ndr1_0
             => ( c1_1(X66)
                | c3_1(X66)
                | ~ c0_1(X66) ) )
          | ! [X67] :
              ( ndr1_0
             => ( c2_1(X67)
                | c3_1(X67)
                | ~ c0_1(X67) ) )
          | hskp12 )
        & ( ! [X68] :
              ( ndr1_0
             => ( c1_1(X68)
                | c3_1(X68)
                | ~ c0_1(X68) ) )
          | hskp27
          | hskp16 )
        & ( ! [X69] :
              ( ndr1_0
             => ( c1_1(X69)
                | c3_1(X69)
                | ~ c0_1(X69) ) )
          | hskp18
          | hskp2 )
        & ( ! [X70] :
              ( ndr1_0
             => ( c1_1(X70)
                | c3_1(X70)
                | ~ c2_1(X70) ) )
          | hskp19
          | hskp20 )
        & ( ! [X71] :
              ( ndr1_0
             => ( c1_1(X71)
                | c3_1(X71)
                | ~ c2_1(X71) ) )
          | hskp12
          | hskp14 )
        & ( ! [X72] :
              ( ndr1_0
             => ( c1_1(X72)
                | ~ c0_1(X72)
                | ~ c2_1(X72) ) )
          | ! [X73] :
              ( ndr1_0
             => ( c1_1(X73)
                | ~ c0_1(X73)
                | ~ c3_1(X73) ) )
          | hskp9 )
        & ( ! [X74] :
              ( ndr1_0
             => ( c1_1(X74)
                | ~ c0_1(X74)
                | ~ c2_1(X74) ) )
          | ! [X75] :
              ( ndr1_0
             => ( ~ c0_1(X75)
                | ~ c2_1(X75)
                | ~ c3_1(X75) ) )
          | hskp17 )
        & ( ! [X76] :
              ( ndr1_0
             => ( c1_1(X76)
                | ~ c0_1(X76)
                | ~ c3_1(X76) ) )
          | hskp3
          | hskp12 )
        & ( ! [X77] :
              ( ndr1_0
             => ( c2_1(X77)
                | c3_1(X77)
                | ~ c0_1(X77) ) )
          | ! [X78] :
              ( ndr1_0
             => ( ~ c0_1(X78)
                | ~ c1_1(X78)
                | ~ c2_1(X78) ) )
          | hskp1 )
        & ( ! [X79] :
              ( ndr1_0
             => ( c2_1(X79)
                | c3_1(X79)
                | ~ c0_1(X79) ) )
          | ! [X80] :
              ( ndr1_0
             => ( ~ c0_1(X80)
                | ~ c1_1(X80)
                | ~ c3_1(X80) ) )
          | hskp3 )
        & ( ! [X81] :
              ( ndr1_0
             => ( c2_1(X81)
                | c3_1(X81)
                | ~ c1_1(X81) ) )
          | ! [X82] :
              ( ndr1_0
             => ( c2_1(X82)
                | ~ c0_1(X82)
                | ~ c3_1(X82) ) )
          | hskp21 )
        & ( ! [X83] :
              ( ndr1_0
             => ( c2_1(X83)
                | c3_1(X83)
                | ~ c1_1(X83) ) )
          | hskp11
          | hskp7 )
        & ( ! [X84] :
              ( ndr1_0
             => ( c2_1(X84)
                | ~ c0_1(X84)
                | ~ c1_1(X84) ) )
          | hskp18
          | hskp20 )
        & ( ! [X85] :
              ( ndr1_0
             => ( c2_1(X85)
                | ~ c0_1(X85)
                | ~ c1_1(X85) ) )
          | hskp15
          | hskp2 )
        & ( ! [X86] :
              ( ndr1_0
             => ( c2_1(X86)
                | ~ c1_1(X86)
                | ~ c3_1(X86) ) )
          | hskp15
          | hskp12 )
        & ( ! [X87] :
              ( ndr1_0
             => ( c3_1(X87)
                | ~ c0_1(X87)
                | ~ c2_1(X87) ) )
          | hskp26
          | hskp10 )
        & ( hskp27
          | hskp22
          | hskp17 )
        & ( hskp8
          | hskp15
          | hskp16 )
        & ( hskp25
          | hskp5
          | hskp14 )
        & ( hskp9
          | hskp23
          | hskp20 )
        & ( hskp21
          | hskp10
          | hskp6 )
        & ( hskp5
          | hskp11 )
        & ( hskp24
          | hskp15
          | hskp16 )
        & ( hskp20
          | hskp6
          | hskp12 ) ) )).

%--------------------------------------------------------------------------

