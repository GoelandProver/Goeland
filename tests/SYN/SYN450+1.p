

%--------------------------------------------------------------------------
% File     : SYN450+1 : TPTP v7.4.0. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=60, K=3, D=1, P=0, Index=029
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-60-3-1-029.dfg [Wei97]

% Status   : Theorem
% Rating   : 0.00 v5.5.0, 0.33 v5.3.0, 0.27 v5.2.0, 0.00 v5.0.0, 0.25 v4.1.0, 0.39 v4.0.1, 0.42 v4.0.0, 0.45 v3.7.0, 0.67 v3.5.0, 0.38 v3.4.0, 0.25 v3.3.0, 0.22 v3.2.0, 0.33 v3.1.0, 0.67 v2.7.0, 0.33 v2.6.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.50 v2.2.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :  599 (   0 equality)
%            Maximal formula depth :   93 (  93 average)
%            Number of connectives :  812 ( 214 ~  ; 329  |; 179  &)
%                                         (   0 <=>;  90 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   35 (  31 propositional; 0-1 arity)
%            Number of functors    :   30 (  30 constant; 0-0 arity)
%            Number of variables   :   90 (   0 singleton;  90 !;   0 ?)
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
            & c2_1(a641)
            & c3_1(a641)
            & ~ c1_1(a641) ) )
        & ( ~ hskp1
          | ( ndr1_0
            & c0_1(a642)
            & c3_1(a642)
            & ~ c1_1(a642) ) )
        & ( ~ hskp2
          | ( ndr1_0
            & c1_1(a643)
            & c2_1(a643)
            & ~ c0_1(a643) ) )
        & ( ~ hskp3
          | ( ndr1_0
            & c1_1(a645)
            & c3_1(a645)
            & ~ c2_1(a645) ) )
        & ( ~ hskp4
          | ( ndr1_0
            & ~ c1_1(a646)
            & ~ c2_1(a646)
            & ~ c3_1(a646) ) )
        & ( ~ hskp5
          | ( ndr1_0
            & c1_1(a647)
            & ~ c0_1(a647)
            & ~ c3_1(a647) ) )
        & ( ~ hskp6
          | ( ndr1_0
            & c0_1(a648)
            & ~ c2_1(a648)
            & ~ c3_1(a648) ) )
        & ( ~ hskp7
          | ( ndr1_0
            & c3_1(a651)
            & ~ c0_1(a651)
            & ~ c1_1(a651) ) )
        & ( ~ hskp8
          | ( ndr1_0
            & c0_1(a652)
            & c3_1(a652)
            & ~ c2_1(a652) ) )
        & ( ~ hskp9
          | ( ndr1_0
            & ~ c0_1(a654)
            & ~ c1_1(a654)
            & ~ c2_1(a654) ) )
        & ( ~ hskp10
          | ( ndr1_0
            & c0_1(a656)
            & c2_1(a656)
            & ~ c1_1(a656) ) )
        & ( ~ hskp11
          | ( ndr1_0
            & c0_1(a657)
            & c2_1(a657)
            & ~ c3_1(a657) ) )
        & ( ~ hskp12
          | ( ndr1_0
            & c0_1(a660)
            & ~ c1_1(a660)
            & ~ c2_1(a660) ) )
        & ( ~ hskp13
          | ( ndr1_0
            & c0_1(a661)
            & ~ c1_1(a661)
            & ~ c3_1(a661) ) )
        & ( ~ hskp14
          | ( ndr1_0
            & c2_1(a665)
            & ~ c0_1(a665)
            & ~ c1_1(a665) ) )
        & ( ~ hskp15
          | ( ndr1_0
            & c3_1(a667)
            & ~ c0_1(a667)
            & ~ c2_1(a667) ) )
        & ( ~ hskp16
          | ( ndr1_0
            & c1_1(a672)
            & ~ c2_1(a672)
            & ~ c3_1(a672) ) )
        & ( ~ hskp17
          | ( ndr1_0
            & c2_1(a675)
            & ~ c1_1(a675)
            & ~ c3_1(a675) ) )
        & ( ~ hskp18
          | ( ndr1_0
            & c0_1(a676)
            & c1_1(a676)
            & ~ c2_1(a676) ) )
        & ( ~ hskp19
          | ( ndr1_0
            & c3_1(a682)
            & ~ c1_1(a682)
            & ~ c2_1(a682) ) )
        & ( ~ hskp20
          | ( ndr1_0
            & c1_1(a686)
            & c2_1(a686)
            & ~ c3_1(a686) ) )
        & ( ~ hskp21
          | ( ndr1_0
            & ~ c0_1(a691)
            & ~ c1_1(a691)
            & ~ c3_1(a691) ) )
        & ( ~ hskp22
          | ( ndr1_0
            & c2_1(a693)
            & c3_1(a693)
            & ~ c0_1(a693) ) )
        & ( ~ hskp23
          | ( ndr1_0
            & c2_1(a695)
            & ~ c0_1(a695)
            & ~ c3_1(a695) ) )
        & ( ~ hskp24
          | ( ndr1_0
            & c1_1(a698)
            & ~ c0_1(a698)
            & ~ c2_1(a698) ) )
        & ( ~ hskp25
          | ( ndr1_0
            & ~ c0_1(a710)
            & ~ c2_1(a710)
            & ~ c3_1(a710) ) )
        & ( ~ hskp26
          | ( ndr1_0
            & c0_1(a640)
            & c1_1(a640)
            & c3_1(a640) ) )
        & ( ~ hskp27
          | ( ndr1_0
            & c0_1(a655)
            & c2_1(a655)
            & c3_1(a655) ) )
        & ( ~ hskp28
          | ( ndr1_0
            & c0_1(a671)
            & c1_1(a671)
            & c2_1(a671) ) )
        & ( ~ hskp29
          | ( ndr1_0
            & c1_1(a688)
            & c2_1(a688)
            & c3_1(a688) ) )
        & ( ! [U] :
              ( ndr1_0
             => ( c0_1(U)
                | c1_1(U)
                | c2_1(U) ) )
          | hskp26
          | hskp0 )
        & ( ! [V] :
              ( ndr1_0
             => ( c0_1(V)
                | c1_1(V)
                | c3_1(V) ) )
          | ! [W] :
              ( ndr1_0
             => ( c0_1(W)
                | c1_1(W)
                | ~ c2_1(W) ) )
          | ! [X] :
              ( ndr1_0
             => ( c2_1(X)
                | ~ c0_1(X)
                | ~ c1_1(X) ) ) )
        & ( ! [Y] :
              ( ndr1_0
             => ( c0_1(Y)
                | c1_1(Y)
                | c3_1(Y) ) )
          | ! [Z] :
              ( ndr1_0
             => ( c0_1(Z)
                | ~ c2_1(Z)
                | ~ c3_1(Z) ) )
          | hskp1 )
        & ( ! [X1] :
              ( ndr1_0
             => ( c0_1(X1)
                | c1_1(X1)
                | c3_1(X1) ) )
          | hskp2
          | hskp0 )
        & ( ! [X2] :
              ( ndr1_0
             => ( c0_1(X2)
                | c1_1(X2)
                | c3_1(X2) ) )
          | hskp3
          | hskp4 )
        & ( ! [X3] :
              ( ndr1_0
             => ( c0_1(X3)
                | c1_1(X3)
                | ~ c2_1(X3) ) )
          | ! [X4] :
              ( ndr1_0
             => ( c1_1(X4)
                | c3_1(X4)
                | ~ c2_1(X4) ) )
          | hskp5 )
        & ( ! [X5] :
              ( ndr1_0
             => ( c0_1(X5)
                | c1_1(X5)
                | ~ c2_1(X5) ) )
          | hskp6
          | hskp2 )
        & ( ! [X6] :
              ( ndr1_0
             => ( c0_1(X6)
                | c1_1(X6)
                | ~ c3_1(X6) ) )
          | ! [X7] :
              ( ndr1_0
             => ( c2_1(X7)
                | c3_1(X7)
                | ~ c1_1(X7) ) )
          | hskp2 )
        & ( ! [X8] :
              ( ndr1_0
             => ( c0_1(X8)
                | c1_1(X8)
                | ~ c3_1(X8) ) )
          | ! [X9] :
              ( ndr1_0
             => ( c2_1(X9)
                | ~ c0_1(X9)
                | ~ c3_1(X9) ) )
          | hskp7 )
        & ( ! [X10] :
              ( ndr1_0
             => ( c0_1(X10)
                | c1_1(X10)
                | ~ c3_1(X10) ) )
          | ! [X11] :
              ( ndr1_0
             => ( ~ c0_1(X11)
                | ~ c1_1(X11)
                | ~ c2_1(X11) ) )
          | hskp8 )
        & ( ! [X12] :
              ( ndr1_0
             => ( c0_1(X12)
                | c1_1(X12)
                | ~ c3_1(X12) ) )
          | ! [X13] :
              ( ndr1_0
             => ( ~ c1_1(X13)
                | ~ c2_1(X13)
                | ~ c3_1(X13) ) )
          | hskp3 )
        & ( ! [X14] :
              ( ndr1_0
             => ( c0_1(X14)
                | c2_1(X14)
                | c3_1(X14) ) )
          | ! [X15] :
              ( ndr1_0
             => ( c1_1(X15)
                | c2_1(X15)
                | c3_1(X15) ) )
          | ! [X16] :
              ( ndr1_0
             => ( ~ c0_1(X16)
                | ~ c1_1(X16)
                | ~ c3_1(X16) ) ) )
        & ( ! [X17] :
              ( ndr1_0
             => ( c0_1(X17)
                | c2_1(X17)
                | c3_1(X17) ) )
          | ! [X18] :
              ( ndr1_0
             => ( c1_1(X18)
                | c3_1(X18)
                | ~ c2_1(X18) ) )
          | hskp9 )
        & ( ! [X19] :
              ( ndr1_0
             => ( c0_1(X19)
                | c2_1(X19)
                | ~ c3_1(X19) ) )
          | ! [X20] :
              ( ndr1_0
             => ( c1_1(X20)
                | c2_1(X20)
                | ~ c3_1(X20) ) )
          | hskp27 )
        & ( ! [X21] :
              ( ndr1_0
             => ( c0_1(X21)
                | c2_1(X21)
                | ~ c3_1(X21) ) )
          | ! [X22] :
              ( ndr1_0
             => ( c2_1(X22)
                | ~ c0_1(X22)
                | ~ c1_1(X22) ) )
          | hskp10 )
        & ( ! [X23] :
              ( ndr1_0
             => ( c0_1(X23)
                | c3_1(X23)
                | ~ c1_1(X23) ) )
          | ! [X24] :
              ( ndr1_0
             => ( c0_1(X24)
                | ~ c1_1(X24)
                | ~ c2_1(X24) ) )
          | ! [X25] :
              ( ndr1_0
             => ( c1_1(X25)
                | c2_1(X25)
                | ~ c0_1(X25) ) ) )
        & ( ! [X26] :
              ( ndr1_0
             => ( c0_1(X26)
                | c3_1(X26)
                | ~ c1_1(X26) ) )
          | ! [X27] :
              ( ndr1_0
             => ( c0_1(X27)
                | ~ c1_1(X27)
                | ~ c3_1(X27) ) )
          | hskp11 )
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
          | hskp27 )
        & ( ! [X30] :
              ( ndr1_0
             => ( c0_1(X30)
                | c3_1(X30)
                | ~ c1_1(X30) ) )
          | ! [X31] :
              ( ndr1_0
             => ( c2_1(X31)
                | ~ c1_1(X31)
                | ~ c3_1(X31) ) )
          | hskp6 )
        & ( ! [X32] :
              ( ndr1_0
             => ( c0_1(X32)
                | c3_1(X32)
                | ~ c1_1(X32) ) )
          | hskp12
          | hskp13 )
        & ( ! [X33] :
              ( ndr1_0
             => ( c0_1(X33)
                | c3_1(X33)
                | ~ c2_1(X33) ) )
          | hskp6
          | hskp3 )
        & ( ! [X34] :
              ( ndr1_0
             => ( c0_1(X34)
                | ~ c1_1(X34)
                | ~ c2_1(X34) ) )
          | ! [X35] :
              ( ndr1_0
             => ( c1_1(X35)
                | ~ c2_1(X35)
                | ~ c3_1(X35) ) )
          | ! [X36] :
              ( ndr1_0
             => ( ~ c0_1(X36)
                | ~ c1_1(X36)
                | ~ c2_1(X36) ) ) )
        & ( ! [X37] :
              ( ndr1_0
             => ( c0_1(X37)
                | ~ c1_1(X37)
                | ~ c2_1(X37) ) )
          | ! [X38] :
              ( ndr1_0
             => ( c1_1(X38)
                | ~ c2_1(X38)
                | ~ c3_1(X38) ) )
          | ! [X39] :
              ( ndr1_0
             => ( ~ c1_1(X39)
                | ~ c2_1(X39)
                | ~ c3_1(X39) ) ) )
        & ( ! [X40] :
              ( ndr1_0
             => ( c0_1(X40)
                | ~ c1_1(X40)
                | ~ c3_1(X40) ) )
          | ! [X41] :
              ( ndr1_0
             => ( c1_1(X41)
                | c3_1(X41)
                | ~ c0_1(X41) ) )
          | ! [X42] :
              ( ndr1_0
             => ( c2_1(X42)
                | ~ c0_1(X42)
                | ~ c1_1(X42) ) ) )
        & ( ! [X43] :
              ( ndr1_0
             => ( c0_1(X43)
                | ~ c2_1(X43)
                | ~ c3_1(X43) ) )
          | ! [X44] :
              ( ndr1_0
             => ( c1_1(X44)
                | c3_1(X44)
                | ~ c0_1(X44) ) )
          | hskp7 )
        & ( ! [X45] :
              ( ndr1_0
             => ( c0_1(X45)
                | ~ c2_1(X45)
                | ~ c3_1(X45) ) )
          | hskp14
          | hskp4 )
        & ( ! [X46] :
              ( ndr1_0
             => ( c0_1(X46)
                | ~ c2_1(X46)
                | ~ c3_1(X46) ) )
          | hskp15
          | hskp9 )
        & ( ! [X47] :
              ( ndr1_0
             => ( c1_1(X47)
                | c2_1(X47)
                | c3_1(X47) ) )
          | ! [X48] :
              ( ndr1_0
             => ( c1_1(X48)
                | c2_1(X48)
                | ~ c3_1(X48) ) )
          | hskp4 )
        & ( ! [X49] :
              ( ndr1_0
             => ( c1_1(X49)
                | c2_1(X49)
                | ~ c0_1(X49) ) )
          | ! [X50] :
              ( ndr1_0
             => ( c1_1(X50)
                | c3_1(X50)
                | ~ c0_1(X50) ) )
          | hskp12 )
        & ( ! [X51] :
              ( ndr1_0
             => ( c1_1(X51)
                | c2_1(X51)
                | ~ c3_1(X51) ) )
          | hskp28
          | hskp16 )
        & ( ! [X52] :
              ( ndr1_0
             => ( c1_1(X52)
                | c3_1(X52)
                | ~ c0_1(X52) ) )
          | ! [X53] :
              ( ndr1_0
             => ( c1_1(X53)
                | ~ c0_1(X53)
                | ~ c2_1(X53) ) )
          | ! [X54] :
              ( ndr1_0
             => ( c3_1(X54)
                | ~ c0_1(X54)
                | ~ c2_1(X54) ) ) )
        & ( ! [X55] :
              ( ndr1_0
             => ( c1_1(X55)
                | c3_1(X55)
                | ~ c0_1(X55) ) )
          | ! [X56] :
              ( ndr1_0
             => ( ~ c0_1(X56)
                | ~ c1_1(X56)
                | ~ c2_1(X56) ) )
          | hskp7 )
        & ( ! [X57] :
              ( ndr1_0
             => ( c1_1(X57)
                | c3_1(X57)
                | ~ c2_1(X57) ) )
          | ! [X58] :
              ( ndr1_0
             => ( c1_1(X58)
                | ~ c2_1(X58)
                | ~ c3_1(X58) ) )
          | ! [X59] :
              ( ndr1_0
             => ( c2_1(X59)
                | ~ c0_1(X59)
                | ~ c1_1(X59) ) ) )
        & ( ! [X60] :
              ( ndr1_0
             => ( c1_1(X60)
                | ~ c0_1(X60)
                | ~ c3_1(X60) ) )
          | hskp28
          | hskp17 )
        & ( ! [X61] :
              ( ndr1_0
             => ( c1_1(X61)
                | ~ c0_1(X61)
                | ~ c3_1(X61) ) )
          | hskp18
          | hskp4 )
        & ( ! [X62] :
              ( ndr1_0
             => ( c1_1(X62)
                | ~ c2_1(X62)
                | ~ c3_1(X62) ) )
          | ! [X63] :
              ( ndr1_0
             => ( c3_1(X63)
                | ~ c0_1(X63)
                | ~ c1_1(X63) ) )
          | hskp9 )
        & ( ! [X64] :
              ( ndr1_0
             => ( c1_1(X64)
                | ~ c2_1(X64)
                | ~ c3_1(X64) ) )
          | hskp17
          | hskp7 )
        & ( ! [X65] :
              ( ndr1_0
             => ( c1_1(X65)
                | ~ c2_1(X65)
                | ~ c3_1(X65) ) )
          | hskp17
          | hskp19 )
        & ( ! [X66] :
              ( ndr1_0
             => ( c2_1(X66)
                | c3_1(X66)
                | ~ c0_1(X66) ) )
          | ! [X67] :
              ( ndr1_0
             => ( c3_1(X67)
                | ~ c0_1(X67)
                | ~ c2_1(X67) ) ) )
        & ( ! [X68] :
              ( ndr1_0
             => ( c2_1(X68)
                | c3_1(X68)
                | ~ c0_1(X68) ) )
          | ! [X69] :
              ( ndr1_0
             => ( ~ c1_1(X69)
                | ~ c2_1(X69)
                | ~ c3_1(X69) ) )
          | hskp11 )
        & ( ! [X70] :
              ( ndr1_0
             => ( c2_1(X70)
                | c3_1(X70)
                | ~ c0_1(X70) ) )
          | hskp8
          | hskp19 )
        & ( ! [X71] :
              ( ndr1_0
             => ( c2_1(X71)
                | c3_1(X71)
                | ~ c0_1(X71) ) )
          | hskp20
          | hskp5 )
        & ( ! [X72] :
              ( ndr1_0
             => ( c2_1(X72)
                | c3_1(X72)
                | ~ c1_1(X72) ) )
          | hskp29
          | hskp5 )
        & ( ! [X73] :
              ( ndr1_0
             => ( c2_1(X73)
                | ~ c0_1(X73)
                | ~ c3_1(X73) ) )
          | hskp11
          | hskp21 )
        & ( ! [X74] :
              ( ndr1_0
             => ( c2_1(X74)
                | ~ c0_1(X74)
                | ~ c3_1(X74) ) )
          | hskp20
          | hskp22 )
        & ( ! [X75] :
              ( ndr1_0
             => ( c2_1(X75)
                | ~ c0_1(X75)
                | ~ c3_1(X75) ) )
          | hskp5
          | hskp23 )
        & ( ! [X76] :
              ( ndr1_0
             => ( c2_1(X76)
                | ~ c1_1(X76)
                | ~ c3_1(X76) ) )
          | ! [X77] :
              ( ndr1_0
             => ( ~ c1_1(X77)
                | ~ c2_1(X77)
                | ~ c3_1(X77) ) )
          | hskp8 )
        & ( ! [X78] :
              ( ndr1_0
             => ( c2_1(X78)
                | ~ c1_1(X78)
                | ~ c3_1(X78) ) )
          | hskp2
          | hskp24 )
        & ( ! [X79] :
              ( ndr1_0
             => ( c2_1(X79)
                | ~ c1_1(X79)
                | ~ c3_1(X79) ) )
          | hskp3
          | hskp15 )
        & ( ! [X80] :
              ( ndr1_0
             => ( c3_1(X80)
                | ~ c0_1(X80)
                | ~ c2_1(X80) ) )
          | hskp1
          | hskp29 )
        & ( ! [X81] :
              ( ndr1_0
             => ( c3_1(X81)
                | ~ c0_1(X81)
                | ~ c2_1(X81) ) )
          | hskp12
          | hskp20 )
        & ( ! [X82] :
              ( ndr1_0
             => ( c3_1(X82)
                | ~ c0_1(X82)
                | ~ c2_1(X82) ) )
          | hskp15
          | hskp9 )
        & ( ! [X83] :
              ( ndr1_0
             => ( c3_1(X83)
                | ~ c1_1(X83)
                | ~ c2_1(X83) ) )
          | hskp10
          | hskp29 )
        & ( ! [X84] :
              ( ndr1_0
             => ( ~ c0_1(X84)
                | ~ c1_1(X84)
                | ~ c2_1(X84) ) )
          | hskp23
          | hskp25 )
        & ( hskp18
          | hskp1
          | hskp7 )
        & ( hskp18
          | hskp2
          | hskp20 )
        & ( hskp1
          | hskp14
          | hskp17 )
        & ( hskp2
          | hskp22
          | hskp19 )
        & ( hskp20
          | hskp24
          | hskp0 )
        & ( hskp24
          | hskp14
          | hskp17 ) ) )).

%--------------------------------------------------------------------------

