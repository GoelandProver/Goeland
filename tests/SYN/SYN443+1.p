

%--------------------------------------------------------------------------
% File     : SYN443+1 : TPTP v7.4.0. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=60, K=3, D=1, P=0, Index=012
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-60-3-1-012.dfg [Wei97]

% Status   : Theorem
% Rating   : 0.00 v5.5.0, 0.11 v5.4.0, 0.22 v5.3.0, 0.18 v5.2.0, 0.00 v4.1.0, 0.33 v4.0.1, 0.42 v4.0.0, 0.45 v3.7.0, 0.67 v3.5.0, 0.38 v3.4.0, 0.25 v3.3.0, 0.22 v3.2.0, 0.33 v3.1.0, 0.67 v2.7.0, 0.33 v2.6.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.50 v2.2.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :  588 (   0 equality)
%            Maximal formula depth :   94 (  94 average)
%            Number of connectives :  782 ( 195 ~  ; 319  |; 183  &)
%                                         (   0 <=>;  85 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   36 (  32 propositional; 0-1 arity)
%            Number of functors    :   31 (  31 constant; 0-0 arity)
%            Number of variables   :   85 (   0 singleton;  85 !;   0 ?)
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
            & c1_1(a1)
            & c2_1(a1)
            & ~ c0_1(a1) ) )
        & ( ~ hskp1
          | ( ndr1_0
            & c0_1(a2)
            & c3_1(a2)
            & ~ c2_1(a2) ) )
        & ( ~ hskp2
          | ( ndr1_0
            & c0_1(a3)
            & c2_1(a3)
            & ~ c1_1(a3) ) )
        & ( ~ hskp3
          | ( ndr1_0
            & c3_1(a4)
            & ~ c0_1(a4)
            & ~ c1_1(a4) ) )
        & ( ~ hskp4
          | ( ndr1_0
            & c2_1(a5)
            & c3_1(a5)
            & ~ c1_1(a5) ) )
        & ( ~ hskp5
          | ( ndr1_0
            & c0_1(a6)
            & c2_1(a6)
            & ~ c3_1(a6) ) )
        & ( ~ hskp6
          | ( ndr1_0
            & c0_1(a8)
            & ~ c2_1(a8)
            & ~ c3_1(a8) ) )
        & ( ~ hskp7
          | ( ndr1_0
            & c1_1(a9)
            & ~ c0_1(a9)
            & ~ c2_1(a9) ) )
        & ( ~ hskp8
          | ( ndr1_0
            & c1_1(a11)
            & c2_1(a11)
            & ~ c3_1(a11) ) )
        & ( ~ hskp9
          | ( ndr1_0
            & c1_1(a12)
            & ~ c2_1(a12)
            & ~ c3_1(a12) ) )
        & ( ~ hskp10
          | ( ndr1_0
            & ~ c0_1(a18)
            & ~ c1_1(a18)
            & ~ c3_1(a18) ) )
        & ( ~ hskp11
          | ( ndr1_0
            & c0_1(a19)
            & c1_1(a19)
            & ~ c3_1(a19) ) )
        & ( ~ hskp12
          | ( ndr1_0
            & c0_1(a21)
            & ~ c1_1(a21)
            & ~ c3_1(a21) ) )
        & ( ~ hskp13
          | ( ndr1_0
            & ~ c0_1(a22)
            & ~ c2_1(a22)
            & ~ c3_1(a22) ) )
        & ( ~ hskp14
          | ( ndr1_0
            & ~ c0_1(a26)
            & ~ c1_1(a26)
            & ~ c2_1(a26) ) )
        & ( ~ hskp15
          | ( ndr1_0
            & c0_1(a27)
            & c1_1(a27)
            & ~ c2_1(a27) ) )
        & ( ~ hskp16
          | ( ndr1_0
            & c2_1(a31)
            & ~ c0_1(a31)
            & ~ c1_1(a31) ) )
        & ( ~ hskp17
          | ( ndr1_0
            & c3_1(a32)
            & ~ c0_1(a32)
            & ~ c2_1(a32) ) )
        & ( ~ hskp18
          | ( ndr1_0
            & c3_1(a34)
            & ~ c1_1(a34)
            & ~ c2_1(a34) ) )
        & ( ~ hskp19
          | ( ndr1_0
            & ~ c1_1(a36)
            & ~ c2_1(a36)
            & ~ c3_1(a36) ) )
        & ( ~ hskp20
          | ( ndr1_0
            & c1_1(a38)
            & c3_1(a38)
            & ~ c0_1(a38) ) )
        & ( ~ hskp21
          | ( ndr1_0
            & c2_1(a42)
            & c3_1(a42)
            & ~ c0_1(a42) ) )
        & ( ~ hskp22
          | ( ndr1_0
            & c2_1(a43)
            & ~ c1_1(a43)
            & ~ c3_1(a43) ) )
        & ( ~ hskp23
          | ( ndr1_0
            & c0_1(a52)
            & ~ c1_1(a52)
            & ~ c2_1(a52) ) )
        & ( ~ hskp24
          | ( ndr1_0
            & c0_1(a58)
            & c3_1(a58)
            & ~ c1_1(a58) ) )
        & ( ~ hskp25
          | ( ndr1_0
            & c1_1(a64)
            & c3_1(a64)
            & ~ c2_1(a64) ) )
        & ( ~ hskp26
          | ( ndr1_0
            & c2_1(a92)
            & ~ c0_1(a92)
            & ~ c3_1(a92) ) )
        & ( ~ hskp27
          | ( ndr1_0
            & c1_1(a10)
            & c2_1(a10)
            & c3_1(a10) ) )
        & ( ~ hskp28
          | ( ndr1_0
            & c0_1(a15)
            & c1_1(a15)
            & c3_1(a15) ) )
        & ( ~ hskp29
          | ( ndr1_0
            & c0_1(a25)
            & c1_1(a25)
            & c2_1(a25) ) )
        & ( ~ hskp30
          | ( ndr1_0
            & c0_1(a33)
            & c2_1(a33)
            & c3_1(a33) ) )
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
          | ! [W] :
              ( ndr1_0
             => ( c1_1(W)
                | c3_1(W)
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
          | hskp0 )
        & ( ! [Z] :
              ( ndr1_0
             => ( c0_1(Z)
                | c1_1(Z)
                | c2_1(Z) ) )
          | ! [X1] :
              ( ndr1_0
             => ( c1_1(X1)
                | c2_1(X1)
                | ~ c0_1(X1) ) )
          | ! [X2] :
              ( ndr1_0
             => ( c2_1(X2)
                | c3_1(X2)
                | ~ c0_1(X2) ) ) )
        & ( ! [X3] :
              ( ndr1_0
             => ( c0_1(X3)
                | c1_1(X3)
                | c2_1(X3) ) )
          | ! [X4] :
              ( ndr1_0
             => ( c1_1(X4)
                | ~ c0_1(X4)
                | ~ c2_1(X4) ) )
          | hskp1 )
        & ( ! [X5] :
              ( ndr1_0
             => ( c0_1(X5)
                | c1_1(X5)
                | c2_1(X5) ) )
          | ! [X6] :
              ( ndr1_0
             => ( c2_1(X6)
                | c3_1(X6)
                | ~ c0_1(X6) ) )
          | hskp2 )
        & ( ! [X7] :
              ( ndr1_0
             => ( c0_1(X7)
                | c1_1(X7)
                | c3_1(X7) ) )
          | ! [X8] :
              ( ndr1_0
             => ( c2_1(X8)
                | ~ c0_1(X8)
                | ~ c3_1(X8) ) )
          | hskp3 )
        & ( ! [X9] :
              ( ndr1_0
             => ( c0_1(X9)
                | c1_1(X9)
                | c3_1(X9) ) )
          | hskp4 )
        & ( ! [X10] :
              ( ndr1_0
             => ( c0_1(X10)
                | c1_1(X10)
                | ~ c2_1(X10) ) )
          | hskp5
          | hskp0 )
        & ( ! [X11] :
              ( ndr1_0
             => ( c0_1(X11)
                | c1_1(X11)
                | ~ c3_1(X11) ) )
          | hskp6
          | hskp7 )
        & ( ! [X12] :
              ( ndr1_0
             => ( c0_1(X12)
                | c1_1(X12)
                | ~ c3_1(X12) ) )
          | hskp27
          | hskp8 )
        & ( ! [X13] :
              ( ndr1_0
             => ( c0_1(X13)
                | c1_1(X13)
                | ~ c3_1(X13) ) )
          | hskp9
          | hskp3 )
        & ( ! [X14] :
              ( ndr1_0
             => ( c0_1(X14)
                | c2_1(X14)
                | ~ c1_1(X14) ) )
          | ! [X15] :
              ( ndr1_0
             => ( c0_1(X15)
                | c2_1(X15)
                | ~ c3_1(X15) ) )
          | hskp6 )
        & ( ! [X16] :
              ( ndr1_0
             => ( c0_1(X16)
                | c2_1(X16)
                | ~ c1_1(X16) ) )
          | ! [X17] :
              ( ndr1_0
             => ( c0_1(X17)
                | ~ c1_1(X17)
                | ~ c2_1(X17) ) )
          | ! [X18] :
              ( ndr1_0
             => ( c1_1(X18)
                | c3_1(X18)
                | ~ c0_1(X18) ) ) )
        & ( ! [X19] :
              ( ndr1_0
             => ( c0_1(X19)
                | c2_1(X19)
                | ~ c1_1(X19) ) )
          | hskp28
          | hskp27 )
        & ( ! [X20] :
              ( ndr1_0
             => ( c0_1(X20)
                | c2_1(X20)
                | ~ c3_1(X20) ) )
          | ! [X21] :
              ( ndr1_0
             => ( c1_1(X21)
                | c3_1(X21)
                | ~ c0_1(X21) ) )
          | hskp9 )
        & ( ! [X22] :
              ( ndr1_0
             => ( c0_1(X22)
                | c2_1(X22)
                | ~ c3_1(X22) ) )
          | ! [X23] :
              ( ndr1_0
             => ( ~ c0_1(X23)
                | ~ c2_1(X23)
                | ~ c3_1(X23) ) )
          | hskp10 )
        & ( ! [X24] :
              ( ndr1_0
             => ( c0_1(X24)
                | c2_1(X24)
                | ~ c3_1(X24) ) )
          | hskp11
          | hskp6 )
        & ( ! [X25] :
              ( ndr1_0
             => ( c0_1(X25)
                | c2_1(X25)
                | ~ c3_1(X25) ) )
          | hskp12
          | hskp13 )
        & ( ! [X26] :
              ( ndr1_0
             => ( c0_1(X26)
                | c3_1(X26)
                | ~ c1_1(X26) ) )
          | ! [X27] :
              ( ndr1_0
             => ( c1_1(X27)
                | c3_1(X27)
                | ~ c2_1(X27) ) )
          | hskp0 )
        & ( ! [X28] :
              ( ndr1_0
             => ( c0_1(X28)
                | c3_1(X28)
                | ~ c2_1(X28) ) )
          | ! [X29] :
              ( ndr1_0
             => ( c1_1(X29)
                | c3_1(X29)
                | ~ c0_1(X29) ) )
          | hskp3 )
        & ( ! [X30] :
              ( ndr1_0
             => ( c0_1(X30)
                | c3_1(X30)
                | ~ c2_1(X30) ) )
          | hskp29
          | hskp14 )
        & ( ! [X31] :
              ( ndr1_0
             => ( c0_1(X31)
                | ~ c1_1(X31)
                | ~ c2_1(X31) ) )
          | ! [X32] :
              ( ndr1_0
             => ( c1_1(X32)
                | c3_1(X32)
                | ~ c2_1(X32) ) )
          | ! [X33] :
              ( ndr1_0
             => ( c2_1(X33)
                | ~ c0_1(X33)
                | ~ c3_1(X33) ) ) )
        & ( ! [X34] :
              ( ndr1_0
             => ( c0_1(X34)
                | ~ c1_1(X34)
                | ~ c2_1(X34) ) )
          | hskp15
          | hskp4 )
        & ( ! [X35] :
              ( ndr1_0
             => ( c0_1(X35)
                | ~ c2_1(X35)
                | ~ c3_1(X35) ) )
          | ! [X36] :
              ( ndr1_0
             => ( c1_1(X36)
                | ~ c0_1(X36)
                | ~ c2_1(X36) ) )
          | ! [X37] :
              ( ndr1_0
             => ( c3_1(X37)
                | ~ c0_1(X37)
                | ~ c2_1(X37) ) ) )
        & ( ! [X38] :
              ( ndr1_0
             => ( c0_1(X38)
                | ~ c2_1(X38)
                | ~ c3_1(X38) ) )
          | ! [X39] :
              ( ndr1_0
             => ( c1_1(X39)
                | ~ c0_1(X39)
                | ~ c2_1(X39) ) )
          | hskp5 )
        & ( ! [X40] :
              ( ndr1_0
             => ( c0_1(X40)
                | ~ c2_1(X40)
                | ~ c3_1(X40) ) )
          | hskp9
          | hskp16 )
        & ( ! [X41] :
              ( ndr1_0
             => ( c1_1(X41)
                | c2_1(X41)
                | c3_1(X41) ) )
          | ! [X42] :
              ( ndr1_0
             => ( c1_1(X42)
                | c3_1(X42)
                | ~ c0_1(X42) ) )
          | hskp17 )
        & ( ! [X43] :
              ( ndr1_0
             => ( c1_1(X43)
                | c2_1(X43)
                | c3_1(X43) ) )
          | hskp30
          | hskp18 )
        & ( ! [X44] :
              ( ndr1_0
             => ( c1_1(X44)
                | c2_1(X44)
                | c3_1(X44) ) )
          | hskp1
          | hskp19 )
        & ( ! [X45] :
              ( ndr1_0
             => ( c1_1(X45)
                | c2_1(X45)
                | ~ c0_1(X45) ) )
          | hskp29
          | hskp20 )
        & ( ! [X46] :
              ( ndr1_0
             => ( c1_1(X46)
                | c2_1(X46)
                | ~ c0_1(X46) ) )
          | hskp1
          | hskp13 )
        & ( ! [X47] :
              ( ndr1_0
             => ( c1_1(X47)
                | c2_1(X47)
                | ~ c0_1(X47) ) )
          | hskp0
          | hskp21 )
        & ( ! [X48] :
              ( ndr1_0
             => ( c1_1(X48)
                | c2_1(X48)
                | ~ c3_1(X48) ) )
          | ! [X49] :
              ( ndr1_0
             => ( c1_1(X49)
                | ~ c2_1(X49)
                | ~ c3_1(X49) ) )
          | hskp22 )
        & ( ! [X50] :
              ( ndr1_0
             => ( c1_1(X50)
                | c2_1(X50)
                | ~ c3_1(X50) ) )
          | ! [X51] :
              ( ndr1_0
             => ( c3_1(X51)
                | ~ c0_1(X51)
                | ~ c1_1(X51) ) )
          | hskp0 )
        & ( ! [X52] :
              ( ndr1_0
             => ( c1_1(X52)
                | c2_1(X52)
                | ~ c3_1(X52) ) )
          | ! [X53] :
              ( ndr1_0
             => ( c3_1(X53)
                | ~ c0_1(X53)
                | ~ c2_1(X53) ) )
          | hskp5 )
        & ( ! [X54] :
              ( ndr1_0
             => ( c1_1(X54)
                | c2_1(X54)
                | ~ c3_1(X54) ) )
          | ! [X55] :
              ( ndr1_0
             => ( ~ c1_1(X55)
                | ~ c2_1(X55)
                | ~ c3_1(X55) ) )
          | hskp29 )
        & ( ! [X56] :
              ( ndr1_0
             => ( c1_1(X56)
                | c3_1(X56)
                | ~ c0_1(X56) ) )
          | ! [X57] :
              ( ndr1_0
             => ( ~ c0_1(X57)
                | ~ c2_1(X57)
                | ~ c3_1(X57) ) )
          | hskp29 )
        & ( ! [X58] :
              ( ndr1_0
             => ( c1_1(X58)
                | ~ c0_1(X58)
                | ~ c2_1(X58) ) )
          | ! [X59] :
              ( ndr1_0
             => ( c2_1(X59)
                | c3_1(X59)
                | ~ c0_1(X59) ) )
          | hskp13 )
        & ( ! [X60] :
              ( ndr1_0
             => ( c1_1(X60)
                | ~ c0_1(X60)
                | ~ c2_1(X60) ) )
          | ! [X61] :
              ( ndr1_0
             => ( c2_1(X61)
                | ~ c0_1(X61)
                | ~ c1_1(X61) ) )
          | ! [X62] :
              ( ndr1_0
             => ( ~ c0_1(X62)
                | ~ c1_1(X62)
                | ~ c3_1(X62) ) ) )
        & ( ! [X63] :
              ( ndr1_0
             => ( c1_1(X63)
                | ~ c0_1(X63)
                | ~ c3_1(X63) ) )
          | ! [X64] :
              ( ndr1_0
             => ( c3_1(X64)
                | ~ c0_1(X64)
                | ~ c1_1(X64) ) )
          | hskp16 )
        & ( ! [X65] :
              ( ndr1_0
             => ( c1_1(X65)
                | ~ c2_1(X65)
                | ~ c3_1(X65) ) )
          | ! [X66] :
              ( ndr1_0
             => ( ~ c1_1(X66)
                | ~ c2_1(X66)
                | ~ c3_1(X66) ) )
          | hskp19 )
        & ( ! [X67] :
              ( ndr1_0
             => ( c1_1(X67)
                | ~ c2_1(X67)
                | ~ c3_1(X67) ) )
          | hskp2
          | hskp23 )
        & ( ! [X68] :
              ( ndr1_0
             => ( c1_1(X68)
                | ~ c2_1(X68)
                | ~ c3_1(X68) ) )
          | hskp1
          | hskp0 )
        & ( ! [X69] :
              ( ndr1_0
             => ( c2_1(X69)
                | c3_1(X69)
                | ~ c0_1(X69) ) )
          | ! [X70] :
              ( ndr1_0
             => ( c2_1(X70)
                | c3_1(X70)
                | ~ c1_1(X70) ) )
          | hskp22 )
        & ( ! [X71] :
              ( ndr1_0
             => ( c2_1(X71)
                | c3_1(X71)
                | ~ c0_1(X71) ) )
          | hskp2
          | hskp4 )
        & ( ! [X72] :
              ( ndr1_0
             => ( c2_1(X72)
                | c3_1(X72)
                | ~ c1_1(X72) ) )
          | ! [X73] :
              ( ndr1_0
             => ( c3_1(X73)
                | ~ c0_1(X73)
                | ~ c2_1(X73) ) )
          | hskp24 )
        & ( ! [X74] :
              ( ndr1_0
             => ( c2_1(X74)
                | ~ c0_1(X74)
                | ~ c3_1(X74) ) )
          | hskp22
          | hskp19 )
        & ( ! [X75] :
              ( ndr1_0
             => ( c2_1(X75)
                | ~ c1_1(X75)
                | ~ c3_1(X75) ) )
          | hskp18
          | hskp14 )
        & ( ! [X76] :
              ( ndr1_0
             => ( c3_1(X76)
                | ~ c1_1(X76)
                | ~ c2_1(X76) ) )
          | hskp27
          | hskp25 )
        & ( ! [X77] :
              ( ndr1_0
             => ( ~ c0_1(X77)
                | ~ c1_1(X77)
                | ~ c2_1(X77) ) )
          | ! [X78] :
              ( ndr1_0
             => ( ~ c0_1(X78)
                | ~ c1_1(X78)
                | ~ c3_1(X78) ) )
          | ! [X79] :
              ( ndr1_0
             => ( ~ c1_1(X79)
                | ~ c2_1(X79)
                | ~ c3_1(X79) ) ) )
        & ( hskp28
          | hskp1
          | hskp9 )
        & ( hskp28
          | hskp7
          | hskp9 )
        & ( hskp15
          | hskp2
          | hskp25 )
        & ( hskp11
          | hskp20
          | hskp7 )
        & ( hskp11
          | hskp22 )
        & ( hskp30
          | hskp2
          | hskp18 )
        & ( hskp30
          | hskp27
          | hskp7 )
        & ( hskp30
          | hskp27
          | hskp17 )
        & ( hskp2
          | hskp24
          | hskp23 )
        & ( hskp7
          | hskp26
          | hskp18 ) ) )).

%--------------------------------------------------------------------------

