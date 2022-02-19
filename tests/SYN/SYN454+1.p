

%--------------------------------------------------------------------------
% File     : SYN454+1 : TPTP v7.4.0. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=60, K=3, D=1, P=0, Index=046
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-60-3-1-046.dfg [Wei97]

% Status   : Theorem
% Rating   : 0.00 v6.1.0, 0.17 v6.0.0, 0.00 v5.5.0, 0.22 v5.3.0, 0.27 v5.2.0, 0.00 v4.1.0, 0.39 v4.0.1, 0.42 v4.0.0, 0.45 v3.7.0, 0.67 v3.5.0, 0.38 v3.4.0, 0.25 v3.3.0, 0.22 v3.2.0, 0.33 v3.1.0, 0.67 v2.7.0, 0.33 v2.6.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.50 v2.2.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :  576 (   0 equality)
%            Maximal formula depth :   93 (  93 average)
%            Number of connectives :  780 ( 205 ~  ; 313  |; 179  &)
%                                         (   0 <=>;  83 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   35 (  31 propositional; 0-1 arity)
%            Number of functors    :   30 (  30 constant; 0-0 arity)
%            Number of variables   :   83 (   0 singleton;  83 !;   0 ?)
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
            & ~ c1_1(a96)
            & ~ c2_1(a96)
            & ~ c3_1(a96) ) )
        & ( ~ hskp1
          | ( ndr1_0
            & c2_1(a97)
            & c3_1(a97)
            & ~ c1_1(a97) ) )
        & ( ~ hskp2
          | ( ndr1_0
            & c1_1(a98)
            & ~ c0_1(a98)
            & ~ c3_1(a98) ) )
        & ( ~ hskp3
          | ( ndr1_0
            & c2_1(a99)
            & ~ c1_1(a99)
            & ~ c3_1(a99) ) )
        & ( ~ hskp4
          | ( ndr1_0
            & c2_1(a100)
            & ~ c0_1(a100)
            & ~ c1_1(a100) ) )
        & ( ~ hskp5
          | ( ndr1_0
            & c3_1(a101)
            & ~ c1_1(a101)
            & ~ c2_1(a101) ) )
        & ( ~ hskp6
          | ( ndr1_0
            & c1_1(a102)
            & c2_1(a102)
            & ~ c3_1(a102) ) )
        & ( ~ hskp7
          | ( ndr1_0
            & c0_1(a103)
            & ~ c1_1(a103)
            & ~ c3_1(a103) ) )
        & ( ~ hskp8
          | ( ndr1_0
            & ~ c0_1(a104)
            & ~ c2_1(a104)
            & ~ c3_1(a104) ) )
        & ( ~ hskp9
          | ( ndr1_0
            & c0_1(a105)
            & c2_1(a105)
            & ~ c1_1(a105) ) )
        & ( ~ hskp10
          | ( ndr1_0
            & c1_1(a106)
            & c3_1(a106)
            & ~ c2_1(a106) ) )
        & ( ~ hskp11
          | ( ndr1_0
            & c2_1(a109)
            & ~ c0_1(a109)
            & ~ c3_1(a109) ) )
        & ( ~ hskp12
          | ( ndr1_0
            & c2_1(a110)
            & c3_1(a110)
            & ~ c0_1(a110) ) )
        & ( ~ hskp13
          | ( ndr1_0
            & c0_1(a112)
            & c3_1(a112)
            & ~ c1_1(a112) ) )
        & ( ~ hskp14
          | ( ndr1_0
            & c0_1(a115)
            & ~ c2_1(a115)
            & ~ c3_1(a115) ) )
        & ( ~ hskp15
          | ( ndr1_0
            & c1_1(a116)
            & c3_1(a116)
            & ~ c0_1(a116) ) )
        & ( ~ hskp16
          | ( ndr1_0
            & c1_1(a118)
            & ~ c2_1(a118)
            & ~ c3_1(a118) ) )
        & ( ~ hskp17
          | ( ndr1_0
            & ~ c0_1(a124)
            & ~ c1_1(a124)
            & ~ c3_1(a124) ) )
        & ( ~ hskp18
          | ( ndr1_0
            & c0_1(a125)
            & c1_1(a125)
            & ~ c3_1(a125) ) )
        & ( ~ hskp19
          | ( ndr1_0
            & c0_1(a127)
            & c2_1(a127)
            & ~ c3_1(a127) ) )
        & ( ~ hskp20
          | ( ndr1_0
            & c0_1(a133)
            & c3_1(a133)
            & ~ c2_1(a133) ) )
        & ( ~ hskp21
          | ( ndr1_0
            & c3_1(a145)
            & ~ c0_1(a145)
            & ~ c2_1(a145) ) )
        & ( ~ hskp22
          | ( ndr1_0
            & c3_1(a149)
            & ~ c0_1(a149)
            & ~ c1_1(a149) ) )
        & ( ~ hskp23
          | ( ndr1_0
            & c0_1(a152)
            & c1_1(a152)
            & ~ c2_1(a152) ) )
        & ( ~ hskp24
          | ( ndr1_0
            & c1_1(a153)
            & ~ c0_1(a153)
            & ~ c2_1(a153) ) )
        & ( ~ hskp25
          | ( ndr1_0
            & c0_1(a159)
            & ~ c1_1(a159)
            & ~ c2_1(a159) ) )
        & ( ~ hskp26
          | ( ndr1_0
            & c0_1(a94)
            & c1_1(a94)
            & c2_1(a94) ) )
        & ( ~ hskp27
          | ( ndr1_0
            & c0_1(a95)
            & c2_1(a95)
            & c3_1(a95) ) )
        & ( ~ hskp28
          | ( ndr1_0
            & c0_1(a142)
            & c1_1(a142)
            & c3_1(a142) ) )
        & ( ~ hskp29
          | ( ndr1_0
            & c1_1(a165)
            & c2_1(a165)
            & c3_1(a165) ) )
        & ( ! [U] :
              ( ndr1_0
             => ( c0_1(U)
                | c1_1(U)
                | c2_1(U) ) )
          | ! [V] :
              ( ndr1_0
             => ( c0_1(V)
                | ~ c1_1(V)
                | ~ c3_1(V) ) )
          | ! [W] :
              ( ndr1_0
             => ( c1_1(W)
                | c3_1(W)
                | ~ c2_1(W) ) ) )
        & ( ! [X] :
              ( ndr1_0
             => ( c0_1(X)
                | c1_1(X)
                | c2_1(X) ) )
          | hskp26
          | hskp27 )
        & ( ! [Y] :
              ( ndr1_0
             => ( c0_1(Y)
                | c1_1(Y)
                | c3_1(Y) ) )
          | ! [Z] :
              ( ndr1_0
             => ( c2_1(Z)
                | ~ c0_1(Z)
                | ~ c1_1(Z) ) )
          | hskp0 )
        & ( ! [X1] :
              ( ndr1_0
             => ( c0_1(X1)
                | c1_1(X1)
                | ~ c2_1(X1) ) )
          | ! [X2] :
              ( ndr1_0
             => ( ~ c0_1(X2)
                | ~ c2_1(X2)
                | ~ c3_1(X2) ) )
          | hskp1 )
        & ( ! [X3] :
              ( ndr1_0
             => ( c0_1(X3)
                | c1_1(X3)
                | ~ c3_1(X3) ) )
          | hskp2
          | hskp3 )
        & ( ! [X4] :
              ( ndr1_0
             => ( c0_1(X4)
                | c1_1(X4)
                | ~ c3_1(X4) ) )
          | hskp4
          | hskp5 )
        & ( ! [X5] :
              ( ndr1_0
             => ( c0_1(X5)
                | c2_1(X5)
                | c3_1(X5) ) )
          | ! [X6] :
              ( ndr1_0
             => ( c0_1(X6)
                | c2_1(X6)
                | ~ c1_1(X6) ) )
          | hskp6 )
        & ( ! [X7] :
              ( ndr1_0
             => ( c0_1(X7)
                | c2_1(X7)
                | ~ c1_1(X7) ) )
          | ! [X8] :
              ( ndr1_0
             => ( c0_1(X8)
                | ~ c2_1(X8)
                | ~ c3_1(X8) ) )
          | hskp7 )
        & ( ! [X9] :
              ( ndr1_0
             => ( c0_1(X9)
                | c2_1(X9)
                | ~ c3_1(X9) ) )
          | ! [X10] :
              ( ndr1_0
             => ( c0_1(X10)
                | ~ c2_1(X10)
                | ~ c3_1(X10) ) )
          | ! [X11] :
              ( ndr1_0
             => ( c1_1(X11)
                | c3_1(X11)
                | ~ c0_1(X11) ) ) )
        & ( ! [X12] :
              ( ndr1_0
             => ( c0_1(X12)
                | c2_1(X12)
                | ~ c3_1(X12) ) )
          | ! [X13] :
              ( ndr1_0
             => ( ~ c0_1(X13)
                | ~ c1_1(X13)
                | ~ c3_1(X13) ) )
          | hskp8 )
        & ( ! [X14] :
              ( ndr1_0
             => ( c0_1(X14)
                | c3_1(X14)
                | ~ c1_1(X14) ) )
          | ! [X15] :
              ( ndr1_0
             => ( c2_1(X15)
                | c3_1(X15)
                | ~ c0_1(X15) ) )
          | hskp9 )
        & ( ! [X16] :
              ( ndr1_0
             => ( c0_1(X16)
                | c3_1(X16)
                | ~ c1_1(X16) ) )
          | ! [X17] :
              ( ndr1_0
             => ( c2_1(X17)
                | ~ c0_1(X17)
                | ~ c3_1(X17) ) )
          | ! [X18] :
              ( ndr1_0
             => ( c2_1(X18)
                | ~ c1_1(X18)
                | ~ c3_1(X18) ) ) )
        & ( ! [X19] :
              ( ndr1_0
             => ( c0_1(X19)
                | c3_1(X19)
                | ~ c2_1(X19) ) )
          | ! [X20] :
              ( ndr1_0
             => ( c0_1(X20)
                | ~ c1_1(X20)
                | ~ c2_1(X20) ) )
          | ! [X21] :
              ( ndr1_0
             => ( c0_1(X21)
                | ~ c1_1(X21)
                | ~ c3_1(X21) ) ) )
        & ( ! [X22] :
              ( ndr1_0
             => ( c0_1(X22)
                | c3_1(X22)
                | ~ c2_1(X22) ) )
          | ! [X23] :
              ( ndr1_0
             => ( c1_1(X23)
                | c2_1(X23)
                | c3_1(X23) ) )
          | ! [X24] :
              ( ndr1_0
             => ( c2_1(X24)
                | c3_1(X24)
                | ~ c1_1(X24) ) ) )
        & ( ! [X25] :
              ( ndr1_0
             => ( c0_1(X25)
                | c3_1(X25)
                | ~ c2_1(X25) ) )
          | ! [X26] :
              ( ndr1_0
             => ( c1_1(X26)
                | c3_1(X26)
                | ~ c2_1(X26) ) )
          | hskp10 )
        & ( ! [X27] :
              ( ndr1_0
             => ( c0_1(X27)
                | ~ c1_1(X27)
                | ~ c2_1(X27) ) )
          | ! [X28] :
              ( ndr1_0
             => ( c2_1(X28)
                | ~ c0_1(X28)
                | ~ c3_1(X28) ) )
          | ! [X29] :
              ( ndr1_0
             => ( ~ c0_1(X29)
                | ~ c1_1(X29)
                | ~ c2_1(X29) ) ) )
        & ( ! [X30] :
              ( ndr1_0
             => ( c0_1(X30)
                | ~ c1_1(X30)
                | ~ c2_1(X30) ) )
          | ! [X31] :
              ( ndr1_0
             => ( ~ c0_1(X31)
                | ~ c2_1(X31)
                | ~ c3_1(X31) ) )
          | hskp1 )
        & ( ! [X32] :
              ( ndr1_0
             => ( c0_1(X32)
                | ~ c1_1(X32)
                | ~ c2_1(X32) ) )
          | hskp26
          | hskp11 )
        & ( ! [X33] :
              ( ndr1_0
             => ( c0_1(X33)
                | ~ c1_1(X33)
                | ~ c3_1(X33) ) )
          | ! [X34] :
              ( ndr1_0
             => ( c1_1(X34)
                | c3_1(X34)
                | ~ c0_1(X34) ) )
          | hskp12 )
        & ( ! [X35] :
              ( ndr1_0
             => ( c1_1(X35)
                | c2_1(X35)
                | c3_1(X35) ) )
          | ! [X36] :
              ( ndr1_0
             => ( ~ c0_1(X36)
                | ~ c2_1(X36)
                | ~ c3_1(X36) ) )
          | hskp3 )
        & ( ! [X37] :
              ( ndr1_0
             => ( c1_1(X37)
                | c2_1(X37)
                | c3_1(X37) ) )
          | hskp13
          | hskp3 )
        & ( ! [X38] :
              ( ndr1_0
             => ( c1_1(X38)
                | c2_1(X38)
                | c3_1(X38) ) )
          | hskp1 )
        & ( ! [X39] :
              ( ndr1_0
             => ( c1_1(X39)
                | c2_1(X39)
                | ~ c0_1(X39) ) )
          | ! [X40] :
              ( ndr1_0
             => ( c1_1(X40)
                | c2_1(X40)
                | ~ c3_1(X40) ) )
          | ! [X41] :
              ( ndr1_0
             => ( c2_1(X41)
                | ~ c1_1(X41)
                | ~ c3_1(X41) ) ) )
        & ( ! [X42] :
              ( ndr1_0
             => ( c1_1(X42)
                | c2_1(X42)
                | ~ c0_1(X42) ) )
          | ! [X43] :
              ( ndr1_0
             => ( c1_1(X43)
                | c2_1(X43)
                | ~ c3_1(X43) ) )
          | hskp14 )
        & ( ! [X44] :
              ( ndr1_0
             => ( c1_1(X44)
                | c2_1(X44)
                | ~ c0_1(X44) ) )
          | ! [X45] :
              ( ndr1_0
             => ( c2_1(X45)
                | ~ c0_1(X45)
                | ~ c3_1(X45) ) )
          | hskp15 )
        & ( ! [X46] :
              ( ndr1_0
             => ( c1_1(X46)
                | c2_1(X46)
                | ~ c3_1(X46) ) )
          | ! [X47] :
              ( ndr1_0
             => ( c2_1(X47)
                | ~ c0_1(X47)
                | ~ c1_1(X47) ) )
          | ! [X48] :
              ( ndr1_0
             => ( ~ c0_1(X48)
                | ~ c1_1(X48)
                | ~ c3_1(X48) ) ) )
        & ( ! [X49] :
              ( ndr1_0
             => ( c1_1(X49)
                | c3_1(X49)
                | ~ c0_1(X49) ) )
          | ! [X50] :
              ( ndr1_0
             => ( c1_1(X50)
                | ~ c0_1(X50)
                | ~ c2_1(X50) ) ) )
        & ( ! [X51] :
              ( ndr1_0
             => ( c1_1(X51)
                | c3_1(X51)
                | ~ c2_1(X51) ) )
          | ! [X52] :
              ( ndr1_0
             => ( c3_1(X52)
                | ~ c0_1(X52)
                | ~ c1_1(X52) ) )
          | hskp10 )
        & ( ! [X53] :
              ( ndr1_0
             => ( c1_1(X53)
                | ~ c0_1(X53)
                | ~ c3_1(X53) ) )
          | ! [X54] :
              ( ndr1_0
             => ( c3_1(X54)
                | ~ c0_1(X54)
                | ~ c1_1(X54) ) )
          | hskp16 )
        & ( ! [X55] :
              ( ndr1_0
             => ( c1_1(X55)
                | ~ c0_1(X55)
                | ~ c3_1(X55) ) )
          | hskp14
          | hskp10 )
        & ( ! [X56] :
              ( ndr1_0
             => ( c1_1(X56)
                | ~ c0_1(X56)
                | ~ c3_1(X56) ) )
          | hskp16
          | hskp8 )
        & ( ! [X57] :
              ( ndr1_0
             => ( c1_1(X57)
                | ~ c2_1(X57)
                | ~ c3_1(X57) ) )
          | hskp26
          | hskp17 )
        & ( ! [X58] :
              ( ndr1_0
             => ( c1_1(X58)
                | ~ c2_1(X58)
                | ~ c3_1(X58) ) )
          | hskp18
          | hskp14 )
        & ( ! [X59] :
              ( ndr1_0
             => ( c1_1(X59)
                | ~ c2_1(X59)
                | ~ c3_1(X59) ) )
          | hskp19
          | hskp5 )
        & ( ! [X60] :
              ( ndr1_0
             => ( c1_1(X60)
                | ~ c2_1(X60)
                | ~ c3_1(X60) ) )
          | hskp13 )
        & ( ! [X61] :
              ( ndr1_0
             => ( c1_1(X61)
                | ~ c2_1(X61)
                | ~ c3_1(X61) ) )
          | hskp6
          | hskp4 )
        & ( ! [X62] :
              ( ndr1_0
             => ( c2_1(X62)
                | c3_1(X62)
                | ~ c0_1(X62) ) )
          | ! [X63] :
              ( ndr1_0
             => ( ~ c0_1(X63)
                | ~ c2_1(X63)
                | ~ c3_1(X63) ) )
          | hskp8 )
        & ( ! [X64] :
              ( ndr1_0
             => ( c2_1(X64)
                | c3_1(X64)
                | ~ c0_1(X64) ) )
          | hskp20
          | hskp10 )
        & ( ! [X65] :
              ( ndr1_0
             => ( c2_1(X65)
                | c3_1(X65)
                | ~ c0_1(X65) ) )
          | hskp12
          | hskp5 )
        & ( ! [X66] :
              ( ndr1_0
             => ( c2_1(X66)
                | c3_1(X66)
                | ~ c0_1(X66) ) )
          | hskp1
          | hskp17 )
        & ( ! [X67] :
              ( ndr1_0
             => ( c2_1(X67)
                | c3_1(X67)
                | ~ c1_1(X67) ) )
          | ! [X68] :
              ( ndr1_0
             => ( c3_1(X68)
                | ~ c1_1(X68)
                | ~ c2_1(X68) ) )
          | hskp5 )
        & ( ! [X69] :
              ( ndr1_0
             => ( c2_1(X69)
                | ~ c0_1(X69)
                | ~ c1_1(X69) ) )
          | ! [X70] :
              ( ndr1_0
             => ( c2_1(X70)
                | ~ c1_1(X70)
                | ~ c3_1(X70) ) )
          | ! [X71] :
              ( ndr1_0
             => ( ~ c0_1(X71)
                | ~ c1_1(X71)
                | ~ c3_1(X71) ) ) )
        & ( ! [X72] :
              ( ndr1_0
             => ( c2_1(X72)
                | ~ c0_1(X72)
                | ~ c1_1(X72) ) )
          | hskp6
          | hskp3 )
        & ( ! [X73] :
              ( ndr1_0
             => ( c3_1(X73)
                | ~ c1_1(X73)
                | ~ c2_1(X73) ) )
          | hskp28
          | hskp18 )
        & ( ! [X74] :
              ( ndr1_0
             => ( c3_1(X74)
                | ~ c1_1(X74)
                | ~ c2_1(X74) ) )
          | hskp12
          | hskp21 )
        & ( ! [X75] :
              ( ndr1_0
             => ( ~ c0_1(X75)
                | ~ c2_1(X75)
                | ~ c3_1(X75) ) )
          | hskp26
          | hskp1 )
        & ( ! [X76] :
              ( ndr1_0
             => ( ~ c1_1(X76)
                | ~ c2_1(X76)
                | ~ c3_1(X76) ) )
          | hskp9
          | hskp22 )
        & ( ! [X77] :
              ( ndr1_0
             => ( ~ c1_1(X77)
                | ~ c2_1(X77)
                | ~ c3_1(X77) ) )
          | hskp12
          | hskp8 )
        & ( hskp23
          | hskp24
          | hskp16 )
        & ( hskp18
          | hskp19
          | hskp13 )
        & ( hskp18
          | hskp25
          | hskp17 )
        & ( hskp9
          | hskp14
          | hskp2 )
        & ( hskp20
          | hskp29
          | hskp0 )
        & ( hskp20
          | hskp3
          | hskp8 )
        & ( hskp14
          | hskp16
          | hskp21 )
        & ( hskp14
          | hskp12
          | hskp11 )
        & ( hskp14
          | hskp1
          | hskp3 )
        & ( hskp29
          | hskp24
          | hskp11 )
        & ( hskp6
          | hskp22
          | hskp17 )
        & ( hskp15
          | hskp22
          | hskp17 ) ) )).

%--------------------------------------------------------------------------

