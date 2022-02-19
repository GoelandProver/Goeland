

%--------------------------------------------------------------------------
% File     : SYN465+1 : TPTP v7.4.0. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=68, K=3, D=1, P=0, Index=010
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-68-3-1-010.dfg [Wei97]

% Status   : Theorem
% Rating   : 0.00 v5.5.0, 0.33 v5.3.0, 0.27 v5.2.0, 0.00 v5.0.0, 0.25 v4.1.0, 0.44 v4.0.1, 0.42 v4.0.0, 0.45 v3.7.0, 0.67 v3.5.0, 0.38 v3.4.0, 0.25 v3.3.0, 0.22 v3.2.0, 0.33 v3.1.0, 0.67 v2.7.0, 0.33 v2.6.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.50 v2.2.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :  668 (   0 equality)
%            Maximal formula depth :  103 ( 103 average)
%            Number of connectives :  913 ( 246 ~  ; 370  |; 195  &)
%                                         (   0 <=>; 102 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   37 (  33 propositional; 0-1 arity)
%            Number of functors    :   32 (  32 constant; 0-0 arity)
%            Number of variables   :  102 (   0 singleton; 102 !;   0 ?)
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
            & c0_1(a1)
            & ~ c1_1(a1)
            & ~ c2_1(a1) ) )
        & ( ~ hskp1
          | ( ndr1_0
            & c0_1(a4)
            & c2_1(a4)
            & ~ c1_1(a4) ) )
        & ( ~ hskp2
          | ( ndr1_0
            & c2_1(a5)
            & ~ c0_1(a5)
            & ~ c1_1(a5) ) )
        & ( ~ hskp3
          | ( ndr1_0
            & c0_1(a6)
            & c3_1(a6)
            & ~ c2_1(a6) ) )
        & ( ~ hskp4
          | ( ndr1_0
            & c1_1(a7)
            & c3_1(a7)
            & ~ c0_1(a7) ) )
        & ( ~ hskp5
          | ( ndr1_0
            & ~ c0_1(a9)
            & ~ c1_1(a9)
            & ~ c2_1(a9) ) )
        & ( ~ hskp6
          | ( ndr1_0
            & c2_1(a10)
            & ~ c1_1(a10)
            & ~ c3_1(a10) ) )
        & ( ~ hskp7
          | ( ndr1_0
            & c0_1(a12)
            & c1_1(a12)
            & ~ c3_1(a12) ) )
        & ( ~ hskp8
          | ( ndr1_0
            & c1_1(a13)
            & c2_1(a13)
            & ~ c0_1(a13) ) )
        & ( ~ hskp9
          | ( ndr1_0
            & ~ c1_1(a15)
            & ~ c2_1(a15)
            & ~ c3_1(a15) ) )
        & ( ~ hskp10
          | ( ndr1_0
            & c1_1(a17)
            & ~ c0_1(a17)
            & ~ c2_1(a17) ) )
        & ( ~ hskp11
          | ( ndr1_0
            & c0_1(a21)
            & ~ c2_1(a21)
            & ~ c3_1(a21) ) )
        & ( ~ hskp12
          | ( ndr1_0
            & c1_1(a24)
            & c3_1(a24)
            & ~ c2_1(a24) ) )
        & ( ~ hskp13
          | ( ndr1_0
            & c3_1(a26)
            & ~ c0_1(a26)
            & ~ c1_1(a26) ) )
        & ( ~ hskp14
          | ( ndr1_0
            & c2_1(a28)
            & c3_1(a28)
            & ~ c0_1(a28) ) )
        & ( ~ hskp15
          | ( ndr1_0
            & c1_1(a29)
            & ~ c2_1(a29)
            & ~ c3_1(a29) ) )
        & ( ~ hskp16
          | ( ndr1_0
            & c2_1(a30)
            & c3_1(a30)
            & ~ c1_1(a30) ) )
        & ( ~ hskp17
          | ( ndr1_0
            & c0_1(a32)
            & c2_1(a32)
            & ~ c3_1(a32) ) )
        & ( ~ hskp18
          | ( ndr1_0
            & c1_1(a33)
            & c2_1(a33)
            & ~ c3_1(a33) ) )
        & ( ~ hskp19
          | ( ndr1_0
            & c1_1(a35)
            & ~ c0_1(a35)
            & ~ c3_1(a35) ) )
        & ( ~ hskp20
          | ( ndr1_0
            & c0_1(a36)
            & c1_1(a36)
            & ~ c2_1(a36) ) )
        & ( ~ hskp21
          | ( ndr1_0
            & c2_1(a39)
            & ~ c0_1(a39)
            & ~ c3_1(a39) ) )
        & ( ~ hskp22
          | ( ndr1_0
            & ~ c0_1(a40)
            & ~ c2_1(a40)
            & ~ c3_1(a40) ) )
        & ( ~ hskp23
          | ( ndr1_0
            & c0_1(a42)
            & ~ c1_1(a42)
            & ~ c3_1(a42) ) )
        & ( ~ hskp24
          | ( ndr1_0
            & c3_1(a52)
            & ~ c0_1(a52)
            & ~ c2_1(a52) ) )
        & ( ~ hskp25
          | ( ndr1_0
            & c0_1(a54)
            & c3_1(a54)
            & ~ c1_1(a54) ) )
        & ( ~ hskp26
          | ( ndr1_0
            & ~ c0_1(a57)
            & ~ c1_1(a57)
            & ~ c3_1(a57) ) )
        & ( ~ hskp27
          | ( ndr1_0
            & c3_1(a65)
            & ~ c1_1(a65)
            & ~ c2_1(a65) ) )
        & ( ~ hskp28
          | ( ndr1_0
            & c0_1(a2)
            & c1_1(a2)
            & c2_1(a2) ) )
        & ( ~ hskp29
          | ( ndr1_0
            & c1_1(a8)
            & c2_1(a8)
            & c3_1(a8) ) )
        & ( ~ hskp30
          | ( ndr1_0
            & c0_1(a20)
            & c2_1(a20)
            & c3_1(a20) ) )
        & ( ~ hskp31
          | ( ndr1_0
            & c0_1(a76)
            & c1_1(a76)
            & c3_1(a76) ) )
        & ( ! [U] :
              ( ndr1_0
             => ( c0_1(U)
                | c1_1(U)
                | c2_1(U) ) )
          | ! [V] :
              ( ndr1_0
             => ( c0_1(V)
                | ~ c2_1(V)
                | ~ c3_1(V) ) )
          | ! [W] :
              ( ndr1_0
             => ( c2_1(W)
                | ~ c1_1(W)
                | ~ c3_1(W) ) ) )
        & ( ! [X] :
              ( ndr1_0
             => ( c0_1(X)
                | c1_1(X)
                | c2_1(X) ) )
          | ! [Y] :
              ( ndr1_0
             => ( c1_1(Y)
                | ~ c0_1(Y)
                | ~ c2_1(Y) ) )
          | hskp0 )
        & ( ! [Z] :
              ( ndr1_0
             => ( c0_1(Z)
                | c1_1(Z)
                | c2_1(Z) ) )
          | hskp28
          | hskp0 )
        & ( ! [X1] :
              ( ndr1_0
             => ( c0_1(X1)
                | c1_1(X1)
                | c3_1(X1) ) )
          | ! [X2] :
              ( ndr1_0
             => ( c0_1(X2)
                | c2_1(X2)
                | ~ c3_1(X2) ) )
          | hskp1 )
        & ( ! [X3] :
              ( ndr1_0
             => ( c0_1(X3)
                | c1_1(X3)
                | c3_1(X3) ) )
          | ! [X4] :
              ( ndr1_0
             => ( c2_1(X4)
                | c3_1(X4)
                | ~ c1_1(X4) ) )
          | hskp2 )
        & ( ! [X5] :
              ( ndr1_0
             => ( c0_1(X5)
                | c1_1(X5)
                | ~ c2_1(X5) ) )
          | ! [X6] :
              ( ndr1_0
             => ( c0_1(X6)
                | c2_1(X6)
                | ~ c1_1(X6) ) )
          | ! [X7] :
              ( ndr1_0
             => ( c0_1(X7)
                | c3_1(X7)
                | ~ c2_1(X7) ) ) )
        & ( ! [X8] :
              ( ndr1_0
             => ( c0_1(X8)
                | c1_1(X8)
                | ~ c3_1(X8) ) )
          | ! [X9] :
              ( ndr1_0
             => ( c2_1(X9)
                | ~ c0_1(X9)
                | ~ c1_1(X9) ) )
          | hskp3 )
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
          | hskp4 )
        & ( ! [X12] :
              ( ndr1_0
             => ( c0_1(X12)
                | c2_1(X12)
                | c3_1(X12) ) )
          | hskp29
          | hskp5 )
        & ( ! [X13] :
              ( ndr1_0
             => ( c0_1(X13)
                | c2_1(X13)
                | ~ c1_1(X13) ) )
          | ! [X14] :
              ( ndr1_0
             => ( c0_1(X14)
                | c3_1(X14)
                | ~ c1_1(X14) ) )
          | hskp6 )
        & ( ! [X15] :
              ( ndr1_0
             => ( c0_1(X15)
                | c2_1(X15)
                | ~ c1_1(X15) ) )
          | ! [X16] :
              ( ndr1_0
             => ( c3_1(X16)
                | ~ c0_1(X16)
                | ~ c1_1(X16) ) )
          | ! [X17] :
              ( ndr1_0
             => ( ~ c0_1(X17)
                | ~ c1_1(X17)
                | ~ c3_1(X17) ) ) )
        & ( ! [X18] :
              ( ndr1_0
             => ( c0_1(X18)
                | c2_1(X18)
                | ~ c1_1(X18) ) )
          | ! [X19] :
              ( ndr1_0
             => ( ~ c0_1(X19)
                | ~ c2_1(X19)
                | ~ c3_1(X19) ) )
          | hskp28 )
        & ( ! [X20] :
              ( ndr1_0
             => ( c0_1(X20)
                | c2_1(X20)
                | ~ c1_1(X20) ) )
          | hskp7
          | hskp8 )
        & ( ! [X21] :
              ( ndr1_0
             => ( c0_1(X21)
                | c2_1(X21)
                | ~ c1_1(X21) ) )
          | hskp0
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
                | ~ c2_1(X23) ) )
          | ! [X24] :
              ( ndr1_0
             => ( ~ c1_1(X24)
                | ~ c2_1(X24)
                | ~ c3_1(X24) ) ) )
        & ( ! [X25] :
              ( ndr1_0
             => ( c0_1(X25)
                | c2_1(X25)
                | ~ c3_1(X25) ) )
          | ! [X26] :
              ( ndr1_0
             => ( c1_1(X26)
                | c3_1(X26)
                | ~ c0_1(X26) ) )
          | hskp7 )
        & ( ! [X27] :
              ( ndr1_0
             => ( c0_1(X27)
                | c2_1(X27)
                | ~ c3_1(X27) ) )
          | ! [X28] :
              ( ndr1_0
             => ( c1_1(X28)
                | c3_1(X28)
                | ~ c0_1(X28) ) )
          | hskp10 )
        & ( ! [X29] :
              ( ndr1_0
             => ( c0_1(X29)
                | c2_1(X29)
                | ~ c3_1(X29) ) )
          | ! [X30] :
              ( ndr1_0
             => ( c3_1(X30)
                | ~ c0_1(X30)
                | ~ c1_1(X30) ) )
          | hskp5 )
        & ( ! [X31] :
              ( ndr1_0
             => ( c0_1(X31)
                | c2_1(X31)
                | ~ c3_1(X31) ) )
          | ! [X32] :
              ( ndr1_0
             => ( ~ c0_1(X32)
                | ~ c1_1(X32)
                | ~ c3_1(X32) ) )
          | hskp5 )
        & ( ! [X33] :
              ( ndr1_0
             => ( c0_1(X33)
                | c2_1(X33)
                | ~ c3_1(X33) ) )
          | hskp30
          | hskp11 )
        & ( ! [X34] :
              ( ndr1_0
             => ( c0_1(X34)
                | c3_1(X34)
                | ~ c1_1(X34) ) )
          | hskp30
          | hskp8 )
        & ( ! [X35] :
              ( ndr1_0
             => ( c0_1(X35)
                | c3_1(X35)
                | ~ c1_1(X35) ) )
          | hskp12 )
        & ( ! [X36] :
              ( ndr1_0
             => ( c0_1(X36)
                | c3_1(X36)
                | ~ c2_1(X36) ) )
          | ! [X37] :
              ( ndr1_0
             => ( c1_1(X37)
                | ~ c2_1(X37)
                | ~ c3_1(X37) ) )
          | hskp8 )
        & ( ! [X38] :
              ( ndr1_0
             => ( c0_1(X38)
                | c3_1(X38)
                | ~ c2_1(X38) ) )
          | ! [X39] :
              ( ndr1_0
             => ( c2_1(X39)
                | c3_1(X39)
                | ~ c0_1(X39) ) )
          | ! [X40] :
              ( ndr1_0
             => ( c3_1(X40)
                | ~ c0_1(X40)
                | ~ c1_1(X40) ) ) )
        & ( ! [X41] :
              ( ndr1_0
             => ( c0_1(X41)
                | c3_1(X41)
                | ~ c2_1(X41) ) )
          | ! [X42] :
              ( ndr1_0
             => ( c2_1(X42)
                | c3_1(X42)
                | ~ c1_1(X42) ) )
          | hskp13 )
        & ( ! [X43] :
              ( ndr1_0
             => ( c0_1(X43)
                | c3_1(X43)
                | ~ c2_1(X43) ) )
          | hskp3
          | hskp14 )
        & ( ! [X44] :
              ( ndr1_0
             => ( c0_1(X44)
                | c3_1(X44)
                | ~ c2_1(X44) ) )
          | hskp15
          | hskp16 )
        & ( ! [X45] :
              ( ndr1_0
             => ( c0_1(X45)
                | ~ c1_1(X45)
                | ~ c2_1(X45) ) )
          | ! [X46] :
              ( ndr1_0
             => ( c0_1(X46)
                | ~ c1_1(X46)
                | ~ c3_1(X46) ) )
          | ! [X47] :
              ( ndr1_0
             => ( c1_1(X47)
                | c3_1(X47)
                | ~ c0_1(X47) ) ) )
        & ( ! [X48] :
              ( ndr1_0
             => ( c0_1(X48)
                | ~ c1_1(X48)
                | ~ c2_1(X48) ) )
          | ! [X49] :
              ( ndr1_0
             => ( c3_1(X49)
                | ~ c0_1(X49)
                | ~ c1_1(X49) ) )
          | hskp30 )
        & ( ! [X50] :
              ( ndr1_0
             => ( c0_1(X50)
                | ~ c1_1(X50)
                | ~ c2_1(X50) ) )
          | hskp17
          | hskp18 )
        & ( ! [X51] :
              ( ndr1_0
             => ( c0_1(X51)
                | ~ c1_1(X51)
                | ~ c3_1(X51) ) )
          | hskp11
          | hskp19 )
        & ( ! [X52] :
              ( ndr1_0
             => ( c0_1(X52)
                | ~ c2_1(X52)
                | ~ c3_1(X52) ) )
          | hskp20
          | hskp4 )
        & ( ! [X53] :
              ( ndr1_0
             => ( c1_1(X53)
                | c2_1(X53)
                | c3_1(X53) ) )
          | ! [X54] :
              ( ndr1_0
             => ( c1_1(X54)
                | ~ c0_1(X54)
                | ~ c2_1(X54) ) )
          | ! [X55] :
              ( ndr1_0
             => ( ~ c0_1(X55)
                | ~ c2_1(X55)
                | ~ c3_1(X55) ) ) )
        & ( ! [X56] :
              ( ndr1_0
             => ( c1_1(X56)
                | c2_1(X56)
                | c3_1(X56) ) )
          | ! [X57] :
              ( ndr1_0
             => ( c1_1(X57)
                | ~ c2_1(X57)
                | ~ c3_1(X57) ) )
          | hskp8 )
        & ( ! [X58] :
              ( ndr1_0
             => ( c1_1(X58)
                | c2_1(X58)
                | c3_1(X58) ) )
          | ! [X59] :
              ( ndr1_0
             => ( c3_1(X59)
                | ~ c0_1(X59)
                | ~ c1_1(X59) ) )
          | hskp21 )
        & ( ! [X60] :
              ( ndr1_0
             => ( c1_1(X60)
                | c2_1(X60)
                | ~ c0_1(X60) ) )
          | ! [X61] :
              ( ndr1_0
             => ( ~ c0_1(X61)
                | ~ c1_1(X61)
                | ~ c3_1(X61) ) )
          | hskp22 )
        & ( ! [X62] :
              ( ndr1_0
             => ( c1_1(X62)
                | c2_1(X62)
                | ~ c0_1(X62) ) )
          | hskp30
          | hskp23 )
        & ( ! [X63] :
              ( ndr1_0
             => ( c1_1(X63)
                | c2_1(X63)
                | ~ c3_1(X63) ) )
          | hskp17
          | hskp6 )
        & ( ! [X64] :
              ( ndr1_0
             => ( c1_1(X64)
                | c3_1(X64)
                | ~ c0_1(X64) ) )
          | ! [X65] :
              ( ndr1_0
             => ( c1_1(X65)
                | ~ c0_1(X65)
                | ~ c3_1(X65) ) )
          | hskp2 )
        & ( ! [X66] :
              ( ndr1_0
             => ( c1_1(X66)
                | c3_1(X66)
                | ~ c2_1(X66) ) )
          | ! [X67] :
              ( ndr1_0
             => ( c2_1(X67)
                | c3_1(X67)
                | ~ c1_1(X67) ) )
          | hskp9 )
        & ( ! [X68] :
              ( ndr1_0
             => ( c1_1(X68)
                | c3_1(X68)
                | ~ c2_1(X68) ) )
          | ! [X69] :
              ( ndr1_0
             => ( ~ c1_1(X69)
                | ~ c2_1(X69)
                | ~ c3_1(X69) ) )
          | hskp3 )
        & ( ! [X70] :
              ( ndr1_0
             => ( c1_1(X70)
                | ~ c0_1(X70)
                | ~ c3_1(X70) ) )
          | ! [X71] :
              ( ndr1_0
             => ( ~ c0_1(X71)
                | ~ c1_1(X71)
                | ~ c3_1(X71) ) )
          | ! [X72] :
              ( ndr1_0
             => ( ~ c0_1(X72)
                | ~ c2_1(X72)
                | ~ c3_1(X72) ) ) )
        & ( ! [X73] :
              ( ndr1_0
             => ( c1_1(X73)
                | ~ c0_1(X73)
                | ~ c3_1(X73) ) )
          | hskp8
          | hskp21 )
        & ( ! [X74] :
              ( ndr1_0
             => ( c1_1(X74)
                | ~ c2_1(X74)
                | ~ c3_1(X74) ) )
          | ! [X75] :
              ( ndr1_0
             => ( c2_1(X75)
                | ~ c0_1(X75)
                | ~ c1_1(X75) ) )
          | hskp15 )
        & ( ! [X76] :
              ( ndr1_0
             => ( c2_1(X76)
                | c3_1(X76)
                | ~ c0_1(X76) ) )
          | hskp3
          | hskp24 )
        & ( ! [X77] :
              ( ndr1_0
             => ( c2_1(X77)
                | c3_1(X77)
                | ~ c1_1(X77) ) )
          | ! [X78] :
              ( ndr1_0
             => ( ~ c0_1(X78)
                | ~ c2_1(X78)
                | ~ c3_1(X78) ) )
          | hskp12 )
        & ( ! [X79] :
              ( ndr1_0
             => ( c2_1(X79)
                | c3_1(X79)
                | ~ c1_1(X79) ) )
          | hskp25
          | hskp3 )
        & ( ! [X80] :
              ( ndr1_0
             => ( c2_1(X80)
                | ~ c0_1(X80)
                | ~ c1_1(X80) ) )
          | hskp28
          | hskp26 )
        & ( ! [X81] :
              ( ndr1_0
             => ( c2_1(X81)
                | ~ c0_1(X81)
                | ~ c3_1(X81) ) )
          | ! [X82] :
              ( ndr1_0
             => ( c3_1(X82)
                | ~ c1_1(X82)
                | ~ c2_1(X82) ) )
          | hskp17 )
        & ( ! [X83] :
              ( ndr1_0
             => ( c2_1(X83)
                | ~ c1_1(X83)
                | ~ c3_1(X83) ) )
          | hskp28
          | hskp7 )
        & ( ! [X84] :
              ( ndr1_0
             => ( c2_1(X84)
                | ~ c1_1(X84)
                | ~ c3_1(X84) ) )
          | hskp16 )
        & ( ! [X85] :
              ( ndr1_0
             => ( ~ c0_1(X85)
                | ~ c1_1(X85)
                | ~ c2_1(X85) ) )
          | hskp28
          | hskp9 )
        & ( ! [X86] :
              ( ndr1_0
             => ( ~ c0_1(X86)
                | ~ c1_1(X86)
                | ~ c2_1(X86) ) )
          | hskp18
          | hskp27 )
        & ( ! [X87] :
              ( ndr1_0
             => ( ~ c0_1(X87)
                | ~ c1_1(X87)
                | ~ c3_1(X87) ) )
          | ! [X88] :
              ( ndr1_0
             => ( ~ c0_1(X88)
                | ~ c2_1(X88)
                | ~ c3_1(X88) ) )
          | hskp21 )
        & ( ! [X89] :
              ( ndr1_0
             => ( ~ c0_1(X89)
                | ~ c1_1(X89)
                | ~ c3_1(X89) ) )
          | hskp0
          | hskp2 )
        & ( ! [X90] :
              ( ndr1_0
             => ( ~ c0_1(X90)
                | ~ c1_1(X90)
                | ~ c3_1(X90) ) )
          | hskp29
          | hskp19 )
        & ( ! [X91] :
              ( ndr1_0
             => ( ~ c0_1(X91)
                | ~ c1_1(X91)
                | ~ c3_1(X91) ) )
          | hskp12
          | hskp26 )
        & ( ! [X92] :
              ( ndr1_0
             => ( ~ c0_1(X92)
                | ~ c1_1(X92)
                | ~ c3_1(X92) ) )
          | hskp14
          | hskp24 )
        & ( ! [X93] :
              ( ndr1_0
             => ( ~ c0_1(X93)
                | ~ c2_1(X93)
                | ~ c3_1(X93) ) )
          | hskp28
          | hskp31 )
        & ( ! [X94] :
              ( ndr1_0
             => ( ~ c0_1(X94)
                | ~ c2_1(X94)
                | ~ c3_1(X94) ) )
          | hskp15
          | hskp13 )
        & ( ! [X95] :
              ( ndr1_0
             => ( ~ c1_1(X95)
                | ~ c2_1(X95)
                | ~ c3_1(X95) ) )
          | hskp25
          | hskp9 )
        & ( ! [X96] :
              ( ndr1_0
             => ( ~ c1_1(X96)
                | ~ c2_1(X96)
                | ~ c3_1(X96) ) )
          | hskp12
          | hskp2 )
        & ( hskp31
          | hskp12
          | hskp24 )
        & ( hskp7
          | hskp30
          | hskp26 )
        & ( hskp3
          | hskp2
          | hskp13 )
        & ( hskp3
          | hskp27
          | hskp26 )
        & ( hskp12
          | hskp6
          | hskp27 )
        & ( hskp21
          | hskp24
          | hskp5 ) ) )).

%--------------------------------------------------------------------------

