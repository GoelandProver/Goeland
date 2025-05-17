%--------------------------------------------------------------------------
% File     : SYN542+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=6, R=1, L=54, K=3, D=1, P=0, Index=075
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-6-1-54-3-1-075.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.40 v5.3.0, 0.50 v5.0.0, 0.33 v4.1.0, 0.67 v4.0.1, 0.33 v3.7.0, 0.00 v3.5.0, 0.25 v3.4.0, 0.50 v3.3.0, 0.33 v3.2.0, 0.50 v3.1.0, 0.67 v2.6.0, 0.50 v2.5.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  712 (   0 equ)
%            Maximal formula atoms :  712 ( 712 avg)
%            Number of connectives :  992 ( 281   ~; 337   |; 289   &)
%                                         (   0 <=>;  85  =>;   0  <=;   0 <~>)
%            Maximal formula depth :  116 ( 116 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   66 (  66 usr;  60 prp; 0-1 aty)
%            Number of functors    :   59 (  59 usr;  59 con; 0-0 aty)
%            Number of variables   :   85 (  85   !;   0   ?)
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
          & c2_1(a1)
          & c4_1(a1)
          & ~ c0_1(a1) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & ~ c0_1(a3)
          & ~ c3_1(a3)
          & ~ c5_1(a3) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & c1_1(a5)
          & ~ c0_1(a5)
          & ~ c2_1(a5) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & c0_1(a6)
          & c3_1(a6)
          & ~ c5_1(a6) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & c2_1(a7)
          & ~ c3_1(a7)
          & ~ c4_1(a7) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & c1_1(a8)
          & c4_1(a8)
          & ~ c0_1(a8) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & c1_1(a9)
          & ~ c2_1(a9)
          & ~ c3_1(a9) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & ~ c2_1(a10)
          & ~ c3_1(a10)
          & ~ c4_1(a10) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & c1_1(a11)
          & c3_1(a11)
          & ~ c4_1(a11) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & c2_1(a12)
          & ~ c1_1(a12)
          & ~ c3_1(a12) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & c0_1(a14)
          & c2_1(a14)
          & ~ c4_1(a14) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & c3_1(a15)
          & c4_1(a15)
          & ~ c1_1(a15) ) )
      & ( ~ hskp12
        | ( ndr1_0
          & ~ c0_1(a17)
          & ~ c1_1(a17)
          & ~ c2_1(a17) ) )
      & ( ~ hskp13
        | ( ndr1_0
          & c5_1(a19)
          & ~ c0_1(a19)
          & ~ c3_1(a19) ) )
      & ( ~ hskp14
        | ( ndr1_0
          & c0_1(a20)
          & ~ c2_1(a20)
          & ~ c5_1(a20) ) )
      & ( ~ hskp15
        | ( ndr1_0
          & c4_1(a21)
          & ~ c2_1(a21)
          & ~ c5_1(a21) ) )
      & ( ~ hskp16
        | ( ndr1_0
          & ~ c0_1(a22)
          & ~ c4_1(a22)
          & ~ c5_1(a22) ) )
      & ( ~ hskp17
        | ( ndr1_0
          & c2_1(a23)
          & c3_1(a23)
          & ~ c1_1(a23) ) )
      & ( ~ hskp18
        | ( ndr1_0
          & c3_1(a24)
          & c4_1(a24)
          & ~ c0_1(a24) ) )
      & ( ~ hskp19
        | ( ndr1_0
          & c2_1(a25)
          & ~ c1_1(a25)
          & ~ c4_1(a25) ) )
      & ( ~ hskp20
        | ( ndr1_0
          & c2_1(a26)
          & c5_1(a26)
          & ~ c0_1(a26) ) )
      & ( ~ hskp21
        | ( ndr1_0
          & ~ c0_1(a27)
          & ~ c1_1(a27)
          & ~ c4_1(a27) ) )
      & ( ~ hskp22
        | ( ndr1_0
          & c0_1(a28)
          & ~ c1_1(a28)
          & ~ c5_1(a28) ) )
      & ( ~ hskp23
        | ( ndr1_0
          & c1_1(a29)
          & ~ c4_1(a29)
          & ~ c5_1(a29) ) )
      & ( ~ hskp24
        | ( ndr1_0
          & ~ c0_1(a30)
          & ~ c2_1(a30)
          & ~ c4_1(a30) ) )
      & ( ~ hskp25
        | ( ndr1_0
          & c0_1(a31)
          & c1_1(a31)
          & ~ c4_1(a31) ) )
      & ( ~ hskp26
        | ( ndr1_0
          & c1_1(a32)
          & c3_1(a32)
          & ~ c0_1(a32) ) )
      & ( ~ hskp27
        | ( ndr1_0
          & c1_1(a33)
          & c2_1(a33)
          & ~ c0_1(a33) ) )
      & ( ~ hskp28
        | ( ndr1_0
          & c5_1(a34)
          & ~ c0_1(a34)
          & ~ c4_1(a34) ) )
      & ( ~ hskp29
        | ( ndr1_0
          & c2_1(a35)
          & c5_1(a35)
          & ~ c3_1(a35) ) )
      & ( ~ hskp30
        | ( ndr1_0
          & c4_1(a36)
          & c5_1(a36)
          & ~ c2_1(a36) ) )
      & ( ~ hskp31
        | ( ndr1_0
          & ~ c1_1(a37)
          & ~ c2_1(a37)
          & ~ c3_1(a37) ) )
      & ( ~ hskp32
        | ( ndr1_0
          & ~ c1_1(a41)
          & ~ c3_1(a41)
          & ~ c5_1(a41) ) )
      & ( ~ hskp33
        | ( ndr1_0
          & c0_1(a45)
          & ~ c2_1(a45)
          & ~ c3_1(a45) ) )
      & ( ~ hskp34
        | ( ndr1_0
          & c3_1(a46)
          & c4_1(a46)
          & ~ c2_1(a46) ) )
      & ( ~ hskp35
        | ( ndr1_0
          & c2_1(a49)
          & ~ c0_1(a49)
          & ~ c4_1(a49) ) )
      & ( ~ hskp36
        | ( ndr1_0
          & ~ c1_1(a50)
          & ~ c3_1(a50)
          & ~ c4_1(a50) ) )
      & ( ~ hskp37
        | ( ndr1_0
          & c1_1(a51)
          & c3_1(a51)
          & ~ c5_1(a51) ) )
      & ( ~ hskp38
        | ( ndr1_0
          & c3_1(a54)
          & ~ c0_1(a54)
          & ~ c1_1(a54) ) )
      & ( ~ hskp39
        | ( ndr1_0
          & ~ c0_1(a59)
          & ~ c2_1(a59)
          & ~ c5_1(a59) ) )
      & ( ~ hskp40
        | ( ndr1_0
          & c0_1(a61)
          & ~ c4_1(a61)
          & ~ c5_1(a61) ) )
      & ( ~ hskp41
        | ( ndr1_0
          & c1_1(a62)
          & c5_1(a62)
          & ~ c4_1(a62) ) )
      & ( ~ hskp42
        | ( ndr1_0
          & c0_1(a66)
          & c5_1(a66)
          & ~ c1_1(a66) ) )
      & ( ~ hskp43
        | ( ndr1_0
          & c3_1(a67)
          & ~ c2_1(a67)
          & ~ c5_1(a67) ) )
      & ( ~ hskp44
        | ( ndr1_0
          & ~ c3_1(a68)
          & ~ c4_1(a68)
          & ~ c5_1(a68) ) )
      & ( ~ hskp45
        | ( ndr1_0
          & c3_1(a71)
          & c5_1(a71)
          & ~ c0_1(a71) ) )
      & ( ~ hskp46
        | ( ndr1_0
          & c2_1(a73)
          & ~ c0_1(a73)
          & ~ c1_1(a73) ) )
      & ( ~ hskp47
        | ( ndr1_0
          & c3_1(a75)
          & c5_1(a75)
          & ~ c1_1(a75) ) )
      & ( ~ hskp48
        | ( ndr1_0
          & c5_1(a76)
          & ~ c1_1(a76)
          & ~ c3_1(a76) ) )
      & ( ~ hskp49
        | ( ndr1_0
          & c0_1(a2)
          & c1_1(a2)
          & c4_1(a2) ) )
      & ( ~ hskp50
        | ( ndr1_0
          & c2_1(a4)
          & c4_1(a4)
          & c5_1(a4) ) )
      & ( ~ hskp51
        | ( ndr1_0
          & c0_1(a40)
          & c2_1(a40)
          & c4_1(a40) ) )
      & ( ~ hskp52
        | ( ndr1_0
          & c1_1(a42)
          & c2_1(a42)
          & c5_1(a42) ) )
      & ( ~ hskp53
        | ( ndr1_0
          & c0_1(a44)
          & c3_1(a44)
          & c4_1(a44) ) )
      & ( ~ hskp54
        | ( ndr1_0
          & c1_1(a47)
          & c2_1(a47)
          & c4_1(a47) ) )
      & ( ~ hskp55
        | ( ndr1_0
          & c2_1(a56)
          & c3_1(a56)
          & c4_1(a56) ) )
      & ( ~ hskp56
        | ( ndr1_0
          & c0_1(a60)
          & c1_1(a60)
          & c2_1(a60) ) )
      & ( ~ hskp57
        | ( ndr1_0
          & c0_1(a63)
          & c2_1(a63)
          & c3_1(a63) ) )
      & ( ~ hskp58
        | ( ndr1_0
          & c1_1(a64)
          & c2_1(a64)
          & c3_1(a64) ) )
      & ( ! [U] :
            ( ndr1_0
           => ( c0_1(U)
              | c1_1(U)
              | c2_1(U) ) )
        | ! [V] :
            ( ndr1_0
           => ( c3_1(V)
              | ~ c2_1(V)
              | ~ c4_1(V) ) )
        | ! [W] :
            ( ndr1_0
           => ( ~ c0_1(W)
              | ~ c4_1(W)
              | ~ c5_1(W) ) ) )
      & ( ! [X] :
            ( ndr1_0
           => ( c0_1(X)
              | c1_1(X)
              | ~ c4_1(X) ) )
        | ! [Y] :
            ( ndr1_0
           => ( c0_1(Y)
              | c2_1(Y)
              | c3_1(Y) ) )
        | hskp0 )
      & ( ! [Z] :
            ( ndr1_0
           => ( c0_1(Z)
              | c2_1(Z)
              | c3_1(Z) ) )
        | ! [X1] :
            ( ndr1_0
           => ( ~ c0_1(X1)
              | ~ c1_1(X1)
              | ~ c5_1(X1) ) )
        | hskp49 )
      & ( ! [X2] :
            ( ndr1_0
           => ( c0_1(X2)
              | c2_1(X2)
              | c4_1(X2) ) )
        | ! [X3] :
            ( ndr1_0
           => ( c1_1(X3)
              | c3_1(X3)
              | c4_1(X3) ) )
        | ! [X4] :
            ( ndr1_0
           => ( c1_1(X4)
              | c5_1(X4)
              | ~ c3_1(X4) ) ) )
      & ( ! [X5] :
            ( ndr1_0
           => ( c0_1(X5)
              | c2_1(X5)
              | c5_1(X5) ) )
        | ! [X6] :
            ( ndr1_0
           => ( c0_1(X6)
              | c4_1(X6)
              | ~ c1_1(X6) ) )
        | ! [X7] :
            ( ndr1_0
           => ( c1_1(X7)
              | c4_1(X7)
              | ~ c0_1(X7) ) ) )
      & ( ! [X8] :
            ( ndr1_0
           => ( c0_1(X8)
              | c2_1(X8)
              | ~ c5_1(X8) ) )
        | ! [X9] :
            ( ndr1_0
           => ( ~ c0_1(X9)
              | ~ c2_1(X9)
              | ~ c5_1(X9) ) )
        | hskp1 )
      & ( ! [X10] :
            ( ndr1_0
           => ( c0_1(X10)
              | c3_1(X10)
              | c5_1(X10) ) )
        | ! [X11] :
            ( ndr1_0
           => ( c0_1(X11)
              | ~ c1_1(X11)
              | ~ c4_1(X11) ) )
        | hskp50 )
      & ( ! [X12] :
            ( ndr1_0
           => ( c0_1(X12)
              | c3_1(X12)
              | ~ c2_1(X12) ) )
        | ! [X13] :
            ( ndr1_0
           => ( ~ c2_1(X13)
              | ~ c3_1(X13)
              | ~ c4_1(X13) ) )
        | hskp2 )
      & ( ! [X14] :
            ( ndr1_0
           => ( c0_1(X14)
              | c4_1(X14)
              | c5_1(X14) ) )
        | hskp3
        | hskp4 )
      & ( ! [X15] :
            ( ndr1_0
           => ( c0_1(X15)
              | c4_1(X15)
              | ~ c2_1(X15) ) )
        | ! [X16] :
            ( ndr1_0
           => ( c1_1(X16)
              | c2_1(X16)
              | ~ c0_1(X16) ) )
        | hskp5 )
      & ( ! [X17] :
            ( ndr1_0
           => ( c0_1(X17)
              | c5_1(X17)
              | ~ c2_1(X17) ) )
        | ! [X18] :
            ( ndr1_0
           => ( c0_1(X18)
              | ~ c2_1(X18)
              | ~ c4_1(X18) ) )
        | ! [X19] :
            ( ndr1_0
           => ( c3_1(X19)
              | ~ c0_1(X19)
              | ~ c1_1(X19) ) ) )
      & ( ! [X20] :
            ( ndr1_0
           => ( c0_1(X20)
              | ~ c1_1(X20)
              | ~ c2_1(X20) ) )
        | ! [X21] :
            ( ndr1_0
           => ( c4_1(X21)
              | c5_1(X21)
              | ~ c0_1(X21) ) )
        | ! [X22] :
            ( ndr1_0
           => ( c5_1(X22)
              | ~ c0_1(X22)
              | ~ c3_1(X22) ) ) )
      & ( ! [X23] :
            ( ndr1_0
           => ( c0_1(X23)
              | ~ c1_1(X23)
              | ~ c3_1(X23) ) )
        | hskp6
        | hskp7 )
      & ( ! [X24] :
            ( ndr1_0
           => ( c0_1(X24)
              | ~ c2_1(X24)
              | ~ c3_1(X24) ) )
        | hskp8
        | hskp9 )
      & ( ! [X25] :
            ( ndr1_0
           => ( c0_1(X25)
              | ~ c2_1(X25)
              | ~ c5_1(X25) ) )
        | ! [X26] :
            ( ndr1_0
           => ( c1_1(X26)
              | ~ c0_1(X26)
              | ~ c2_1(X26) ) )
        | hskp4 )
      & ( ! [X27] :
            ( ndr1_0
           => ( c0_1(X27)
              | ~ c3_1(X27)
              | ~ c5_1(X27) ) )
        | hskp10
        | hskp11 )
      & ( ! [X28] :
            ( ndr1_0
           => ( c1_1(X28)
              | c2_1(X28)
              | c4_1(X28) ) )
        | ! [X29] :
            ( ndr1_0
           => ( c5_1(X29)
              | ~ c0_1(X29)
              | ~ c1_1(X29) ) )
        | hskp0 )
      & ( ! [X30] :
            ( ndr1_0
           => ( c1_1(X30)
              | c2_1(X30)
              | ~ c4_1(X30) ) )
        | ! [X31] :
            ( ndr1_0
           => ( ~ c1_1(X31)
              | ~ c2_1(X31)
              | ~ c4_1(X31) ) )
        | hskp12 )
      & ( ! [X32] :
            ( ndr1_0
           => ( c1_1(X32)
              | c2_1(X32)
              | ~ c5_1(X32) ) )
        | hskp4
        | hskp13 )
      & ( ! [X33] :
            ( ndr1_0
           => ( c1_1(X33)
              | c3_1(X33)
              | c4_1(X33) ) )
        | hskp14
        | hskp15 )
      & ( ! [X34] :
            ( ndr1_0
           => ( c1_1(X34)
              | c3_1(X34)
              | ~ c4_1(X34) ) )
        | ! [X35] :
            ( ndr1_0
           => ( c1_1(X35)
              | c5_1(X35)
              | ~ c0_1(X35) ) )
        | hskp16 )
      & ( ! [X36] :
            ( ndr1_0
           => ( c1_1(X36)
              | c4_1(X36)
              | ~ c0_1(X36) ) )
        | hskp17
        | hskp18 )
      & ( ! [X37] :
            ( ndr1_0
           => ( c1_1(X37)
              | c4_1(X37)
              | ~ c2_1(X37) ) )
        | ! [X38] :
            ( ndr1_0
           => ( ~ c1_1(X38)
              | ~ c4_1(X38)
              | ~ c5_1(X38) ) )
        | hskp19 )
      & ( ! [X39] :
            ( ndr1_0
           => ( c1_1(X39)
              | c5_1(X39)
              | ~ c0_1(X39) ) )
        | ! [X40] :
            ( ndr1_0
           => ( c2_1(X40)
              | ~ c1_1(X40)
              | ~ c5_1(X40) ) )
        | hskp20 )
      & ( ! [X41] :
            ( ndr1_0
           => ( c1_1(X41)
              | c5_1(X41)
              | ~ c4_1(X41) ) )
        | ! [X42] :
            ( ndr1_0
           => ( c2_1(X42)
              | ~ c1_1(X42)
              | ~ c5_1(X42) ) )
        | ! [X43] :
            ( ndr1_0
           => ( c3_1(X43)
              | ~ c1_1(X43)
              | ~ c5_1(X43) ) ) )
      & ( ! [X44] :
            ( ndr1_0
           => ( c1_1(X44)
              | ~ c0_1(X44)
              | ~ c2_1(X44) ) )
        | ! [X45] :
            ( ndr1_0
           => ( ~ c1_1(X45)
              | ~ c2_1(X45)
              | ~ c5_1(X45) ) )
        | hskp21 )
      & ( ! [X46] :
            ( ndr1_0
           => ( c1_1(X46)
              | ~ c0_1(X46)
              | ~ c4_1(X46) ) )
        | ! [X47] :
            ( ndr1_0
           => ( ~ c1_1(X47)
              | ~ c2_1(X47)
              | ~ c3_1(X47) ) )
        | hskp22 )
      & ( ! [X48] :
            ( ndr1_0
           => ( c1_1(X48)
              | ~ c2_1(X48)
              | ~ c3_1(X48) ) )
        | ! [X49] :
            ( ndr1_0
           => ( c4_1(X49)
              | ~ c0_1(X49)
              | ~ c1_1(X49) ) )
        | hskp23 )
      & ( ! [X50] :
            ( ndr1_0
           => ( c1_1(X50)
              | ~ c2_1(X50)
              | ~ c4_1(X50) ) )
        | ! [X51] :
            ( ndr1_0
           => ( c3_1(X51)
              | c4_1(X51)
              | ~ c2_1(X51) ) )
        | hskp24 )
      & ( ! [X52] :
            ( ndr1_0
           => ( c2_1(X52)
              | c3_1(X52)
              | ~ c5_1(X52) ) )
        | ! [X53] :
            ( ndr1_0
           => ( c2_1(X53)
              | c4_1(X53)
              | ~ c3_1(X53) ) )
        | hskp25 )
      & ( ! [X54] :
            ( ndr1_0
           => ( c2_1(X54)
              | c3_1(X54)
              | ~ c5_1(X54) ) )
        | ! [X55] :
            ( ndr1_0
           => ( c2_1(X55)
              | ~ c1_1(X55)
              | ~ c4_1(X55) ) )
        | hskp26 )
      & ( ! [X56] :
            ( ndr1_0
           => ( c2_1(X56)
              | c4_1(X56)
              | ~ c0_1(X56) ) )
        | ! [X57] :
            ( ndr1_0
           => ( c4_1(X57)
              | c5_1(X57)
              | ~ c1_1(X57) ) )
        | ! [X58] :
            ( ndr1_0
           => ( c4_1(X58)
              | ~ c0_1(X58)
              | ~ c5_1(X58) ) ) )
      & ( ! [X59] :
            ( ndr1_0
           => ( c2_1(X59)
              | c4_1(X59)
              | ~ c0_1(X59) ) )
        | hskp27
        | hskp28 )
      & ( ! [X60] :
            ( ndr1_0
           => ( c2_1(X60)
              | ~ c0_1(X60)
              | ~ c1_1(X60) ) )
        | hskp29
        | hskp30 )
      & ( ! [X61] :
            ( ndr1_0
           => ( c2_1(X61)
              | ~ c0_1(X61)
              | ~ c4_1(X61) ) )
        | ! [X62] :
            ( ndr1_0
           => ( c3_1(X62)
              | c5_1(X62)
              | ~ c4_1(X62) ) )
        | hskp31 )
      & ( ! [X63] :
            ( ndr1_0
           => ( c3_1(X63)
              | c4_1(X63)
              | ~ c0_1(X63) ) )
        | hskp27
        | hskp0 )
      & ( ! [X64] :
            ( ndr1_0
           => ( c3_1(X64)
              | c4_1(X64)
              | ~ c2_1(X64) ) )
        | hskp51
        | hskp32 )
      & ( ! [X65] :
            ( ndr1_0
           => ( c3_1(X65)
              | ~ c1_1(X65)
              | ~ c4_1(X65) ) )
        | hskp52
        | hskp24 )
      & ( ! [X66] :
            ( ndr1_0
           => ( c4_1(X66)
              | c5_1(X66)
              | ~ c3_1(X66) ) )
        | ! [X67] :
            ( ndr1_0
           => ( c4_1(X67)
              | ~ c1_1(X67)
              | ~ c2_1(X67) ) )
        | hskp53 )
      & ( ! [X68] :
            ( ndr1_0
           => ( c4_1(X68)
              | c5_1(X68)
              | ~ c3_1(X68) ) )
        | hskp33
        | hskp34 )
      & ( ! [X69] :
            ( ndr1_0
           => ( c4_1(X69)
              | ~ c0_1(X69)
              | ~ c2_1(X69) ) )
        | hskp54
        | hskp8 )
      & ( ! [X70] :
            ( ndr1_0
           => ( c4_1(X70)
              | ~ c0_1(X70)
              | ~ c2_1(X70) ) )
        | hskp35
        | hskp36 )
      & ( ! [X71] :
            ( ndr1_0
           => ( c4_1(X71)
              | ~ c1_1(X71)
              | ~ c3_1(X71) ) )
        | ! [X72] :
            ( ndr1_0
           => ( c5_1(X72)
              | ~ c2_1(X72)
              | ~ c4_1(X72) ) )
        | hskp37 )
      & ( ! [X73] :
            ( ndr1_0
           => ( c5_1(X73)
              | ~ c0_1(X73)
              | ~ c1_1(X73) ) )
        | ! [X74] :
            ( ndr1_0
           => ( c5_1(X74)
              | ~ c1_1(X74)
              | ~ c4_1(X74) ) )
        | hskp22 )
      & ( ! [X75] :
            ( ndr1_0
           => ( c5_1(X75)
              | ~ c2_1(X75)
              | ~ c4_1(X75) ) )
        | hskp34
        | hskp38 )
      & ( ! [X76] :
            ( ndr1_0
           => ( ~ c1_1(X76)
              | ~ c2_1(X76)
              | ~ c3_1(X76) ) )
        | hskp37
        | hskp55 )
      & ( ! [X77] :
            ( ndr1_0
           => ( ~ c1_1(X77)
              | ~ c4_1(X77)
              | ~ c5_1(X77) ) )
        | ! [X78] :
            ( ndr1_0
           => ( ~ c2_1(X78)
              | ~ c4_1(X78)
              | ~ c5_1(X78) ) )
        | hskp8 )
      & ( ! [X79] :
            ( ndr1_0
           => ( ~ c2_1(X79)
              | ~ c3_1(X79)
              | ~ c4_1(X79) ) )
        | hskp20
        | hskp39 )
      & ( hskp56
        | hskp40
        | hskp41 )
      & ( hskp57
        | hskp58
        | hskp7 )
      & ( hskp42
        | hskp43
        | hskp44 )
      & ( hskp33
        | hskp34
        | hskp45 )
      & ( hskp17
        | hskp46
        | hskp9 )
      & ( hskp47
        | hskp48
        | hskp44 ) ) ).

%--------------------------------------------------------------------------
