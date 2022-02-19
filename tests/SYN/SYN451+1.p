

%--------------------------------------------------------------------------
% File     : SYN451+1 : TPTP v7.4.0. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=60, K=3, D=1, P=0, Index=030
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-60-3-1-030.dfg [Wei97]

% Status   : Theorem
% Rating   : 0.00 v6.1.0, 0.17 v6.0.0, 0.00 v5.5.0, 0.22 v5.3.0, 0.27 v5.2.0, 0.00 v4.1.0, 0.39 v4.0.1, 0.42 v4.0.0, 0.45 v3.7.0, 0.67 v3.5.0, 0.38 v3.4.0, 0.25 v3.3.0, 0.22 v3.2.0, 0.33 v3.1.0, 0.67 v2.7.0, 0.33 v2.6.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.50 v2.2.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :  599 (   0 equality)
%            Maximal formula depth :   92 (  92 average)
%            Number of connectives :  804 ( 206 ~  ; 331  |; 175  &)
%                                         (   0 <=>;  92 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   34 (  30 propositional; 0-1 arity)
%            Number of functors    :   29 (  29 constant; 0-0 arity)
%            Number of variables   :   92 (   0 singleton;  92 !;   0 ?)
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
            & c0_1(a730)
            & c3_1(a730)
            & ~ c1_1(a730) ) )
        & ( ~ hskp1
          | ( ndr1_0
            & c1_1(a731)
            & c3_1(a731)
            & ~ c2_1(a731) ) )
        & ( ~ hskp2
          | ( ndr1_0
            & ~ c0_1(a732)
            & ~ c2_1(a732)
            & ~ c3_1(a732) ) )
        & ( ~ hskp3
          | ( ndr1_0
            & c2_1(a733)
            & ~ c0_1(a733)
            & ~ c1_1(a733) ) )
        & ( ~ hskp4
          | ( ndr1_0
            & c1_1(a734)
            & ~ c0_1(a734)
            & ~ c3_1(a734) ) )
        & ( ~ hskp5
          | ( ndr1_0
            & c2_1(a735)
            & c3_1(a735)
            & ~ c0_1(a735) ) )
        & ( ~ hskp6
          | ( ndr1_0
            & c1_1(a738)
            & ~ c0_1(a738)
            & ~ c2_1(a738) ) )
        & ( ~ hskp7
          | ( ndr1_0
            & c1_1(a741)
            & c3_1(a741)
            & ~ c0_1(a741) ) )
        & ( ~ hskp8
          | ( ndr1_0
            & c3_1(a744)
            & ~ c0_1(a744)
            & ~ c1_1(a744) ) )
        & ( ~ hskp9
          | ( ndr1_0
            & c3_1(a746)
            & ~ c0_1(a746)
            & ~ c2_1(a746) ) )
        & ( ~ hskp10
          | ( ndr1_0
            & ~ c0_1(a748)
            & ~ c1_1(a748)
            & ~ c2_1(a748) ) )
        & ( ~ hskp11
          | ( ndr1_0
            & ~ c0_1(a749)
            & ~ c1_1(a749)
            & ~ c3_1(a749) ) )
        & ( ~ hskp12
          | ( ndr1_0
            & c1_1(a755)
            & c2_1(a755)
            & ~ c3_1(a755) ) )
        & ( ~ hskp13
          | ( ndr1_0
            & c2_1(a759)
            & c3_1(a759)
            & ~ c1_1(a759) ) )
        & ( ~ hskp14
          | ( ndr1_0
            & c0_1(a762)
            & ~ c1_1(a762)
            & ~ c2_1(a762) ) )
        & ( ~ hskp15
          | ( ndr1_0
            & c0_1(a763)
            & c1_1(a763)
            & ~ c2_1(a763) ) )
        & ( ~ hskp16
          | ( ndr1_0
            & c0_1(a764)
            & c2_1(a764)
            & ~ c3_1(a764) ) )
        & ( ~ hskp17
          | ( ndr1_0
            & c1_1(a766)
            & c2_1(a766)
            & ~ c0_1(a766) ) )
        & ( ~ hskp18
          | ( ndr1_0
            & c1_1(a775)
            & ~ c2_1(a775)
            & ~ c3_1(a775) ) )
        & ( ~ hskp19
          | ( ndr1_0
            & c2_1(a777)
            & ~ c0_1(a777)
            & ~ c3_1(a777) ) )
        & ( ~ hskp20
          | ( ndr1_0
            & c2_1(a779)
            & ~ c1_1(a779)
            & ~ c3_1(a779) ) )
        & ( ~ hskp21
          | ( ndr1_0
            & c0_1(a793)
            & c3_1(a793)
            & ~ c2_1(a793) ) )
        & ( ~ hskp22
          | ( ndr1_0
            & c3_1(a797)
            & ~ c1_1(a797)
            & ~ c2_1(a797) ) )
        & ( ~ hskp23
          | ( ndr1_0
            & c0_1(a798)
            & c1_1(a798)
            & ~ c3_1(a798) ) )
        & ( ~ hskp24
          | ( ndr1_0
            & c0_1(a802)
            & ~ c2_1(a802)
            & ~ c3_1(a802) ) )
        & ( ~ hskp25
          | ( ndr1_0
            & c0_1(a729)
            & c2_1(a729)
            & c3_1(a729) ) )
        & ( ~ hskp26
          | ( ndr1_0
            & c1_1(a737)
            & c2_1(a737)
            & c3_1(a737) ) )
        & ( ~ hskp27
          | ( ndr1_0
            & c0_1(a750)
            & c1_1(a750)
            & c2_1(a750) ) )
        & ( ~ hskp28
          | ( ndr1_0
            & c0_1(a784)
            & c1_1(a784)
            & c3_1(a784) ) )
        & ( ! [U] :
              ( ndr1_0
             => ( c0_1(U)
                | c1_1(U)
                | c2_1(U) ) )
          | ! [V] :
              ( ndr1_0
             => ( c0_1(V)
                | c3_1(V)
                | ~ c2_1(V) ) )
          | ! [W] :
              ( ndr1_0
             => ( ~ c0_1(W)
                | ~ c1_1(W)
                | ~ c2_1(W) ) ) )
        & ( ! [X] :
              ( ndr1_0
             => ( c0_1(X)
                | c1_1(X)
                | c2_1(X) ) )
          | ! [Y] :
              ( ndr1_0
             => ( c1_1(Y)
                | ~ c0_1(Y)
                | ~ c3_1(Y) ) )
          | hskp25 )
        & ( ! [Z] :
              ( ndr1_0
             => ( c0_1(Z)
                | c1_1(Z)
                | c2_1(Z) ) )
          | hskp0
          | hskp1 )
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
          | hskp2 )
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
          | hskp3 )
        & ( ! [X5] :
              ( ndr1_0
             => ( c0_1(X5)
                | c1_1(X5)
                | c3_1(X5) ) )
          | ! [X6] :
              ( ndr1_0
             => ( c2_1(X6)
                | ~ c0_1(X6)
                | ~ c1_1(X6) ) )
          | ! [X7] :
              ( ndr1_0
             => ( ~ c0_1(X7)
                | ~ c1_1(X7)
                | ~ c3_1(X7) ) ) )
        & ( ! [X8] :
              ( ndr1_0
             => ( c0_1(X8)
                | c1_1(X8)
                | c3_1(X8) ) )
          | hskp4
          | hskp5 )
        & ( ! [X9] :
              ( ndr1_0
             => ( c0_1(X9)
                | c1_1(X9)
                | ~ c2_1(X9) ) )
          | ! [X10] :
              ( ndr1_0
             => ( c0_1(X10)
                | c2_1(X10)
                | ~ c1_1(X10) ) )
          | hskp0 )
        & ( ! [X11] :
              ( ndr1_0
             => ( c0_1(X11)
                | c1_1(X11)
                | ~ c2_1(X11) ) )
          | hskp26
          | hskp6 )
        & ( ! [X12] :
              ( ndr1_0
             => ( c0_1(X12)
                | c1_1(X12)
                | ~ c2_1(X12) ) )
          | hskp1
          | hskp2 )
        & ( ! [X13] :
              ( ndr1_0
             => ( c0_1(X13)
                | c1_1(X13)
                | ~ c3_1(X13) ) )
          | ! [X14] :
              ( ndr1_0
             => ( c0_1(X14)
                | c3_1(X14)
                | ~ c2_1(X14) ) )
          | hskp7 )
        & ( ! [X15] :
              ( ndr1_0
             => ( c0_1(X15)
                | c1_1(X15)
                | ~ c3_1(X15) ) )
          | ! [X16] :
              ( ndr1_0
             => ( c0_1(X16)
                | ~ c1_1(X16)
                | ~ c2_1(X16) ) )
          | hskp5 )
        & ( ! [X17] :
              ( ndr1_0
             => ( c0_1(X17)
                | c1_1(X17)
                | ~ c3_1(X17) ) )
          | ! [X18] :
              ( ndr1_0
             => ( c1_1(X18)
                | c3_1(X18)
                | ~ c0_1(X18) ) )
          | ! [X19] :
              ( ndr1_0
             => ( c2_1(X19)
                | ~ c0_1(X19)
                | ~ c1_1(X19) ) ) )
        & ( ! [X20] :
              ( ndr1_0
             => ( c0_1(X20)
                | c1_1(X20)
                | ~ c3_1(X20) ) )
          | ! [X21] :
              ( ndr1_0
             => ( c1_1(X21)
                | ~ c0_1(X21)
                | ~ c2_1(X21) ) )
          | hskp4 )
        & ( ! [X22] :
              ( ndr1_0
             => ( c0_1(X22)
                | c2_1(X22)
                | c3_1(X22) ) )
          | ! [X23] :
              ( ndr1_0
             => ( c0_1(X23)
                | c3_1(X23)
                | ~ c2_1(X23) ) )
          | hskp8 )
        & ( ! [X24] :
              ( ndr1_0
             => ( c0_1(X24)
                | c2_1(X24)
                | c3_1(X24) ) )
          | hskp5
          | hskp9 )
        & ( ! [X25] :
              ( ndr1_0
             => ( c0_1(X25)
                | c2_1(X25)
                | ~ c1_1(X25) ) )
          | ! [X26] :
              ( ndr1_0
             => ( c0_1(X26)
                | c3_1(X26)
                | ~ c1_1(X26) ) )
          | hskp5 )
        & ( ! [X27] :
              ( ndr1_0
             => ( c0_1(X27)
                | c2_1(X27)
                | ~ c1_1(X27) ) )
          | ! [X28] :
              ( ndr1_0
             => ( c0_1(X28)
                | ~ c2_1(X28)
                | ~ c3_1(X28) ) )
          | hskp10 )
        & ( ! [X29] :
              ( ndr1_0
             => ( c0_1(X29)
                | c2_1(X29)
                | ~ c1_1(X29) ) )
          | ! [X30] :
              ( ndr1_0
             => ( c2_1(X30)
                | ~ c1_1(X30)
                | ~ c3_1(X30) ) )
          | hskp11 )
        & ( ! [X31] :
              ( ndr1_0
             => ( c0_1(X31)
                | c2_1(X31)
                | ~ c1_1(X31) ) )
          | ! [X32] :
              ( ndr1_0
             => ( ~ c0_1(X32)
                | ~ c1_1(X32)
                | ~ c2_1(X32) ) )
          | hskp27 )
        & ( ! [X33] :
              ( ndr1_0
             => ( c0_1(X33)
                | c2_1(X33)
                | ~ c3_1(X33) ) )
          | ! [X34] :
              ( ndr1_0
             => ( c0_1(X34)
                | ~ c1_1(X34)
                | ~ c3_1(X34) ) )
          | ! [X35] :
              ( ndr1_0
             => ( c2_1(X35)
                | ~ c1_1(X35)
                | ~ c3_1(X35) ) ) )
        & ( ! [X36] :
              ( ndr1_0
             => ( c0_1(X36)
                | c2_1(X36)
                | ~ c3_1(X36) ) )
          | ! [X37] :
              ( ndr1_0
             => ( c0_1(X37)
                | ~ c2_1(X37)
                | ~ c3_1(X37) ) )
          | ! [X38] :
              ( ndr1_0
             => ( ~ c1_1(X38)
                | ~ c2_1(X38)
                | ~ c3_1(X38) ) ) )
        & ( ! [X39] :
              ( ndr1_0
             => ( c0_1(X39)
                | c2_1(X39)
                | ~ c3_1(X39) ) )
          | ! [X40] :
              ( ndr1_0
             => ( c1_1(X40)
                | c3_1(X40)
                | ~ c2_1(X40) ) )
          | ! [X41] :
              ( ndr1_0
             => ( c2_1(X41)
                | ~ c0_1(X41)
                | ~ c1_1(X41) ) ) )
        & ( ! [X42] :
              ( ndr1_0
             => ( c0_1(X42)
                | c2_1(X42)
                | ~ c3_1(X42) ) )
          | hskp27
          | hskp11 )
        & ( ! [X43] :
              ( ndr1_0
             => ( c0_1(X43)
                | c2_1(X43)
                | ~ c3_1(X43) ) )
          | hskp25
          | hskp6 )
        & ( ! [X44] :
              ( ndr1_0
             => ( c0_1(X44)
                | c2_1(X44)
                | ~ c3_1(X44) ) )
          | hskp12
          | hskp7 )
        & ( ! [X45] :
              ( ndr1_0
             => ( c0_1(X45)
                | c2_1(X45)
                | ~ c3_1(X45) ) )
          | hskp6
          | hskp4 )
        & ( ! [X46] :
              ( ndr1_0
             => ( c0_1(X46)
                | c3_1(X46)
                | ~ c1_1(X46) ) )
          | ! [X47] :
              ( ndr1_0
             => ( c2_1(X47)
                | ~ c0_1(X47)
                | ~ c1_1(X47) ) )
          | hskp13 )
        & ( ! [X48] :
              ( ndr1_0
             => ( c0_1(X48)
                | c3_1(X48)
                | ~ c1_1(X48) ) )
          | hskp0
          | hskp9 )
        & ( ! [X49] :
              ( ndr1_0
             => ( c0_1(X49)
                | c3_1(X49)
                | ~ c2_1(X49) ) )
          | ! [X50] :
              ( ndr1_0
             => ( c2_1(X50)
                | c3_1(X50)
                | ~ c1_1(X50) ) )
          | hskp14 )
        & ( ! [X51] :
              ( ndr1_0
             => ( c0_1(X51)
                | c3_1(X51)
                | ~ c2_1(X51) ) )
          | ! [X52] :
              ( ndr1_0
             => ( ~ c0_1(X52)
                | ~ c1_1(X52)
                | ~ c3_1(X52) ) )
          | hskp15 )
        & ( ! [X53] :
              ( ndr1_0
             => ( c0_1(X53)
                | ~ c1_1(X53)
                | ~ c2_1(X53) ) )
          | ! [X54] :
              ( ndr1_0
             => ( ~ c0_1(X54)
                | ~ c2_1(X54)
                | ~ c3_1(X54) ) )
          | hskp16 )
        & ( ! [X55] :
              ( ndr1_0
             => ( c0_1(X55)
                | ~ c1_1(X55)
                | ~ c2_1(X55) ) )
          | hskp27
          | hskp17 )
        & ( ! [X56] :
              ( ndr1_0
             => ( c0_1(X56)
                | ~ c1_1(X56)
                | ~ c3_1(X56) ) )
          | ! [X57] :
              ( ndr1_0
             => ( c1_1(X57)
                | c2_1(X57)
                | ~ c0_1(X57) ) )
          | hskp2 )
        & ( ! [X58] :
              ( ndr1_0
             => ( c0_1(X58)
                | ~ c2_1(X58)
                | ~ c3_1(X58) ) )
          | ! [X59] :
              ( ndr1_0
             => ( c1_1(X59)
                | ~ c2_1(X59)
                | ~ c3_1(X59) ) )
          | ! [X60] :
              ( ndr1_0
             => ( c2_1(X60)
                | ~ c0_1(X60)
                | ~ c3_1(X60) ) ) )
        & ( ! [X61] :
              ( ndr1_0
             => ( c1_1(X61)
                | c2_1(X61)
                | c3_1(X61) ) )
          | hskp27
          | hskp0 )
        & ( ! [X62] :
              ( ndr1_0
             => ( c1_1(X62)
                | c2_1(X62)
                | ~ c0_1(X62) ) )
          | ! [X63] :
              ( ndr1_0
             => ( ~ c0_1(X63)
                | ~ c2_1(X63)
                | ~ c3_1(X63) ) )
          | hskp26 )
        & ( ! [X64] :
              ( ndr1_0
             => ( c1_1(X64)
                | c2_1(X64)
                | ~ c3_1(X64) ) )
          | ! [X65] :
              ( ndr1_0
             => ( c2_1(X65)
                | ~ c1_1(X65)
                | ~ c3_1(X65) ) )
          | hskp11 )
        & ( ! [X66] :
              ( ndr1_0
             => ( c1_1(X66)
                | c3_1(X66)
                | ~ c0_1(X66) ) )
          | hskp27
          | hskp5 )
        & ( ! [X67] :
              ( ndr1_0
             => ( c1_1(X67)
                | c3_1(X67)
                | ~ c2_1(X67) ) )
          | ! [X68] :
              ( ndr1_0
             => ( c1_1(X68)
                | ~ c0_1(X68)
                | ~ c3_1(X68) ) )
          | hskp5 )
        & ( ! [X69] :
              ( ndr1_0
             => ( c1_1(X69)
                | c3_1(X69)
                | ~ c2_1(X69) ) )
          | ! [X70] :
              ( ndr1_0
             => ( c2_1(X70)
                | c3_1(X70)
                | ~ c0_1(X70) ) )
          | ! [X71] :
              ( ndr1_0
             => ( ~ c0_1(X71)
                | ~ c1_1(X71)
                | ~ c2_1(X71) ) ) )
        & ( ! [X72] :
              ( ndr1_0
             => ( c1_1(X72)
                | c3_1(X72)
                | ~ c2_1(X72) ) )
          | ! [X73] :
              ( ndr1_0
             => ( c2_1(X73)
                | ~ c1_1(X73)
                | ~ c3_1(X73) ) )
          | hskp18 )
        & ( ! [X74] :
              ( ndr1_0
             => ( c1_1(X74)
                | ~ c0_1(X74)
                | ~ c3_1(X74) ) )
          | hskp27
          | hskp19 )
        & ( ! [X75] :
              ( ndr1_0
             => ( c1_1(X75)
                | ~ c2_1(X75)
                | ~ c3_1(X75) ) )
          | hskp5
          | hskp20 )
        & ( ! [X76] :
              ( ndr1_0
             => ( c2_1(X76)
                | c3_1(X76)
                | ~ c0_1(X76) ) )
          | hskp25
          | hskp9 )
        & ( ! [X77] :
              ( ndr1_0
             => ( c2_1(X77)
                | c3_1(X77)
                | ~ c0_1(X77) ) )
          | hskp16
          | hskp3 )
        & ( ! [X78] :
              ( ndr1_0
             => ( c2_1(X78)
                | c3_1(X78)
                | ~ c1_1(X78) ) )
          | hskp28
          | hskp16 )
        & ( ! [X79] :
              ( ndr1_0
             => ( c3_1(X79)
                | ~ c0_1(X79)
                | ~ c1_1(X79) ) )
          | ! [X80] :
              ( ndr1_0
             => ( ~ c0_1(X80)
                | ~ c2_1(X80)
                | ~ c3_1(X80) ) )
          | hskp1 )
        & ( ! [X81] :
              ( ndr1_0
             => ( c3_1(X81)
                | ~ c0_1(X81)
                | ~ c1_1(X81) ) )
          | hskp18
          | hskp11 )
        & ( ! [X82] :
              ( ndr1_0
             => ( c3_1(X82)
                | ~ c1_1(X82)
                | ~ c2_1(X82) ) )
          | hskp27
          | hskp11 )
        & ( ! [X83] :
              ( ndr1_0
             => ( ~ c0_1(X83)
                | ~ c2_1(X83)
                | ~ c3_1(X83) ) )
          | hskp28
          | hskp11 )
        & ( ! [X84] :
              ( ndr1_0
             => ( ~ c0_1(X84)
                | ~ c2_1(X84)
                | ~ c3_1(X84) ) )
          | hskp21 )
        & ( ! [X85] :
              ( ndr1_0
             => ( ~ c0_1(X85)
                | ~ c2_1(X85)
                | ~ c3_1(X85) ) )
          | hskp21
          | hskp2 )
        & ( ! [X86] :
              ( ndr1_0
             => ( ~ c1_1(X86)
                | ~ c2_1(X86)
                | ~ c3_1(X86) ) )
          | hskp16
          | hskp22 )
        & ( hskp23
          | hskp21
          | hskp17 )
        & ( hskp23
          | hskp24
          | hskp13 )
        & ( hskp16
          | hskp18
          | hskp19 )
        & ( hskp0
          | hskp5
          | hskp19 )
        & ( hskp0
          | hskp8 )
        & ( hskp7
          | hskp1
          | hskp4 ) ) )).

%--------------------------------------------------------------------------

