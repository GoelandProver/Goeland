


%--------------------------------------------------------------------------
% File     : SYN436+1 : TPTP v7.4.0. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=40, K=3, D=1, P=0, Index=078
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-40-3-1-078.dfg [Wei97]

% Status   : Theorem
% Rating   : 0.00 v6.1.0, 0.33 v6.0.0, 0.00 v5.5.0, 0.33 v5.4.0, 0.44 v5.3.0, 0.36 v5.2.0, 0.25 v5.0.0, 0.50 v4.1.0, 0.56 v4.0.1, 0.53 v4.0.0, 0.50 v3.7.0, 0.67 v3.5.0, 0.38 v3.4.0, 0.33 v3.1.0, 0.67 v2.7.0, 0.33 v2.5.0, 0.67 v2.4.0, 0.33 v2.2.1, 0.50 v2.2.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :  446 (   0 equality)
%            Maximal formula depth :   71 (  71 average)
%            Number of connectives :  605 ( 160 ~  ; 231  |; 151  &)
%                                         (   0 <=>;  63 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   33 (  29 propositional; 0-1 arity)
%            Number of functors    :   28 (  28 constant; 0-0 arity)
%            Number of variables   :   63 (   0 singleton;  63 !;   0 ?)
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
            & c3_1(a1)
            & ~ c0_1(a1)
            & ~ c2_1(a1) ) )
        & ( ~ hskp1
          | ( ndr1_0
            & c2_1(a2)
            & ~ c0_1(a2)
            & ~ c3_1(a2) ) )
        & ( ~ hskp2
          | ( ndr1_0
            & c1_1(a4)
            & ~ c2_1(a4)
            & ~ c3_1(a4) ) )
        & ( ~ hskp3
          | ( ndr1_0
            & ~ c1_1(a5)
            & ~ c2_1(a5)
            & ~ c3_1(a5) ) )
        & ( ~ hskp4
          | ( ndr1_0
            & c1_1(a6)
            & c3_1(a6)
            & ~ c2_1(a6) ) )
        & ( ~ hskp5
          | ( ndr1_0
            & c1_1(a7)
            & c3_1(a7)
            & ~ c0_1(a7) ) )
        & ( ~ hskp6
          | ( ndr1_0
            & c0_1(a8)
            & c1_1(a8)
            & ~ c2_1(a8) ) )
        & ( ~ hskp7
          | ( ndr1_0
            & c0_1(a14)
            & c3_1(a14)
            & ~ c2_1(a14) ) )
        & ( ~ hskp8
          | ( ndr1_0
            & c0_1(a15)
            & ~ c1_1(a15)
            & ~ c2_1(a15) ) )
        & ( ~ hskp9
          | ( ndr1_0
            & c0_1(a16)
            & ~ c2_1(a16)
            & ~ c3_1(a16) ) )
        & ( ~ hskp10
          | ( ndr1_0
            & c0_1(a18)
            & c2_1(a18)
            & ~ c3_1(a18) ) )
        & ( ~ hskp11
          | ( ndr1_0
            & c2_1(a19)
            & ~ c1_1(a19)
            & ~ c3_1(a19) ) )
        & ( ~ hskp12
          | ( ndr1_0
            & ~ c0_1(a21)
            & ~ c1_1(a21)
            & ~ c2_1(a21) ) )
        & ( ~ hskp13
          | ( ndr1_0
            & ~ c0_1(a22)
            & ~ c2_1(a22)
            & ~ c3_1(a22) ) )
        & ( ~ hskp14
          | ( ndr1_0
            & c2_1(a24)
            & ~ c0_1(a24)
            & ~ c1_1(a24) ) )
        & ( ~ hskp15
          | ( ndr1_0
            & c0_1(a25)
            & c1_1(a25)
            & ~ c3_1(a25) ) )
        & ( ~ hskp16
          | ( ndr1_0
            & c1_1(a30)
            & ~ c0_1(a30)
            & ~ c2_1(a30) ) )
        & ( ~ hskp17
          | ( ndr1_0
            & c0_1(a31)
            & c2_1(a31)
            & ~ c1_1(a31) ) )
        & ( ~ hskp18
          | ( ndr1_0
            & ~ c0_1(a32)
            & ~ c1_1(a32)
            & ~ c3_1(a32) ) )
        & ( ~ hskp19
          | ( ndr1_0
            & c2_1(a33)
            & c3_1(a33)
            & ~ c0_1(a33) ) )
        & ( ~ hskp20
          | ( ndr1_0
            & c1_1(a37)
            & ~ c0_1(a37)
            & ~ c3_1(a37) ) )
        & ( ~ hskp21
          | ( ndr1_0
            & c2_1(a42)
            & c3_1(a42)
            & ~ c1_1(a42) ) )
        & ( ~ hskp22
          | ( ndr1_0
            & c0_1(a45)
            & ~ c1_1(a45)
            & ~ c3_1(a45) ) )
        & ( ~ hskp23
          | ( ndr1_0
            & c3_1(a53)
            & ~ c0_1(a53)
            & ~ c1_1(a53) ) )
        & ( ~ hskp24
          | ( ndr1_0
            & c1_1(a3)
            & c2_1(a3)
            & c3_1(a3) ) )
        & ( ~ hskp25
          | ( ndr1_0
            & c0_1(a9)
            & c1_1(a9)
            & c2_1(a9) ) )
        & ( ~ hskp26
          | ( ndr1_0
            & c0_1(a10)
            & c2_1(a10)
            & c3_1(a10) ) )
        & ( ~ hskp27
          | ( ndr1_0
            & c0_1(a11)
            & c1_1(a11)
            & c3_1(a11) ) )
        & ( ! [U] :
              ( ndr1_0
             => ( c0_1(U)
                | c1_1(U)
                | c2_1(U) ) )
          | ! [V] :
              ( ndr1_0
             => ( c0_1(V)
                | c2_1(V)
                | c3_1(V) ) )
          | ! [W] :
              ( ndr1_0
             => ( c0_1(W)
                | c2_1(W)
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
                | c3_1(Z) ) )
          | ! [X1] :
              ( ndr1_0
             => ( c0_1(X1)
                | ~ c1_1(X1)
                | ~ c2_1(X1) ) ) )
        & ( ! [X2] :
              ( ndr1_0
             => ( c0_1(X2)
                | c1_1(X2)
                | c3_1(X2) ) )
          | ! [X3] :
              ( ndr1_0
             => ( c1_1(X3)
                | ~ c2_1(X3)
                | ~ c3_1(X3) ) )
          | hskp1 )
        & ( ! [X4] :
              ( ndr1_0
             => ( c0_1(X4)
                | c1_1(X4)
                | c3_1(X4) ) )
          | ! [X5] :
              ( ndr1_0
             => ( c3_1(X5)
                | ~ c0_1(X5)
                | ~ c1_1(X5) ) )
          | hskp24 )
        & ( ! [X6] :
              ( ndr1_0
             => ( c0_1(X6)
                | c1_1(X6)
                | ~ c2_1(X6) ) )
          | ! [X7] :
              ( ndr1_0
             => ( c0_1(X7)
                | c3_1(X7)
                | ~ c1_1(X7) ) )
          | ! [X8] :
              ( ndr1_0
             => ( c1_1(X8)
                | ~ c2_1(X8)
                | ~ c3_1(X8) ) ) )
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
          | ! [X11] :
              ( ndr1_0
             => ( c2_1(X11)
                | c3_1(X11)
                | ~ c1_1(X11) ) ) )
        & ( ! [X12] :
              ( ndr1_0
             => ( c0_1(X12)
                | c1_1(X12)
                | ~ c2_1(X12) ) )
          | hskp2
          | hskp3 )
        & ( ! [X13] :
              ( ndr1_0
             => ( c0_1(X13)
                | c1_1(X13)
                | ~ c3_1(X13) ) )
          | ! [X14] :
              ( ndr1_0
             => ( c1_1(X14)
                | c2_1(X14)
                | ~ c0_1(X14) ) )
          | hskp4 )
        & ( ! [X15] :
              ( ndr1_0
             => ( c0_1(X15)
                | c2_1(X15)
                | c3_1(X15) ) )
          | ! [X16] :
              ( ndr1_0
             => ( c0_1(X16)
                | c3_1(X16)
                | ~ c2_1(X16) ) )
          | ! [X17] :
              ( ndr1_0
             => ( c1_1(X17)
                | c2_1(X17)
                | c3_1(X17) ) ) )
        & ( ! [X18] :
              ( ndr1_0
             => ( c0_1(X18)
                | c2_1(X18)
                | c3_1(X18) ) )
          | ! [X19] :
              ( ndr1_0
             => ( c1_1(X19)
                | c3_1(X19)
                | ~ c0_1(X19) ) )
          | ! [X20] :
              ( ndr1_0
             => ( c2_1(X20)
                | ~ c1_1(X20)
                | ~ c3_1(X20) ) ) )
        & ( ! [X21] :
              ( ndr1_0
             => ( c0_1(X21)
                | c2_1(X21)
                | ~ c1_1(X21) ) )
          | ! [X22] :
              ( ndr1_0
             => ( c3_1(X22)
                | ~ c1_1(X22)
                | ~ c2_1(X22) ) )
          | hskp5 )
        & ( ! [X23] :
              ( ndr1_0
             => ( c0_1(X23)
                | c2_1(X23)
                | ~ c3_1(X23) ) )
          | ! [X24] :
              ( ndr1_0
             => ( ~ c1_1(X24)
                | ~ c2_1(X24)
                | ~ c3_1(X24) ) )
          | hskp6 )
        & ( ! [X25] :
              ( ndr1_0
             => ( c0_1(X25)
                | c3_1(X25)
                | ~ c2_1(X25) ) )
          | ! [X26] :
              ( ndr1_0
             => ( c2_1(X26)
                | c3_1(X26)
                | ~ c1_1(X26) ) )
          | ! [X27] :
              ( ndr1_0
             => ( ~ c0_1(X27)
                | ~ c1_1(X27)
                | ~ c2_1(X27) ) ) )
        & ( ! [X28] :
              ( ndr1_0
             => ( c0_1(X28)
                | c3_1(X28)
                | ~ c2_1(X28) ) )
          | hskp25
          | hskp26 )
        & ( ! [X29] :
              ( ndr1_0
             => ( c0_1(X29)
                | ~ c1_1(X29)
                | ~ c2_1(X29) ) )
          | hskp27
          | hskp26 )
        & ( ! [X30] :
              ( ndr1_0
             => ( c0_1(X30)
                | ~ c1_1(X30)
                | ~ c2_1(X30) ) )
          | hskp27
          | hskp7 )
        & ( ! [X31] :
              ( ndr1_0
             => ( c0_1(X31)
                | ~ c1_1(X31)
                | ~ c2_1(X31) ) )
          | hskp8
          | hskp9 )
        & ( ! [X32] :
              ( ndr1_0
             => ( c0_1(X32)
                | ~ c1_1(X32)
                | ~ c3_1(X32) ) )
          | ! [X33] :
              ( ndr1_0
             => ( c1_1(X33)
                | c3_1(X33)
                | ~ c0_1(X33) ) )
          | hskp4 )
        & ( ! [X34] :
              ( ndr1_0
             => ( c0_1(X34)
                | ~ c1_1(X34)
                | ~ c3_1(X34) ) )
          | ! [X35] :
              ( ndr1_0
             => ( c1_1(X35)
                | ~ c2_1(X35)
                | ~ c3_1(X35) ) )
          | hskp10 )
        & ( ! [X36] :
              ( ndr1_0
             => ( c0_1(X36)
                | ~ c2_1(X36)
                | ~ c3_1(X36) ) )
          | ! [X37] :
              ( ndr1_0
             => ( c3_1(X37)
                | ~ c0_1(X37)
                | ~ c2_1(X37) ) )
          | hskp11 )
        & ( ! [X38] :
              ( ndr1_0
             => ( c0_1(X38)
                | ~ c2_1(X38)
                | ~ c3_1(X38) ) )
          | hskp27
          | hskp12 )
        & ( ! [X39] :
              ( ndr1_0
             => ( c1_1(X39)
                | c2_1(X39)
                | ~ c0_1(X39) ) )
          | ! [X40] :
              ( ndr1_0
             => ( c1_1(X40)
                | ~ c0_1(X40)
                | ~ c3_1(X40) ) )
          | hskp13 )
        & ( ! [X41] :
              ( ndr1_0
             => ( c1_1(X41)
                | c2_1(X41)
                | ~ c0_1(X41) ) )
          | hskp2
          | hskp14 )
        & ( ! [X42] :
              ( ndr1_0
             => ( c1_1(X42)
                | c2_1(X42)
                | ~ c3_1(X42) ) )
          | ! [X43] :
              ( ndr1_0
             => ( c2_1(X43)
                | ~ c0_1(X43)
                | ~ c3_1(X43) ) )
          | hskp15 )
        & ( ! [X44] :
              ( ndr1_0
             => ( c1_1(X44)
                | c3_1(X44)
                | ~ c2_1(X44) ) )
          | ! [X45] :
              ( ndr1_0
             => ( ~ c0_1(X45)
                | ~ c2_1(X45)
                | ~ c3_1(X45) ) ) )
        & ( ! [X46] :
              ( ndr1_0
             => ( c1_1(X46)
                | c3_1(X46)
                | ~ c2_1(X46) ) )
          | hskp6
          | hskp26 )
        & ( ! [X47] :
              ( ndr1_0
             => ( c1_1(X47)
                | c3_1(X47)
                | ~ c2_1(X47) ) )
          | hskp7 )
        & ( ! [X48] :
              ( ndr1_0
             => ( c2_1(X48)
                | c3_1(X48)
                | ~ c0_1(X48) ) )
          | ! [X49] :
              ( ndr1_0
             => ( c2_1(X49)
                | c3_1(X49)
                | ~ c1_1(X49) ) )
          | ! [X50] :
              ( ndr1_0
             => ( ~ c0_1(X50)
                | ~ c2_1(X50)
                | ~ c3_1(X50) ) ) )
        & ( ! [X51] :
              ( ndr1_0
             => ( c2_1(X51)
                | c3_1(X51)
                | ~ c0_1(X51) ) )
          | hskp26
          | hskp16 )
        & ( ! [X52] :
              ( ndr1_0
             => ( c2_1(X52)
                | ~ c0_1(X52)
                | ~ c3_1(X52) ) )
          | hskp17
          | hskp18 )
        & ( ! [X53] :
              ( ndr1_0
             => ( c2_1(X53)
                | ~ c1_1(X53)
                | ~ c3_1(X53) ) )
          | ! [X54] :
              ( ndr1_0
             => ( ~ c0_1(X54)
                | ~ c1_1(X54)
                | ~ c2_1(X54) ) )
          | hskp19 )
        & ( ! [X55] :
              ( ndr1_0
             => ( c2_1(X55)
                | ~ c1_1(X55)
                | ~ c3_1(X55) ) )
          | hskp9
          | hskp24 )
        & ( ! [X56] :
              ( ndr1_0
             => ( c3_1(X56)
                | ~ c0_1(X56)
                | ~ c2_1(X56) ) )
          | hskp26
          | hskp20 )
        & ( ! [X57] :
              ( ndr1_0
             => ( ~ c0_1(X57)
                | ~ c1_1(X57)
                | ~ c2_1(X57) ) )
          | hskp6
          | hskp10 )
        & ( hskp25
          | hskp17
          | hskp21 )
        & ( hskp6
          | hskp26
          | hskp22 )
        & ( hskp17
          | hskp8
          | hskp4 )
        & ( hskp7
          | hskp9
          | hskp13 )
        & ( hskp24
          | hskp23
          | hskp0 ) ) )).

%--------------------------------------------------------------------------

