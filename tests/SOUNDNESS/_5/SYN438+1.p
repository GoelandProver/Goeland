%--------------------------------------------------------------------------
% File     : SYN438+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=48, K=3, D=1, P=0, Index=089
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-48-3-1-089.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.20 v5.4.0, 0.00 v5.3.0, 0.25 v5.0.0, 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.4.0, 0.17 v3.2.0, 0.25 v3.1.0, 0.17 v2.7.0, 0.33 v2.6.0, 0.00 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  515 (   0 equ)
%            Maximal formula atoms :  515 ( 515 avg)
%            Number of connectives :  700 ( 186   ~; 273   |; 167   &)
%                                         (   0 <=>;  74  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   81 (  81 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   35 (  35 usr;  31 prp; 0-1 aty)
%            Number of functors    :   30 (  30 usr;  30 con; 0-0 aty)
%            Number of variables   :   74 (  74   !;   0   ?)
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
          & c1_1(a55)
          & c3_1(a55)
          & ~ c0_1(a55) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & c1_1(a56)
          & ~ c0_1(a56)
          & ~ c3_1(a56) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & c1_1(a57)
          & ~ c0_1(a57)
          & ~ c2_1(a57) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & c2_1(a58)
          & ~ c1_1(a58)
          & ~ c3_1(a58) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & c2_1(a59)
          & c3_1(a59)
          & ~ c1_1(a59) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & c0_1(a60)
          & ~ c1_1(a60)
          & ~ c2_1(a60) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & c1_1(a61)
          & c2_1(a61)
          & ~ c3_1(a61) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & c0_1(a62)
          & c1_1(a62)
          & ~ c3_1(a62) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & ~ c0_1(a63)
          & ~ c1_1(a63)
          & ~ c3_1(a63) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & c0_1(a64)
          & c2_1(a64)
          & ~ c3_1(a64) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & c2_1(a67)
          & ~ c0_1(a67)
          & ~ c1_1(a67) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & c1_1(a69)
          & c2_1(a69)
          & ~ c0_1(a69) ) )
      & ( ~ hskp12
        | ( ndr1_0
          & c1_1(a70)
          & ~ c2_1(a70)
          & ~ c3_1(a70) ) )
      & ( ~ hskp13
        | ( ndr1_0
          & c3_1(a71)
          & ~ c0_1(a71)
          & ~ c1_1(a71) ) )
      & ( ~ hskp14
        | ( ndr1_0
          & ~ c1_1(a73)
          & ~ c2_1(a73)
          & ~ c3_1(a73) ) )
      & ( ~ hskp15
        | ( ndr1_0
          & c3_1(a74)
          & ~ c0_1(a74)
          & ~ c2_1(a74) ) )
      & ( ~ hskp16
        | ( ndr1_0
          & c0_1(a77)
          & c3_1(a77)
          & ~ c1_1(a77) ) )
      & ( ~ hskp17
        | ( ndr1_0
          & c1_1(a79)
          & c3_1(a79)
          & ~ c2_1(a79) ) )
      & ( ~ hskp18
        | ( ndr1_0
          & c0_1(a82)
          & c3_1(a82)
          & ~ c2_1(a82) ) )
      & ( ~ hskp19
        | ( ndr1_0
          & ~ c0_1(a83)
          & ~ c1_1(a83)
          & ~ c2_1(a83) ) )
      & ( ~ hskp20
        | ( ndr1_0
          & c0_1(a90)
          & c1_1(a90)
          & ~ c2_1(a90) ) )
      & ( ~ hskp21
        | ( ndr1_0
          & c0_1(a92)
          & c2_1(a92)
          & ~ c1_1(a92) ) )
      & ( ~ hskp22
        | ( ndr1_0
          & c0_1(a98)
          & ~ c1_1(a98)
          & ~ c3_1(a98) ) )
      & ( ~ hskp23
        | ( ndr1_0
          & c2_1(a104)
          & c3_1(a104)
          & ~ c0_1(a104) ) )
      & ( ~ hskp24
        | ( ndr1_0
          & c2_1(a116)
          & ~ c0_1(a116)
          & ~ c3_1(a116) ) )
      & ( ~ hskp25
        | ( ndr1_0
          & c3_1(a117)
          & ~ c1_1(a117)
          & ~ c2_1(a117) ) )
      & ( ~ hskp26
        | ( ndr1_0
          & c1_1(a66)
          & c2_1(a66)
          & c3_1(a66) ) )
      & ( ~ hskp27
        | ( ndr1_0
          & c0_1(a87)
          & c2_1(a87)
          & c3_1(a87) ) )
      & ( ~ hskp28
        | ( ndr1_0
          & c0_1(a96)
          & c1_1(a96)
          & c3_1(a96) ) )
      & ( ~ hskp29
        | ( ndr1_0
          & c0_1(a103)
          & c1_1(a103)
          & c2_1(a103) ) )
      & ( ! [U] :
            ( ndr1_0
           => ( c0_1(U)
              | c1_1(U)
              | c2_1(U) ) )
        | hskp0
        | hskp1 )
      & ( ! [V] :
            ( ndr1_0
           => ( c0_1(V)
              | c1_1(V)
              | c2_1(V) ) )
        | hskp2
        | hskp3 )
      & ( ! [W] :
            ( ndr1_0
           => ( c0_1(W)
              | c1_1(W)
              | c3_1(W) ) )
        | ! [X] :
            ( ndr1_0
           => ( c2_1(X)
              | ~ c0_1(X)
              | ~ c3_1(X) ) )
        | ! [Y] :
            ( ndr1_0
           => ( c3_1(Y)
              | ~ c1_1(Y)
              | ~ c2_1(Y) ) ) )
      & ( ! [Z] :
            ( ndr1_0
           => ( c0_1(Z)
              | c1_1(Z)
              | c3_1(Z) ) )
        | ! [X1] :
            ( ndr1_0
           => ( c3_1(X1)
              | ~ c0_1(X1)
              | ~ c1_1(X1) ) )
        | hskp4 )
      & ( ! [X2] :
            ( ndr1_0
           => ( c0_1(X2)
              | c1_1(X2)
              | ~ c2_1(X2) ) )
        | ! [X3] :
            ( ndr1_0
           => ( c0_1(X3)
              | ~ c2_1(X3)
              | ~ c3_1(X3) ) )
        | ! [X4] :
            ( ndr1_0
           => ( c1_1(X4)
              | c3_1(X4)
              | ~ c0_1(X4) ) ) )
      & ( ! [X5] :
            ( ndr1_0
           => ( c0_1(X5)
              | c1_1(X5)
              | ~ c3_1(X5) ) )
        | ! [X6] :
            ( ndr1_0
           => ( c1_1(X6)
              | c3_1(X6)
              | ~ c2_1(X6) ) )
        | hskp5 )
      & ( ! [X7] :
            ( ndr1_0
           => ( c0_1(X7)
              | c2_1(X7)
              | c3_1(X7) ) )
        | ! [X8] :
            ( ndr1_0
           => ( c2_1(X8)
              | ~ c0_1(X8)
              | ~ c3_1(X8) ) )
        | hskp6 )
      & ( ! [X9] :
            ( ndr1_0
           => ( c0_1(X9)
              | c2_1(X9)
              | ~ c1_1(X9) ) )
        | ! [X10] :
            ( ndr1_0
           => ( c0_1(X10)
              | c3_1(X10)
              | ~ c1_1(X10) ) )
        | ! [X11] :
            ( ndr1_0
           => ( c0_1(X11)
              | ~ c1_1(X11)
              | ~ c2_1(X11) ) ) )
      & ( ! [X12] :
            ( ndr1_0
           => ( c0_1(X12)
              | c2_1(X12)
              | ~ c1_1(X12) ) )
        | ! [X13] :
            ( ndr1_0
           => ( ~ c0_1(X13)
              | ~ c1_1(X13)
              | ~ c2_1(X13) ) )
        | ! [X14] :
            ( ndr1_0
           => ( ~ c0_1(X14)
              | ~ c1_1(X14)
              | ~ c3_1(X14) ) ) )
      & ( ! [X15] :
            ( ndr1_0
           => ( c0_1(X15)
              | c2_1(X15)
              | ~ c1_1(X15) ) )
        | hskp7
        | hskp8 )
      & ( ! [X16] :
            ( ndr1_0
           => ( c0_1(X16)
              | c2_1(X16)
              | ~ c1_1(X16) ) )
        | hskp9
        | hskp5 )
      & ( ! [X17] :
            ( ndr1_0
           => ( c0_1(X17)
              | c2_1(X17)
              | ~ c1_1(X17) ) )
        | hskp26
        | hskp10 )
      & ( ! [X18] :
            ( ndr1_0
           => ( c0_1(X18)
              | c3_1(X18)
              | ~ c1_1(X18) ) )
        | ! [X19] :
            ( ndr1_0
           => ( c1_1(X19)
              | c2_1(X19)
              | ~ c0_1(X19) ) )
        | ! [X20] :
            ( ndr1_0
           => ( ~ c0_1(X20)
              | ~ c2_1(X20)
              | ~ c3_1(X20) ) ) )
      & ( ! [X21] :
            ( ndr1_0
           => ( c0_1(X21)
              | c3_1(X21)
              | ~ c1_1(X21) ) )
        | ! [X22] :
            ( ndr1_0
           => ( c1_1(X22)
              | c3_1(X22)
              | ~ c0_1(X22) ) )
        | hskp0 )
      & ( ! [X23] :
            ( ndr1_0
           => ( c0_1(X23)
              | c3_1(X23)
              | ~ c1_1(X23) ) )
        | hskp11
        | hskp12 )
      & ( ! [X24] :
            ( ndr1_0
           => ( c0_1(X24)
              | c3_1(X24)
              | ~ c2_1(X24) ) )
        | ! [X25] :
            ( ndr1_0
           => ( c1_1(X25)
              | ~ c0_1(X25)
              | ~ c3_1(X25) ) )
        | hskp13 )
      & ( ! [X26] :
            ( ndr1_0
           => ( c0_1(X26)
              | c3_1(X26)
              | ~ c2_1(X26) ) )
        | ! [X27] :
            ( ndr1_0
           => ( c2_1(X27)
              | c3_1(X27)
              | ~ c0_1(X27) ) )
        | hskp4 )
      & ( ! [X28] :
            ( ndr1_0
           => ( c0_1(X28)
              | c3_1(X28)
              | ~ c2_1(X28) ) )
        | ! [X29] :
            ( ndr1_0
           => ( c2_1(X29)
              | ~ c1_1(X29)
              | ~ c3_1(X29) ) )
        | hskp14 )
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
        | hskp15 )
      & ( ! [X32] :
            ( ndr1_0
           => ( c0_1(X32)
              | ~ c1_1(X32)
              | ~ c2_1(X32) ) )
        | ! [X33] :
            ( ndr1_0
           => ( c2_1(X33)
              | c3_1(X33)
              | ~ c1_1(X33) ) )
        | hskp0 )
      & ( ! [X34] :
            ( ndr1_0
           => ( c0_1(X34)
              | ~ c1_1(X34)
              | ~ c2_1(X34) ) )
        | ! [X35] :
            ( ndr1_0
           => ( c2_1(X35)
              | ~ c0_1(X35)
              | ~ c3_1(X35) ) )
        | hskp11 )
      & ( ! [X36] :
            ( ndr1_0
           => ( c0_1(X36)
              | ~ c1_1(X36)
              | ~ c3_1(X36) ) )
        | ! [X37] :
            ( ndr1_0
           => ( c1_1(X37)
              | c2_1(X37)
              | ~ c3_1(X37) ) )
        | ! [X38] :
            ( ndr1_0
           => ( c2_1(X38)
              | ~ c0_1(X38)
              | ~ c3_1(X38) ) ) )
      & ( ! [X39] :
            ( ndr1_0
           => ( c0_1(X39)
              | ~ c2_1(X39)
              | ~ c3_1(X39) ) )
        | hskp16
        | hskp12 )
      & ( ! [X40] :
            ( ndr1_0
           => ( c0_1(X40)
              | ~ c2_1(X40)
              | ~ c3_1(X40) ) )
        | hskp17
        | hskp14 )
      & ( ! [X41] :
            ( ndr1_0
           => ( c1_1(X41)
              | c2_1(X41)
              | c3_1(X41) ) )
        | ! [X42] :
            ( ndr1_0
           => ( c3_1(X42)
              | ~ c0_1(X42)
              | ~ c2_1(X42) ) )
        | hskp3 )
      & ( ! [X43] :
            ( ndr1_0
           => ( c1_1(X43)
              | c2_1(X43)
              | ~ c0_1(X43) ) )
        | hskp18
        | hskp19 )
      & ( ! [X44] :
            ( ndr1_0
           => ( c1_1(X44)
              | c2_1(X44)
              | ~ c0_1(X44) ) )
        | hskp11
        | hskp12 )
      & ( ! [X45] :
            ( ndr1_0
           => ( c1_1(X45)
              | c2_1(X45)
              | ~ c3_1(X45) ) )
        | ! [X46] :
            ( ndr1_0
           => ( ~ c0_1(X46)
              | ~ c1_1(X46)
              | ~ c2_1(X46) ) )
        | hskp10 )
      & ( ! [X47] :
            ( ndr1_0
           => ( c1_1(X47)
              | c2_1(X47)
              | ~ c3_1(X47) ) )
        | hskp27 )
      & ( ! [X48] :
            ( ndr1_0
           => ( c1_1(X48)
              | c2_1(X48)
              | ~ c3_1(X48) ) )
        | hskp5
        | hskp1 )
      & ( ! [X49] :
            ( ndr1_0
           => ( c1_1(X49)
              | c3_1(X49)
              | ~ c2_1(X49) ) )
        | ! [X50] :
            ( ndr1_0
           => ( c2_1(X50)
              | ~ c0_1(X50)
              | ~ c3_1(X50) ) )
        | hskp20 )
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
        | hskp17 )
      & ( ! [X53] :
            ( ndr1_0
           => ( c1_1(X53)
              | c3_1(X53)
              | ~ c2_1(X53) ) )
        | hskp21
        | hskp26 )
      & ( ! [X54] :
            ( ndr1_0
           => ( c1_1(X54)
              | ~ c0_1(X54)
              | ~ c2_1(X54) ) )
        | ! [X55] :
            ( ndr1_0
           => ( c2_1(X55)
              | ~ c1_1(X55)
              | ~ c3_1(X55) ) )
        | ! [X56] :
            ( ndr1_0
           => ( c3_1(X56)
              | ~ c0_1(X56)
              | ~ c2_1(X56) ) ) )
      & ( ! [X57] :
            ( ndr1_0
           => ( c1_1(X57)
              | ~ c0_1(X57)
              | ~ c2_1(X57) ) )
        | ! [X58] :
            ( ndr1_0
           => ( c3_1(X58)
              | ~ c0_1(X58)
              | ~ c1_1(X58) ) )
        | hskp15 )
      & ( ! [X59] :
            ( ndr1_0
           => ( c1_1(X59)
              | ~ c0_1(X59)
              | ~ c3_1(X59) ) )
        | ! [X60] :
            ( ndr1_0
           => ( c2_1(X60)
              | c3_1(X60)
              | ~ c0_1(X60) ) )
        | hskp2 )
      & ( ! [X61] :
            ( ndr1_0
           => ( c1_1(X61)
              | ~ c0_1(X61)
              | ~ c3_1(X61) ) )
        | hskp28
        | hskp27 )
      & ( ! [X62] :
            ( ndr1_0
           => ( c1_1(X62)
              | ~ c0_1(X62)
              | ~ c3_1(X62) ) )
        | hskp22
        | hskp10 )
      & ( ! [X63] :
            ( ndr1_0
           => ( c1_1(X63)
              | ~ c2_1(X63)
              | ~ c3_1(X63) ) )
        | ! [X64] :
            ( ndr1_0
           => ( c2_1(X64)
              | ~ c1_1(X64)
              | ~ c3_1(X64) ) )
        | ! [X65] :
            ( ndr1_0
           => ( ~ c0_1(X65)
              | ~ c2_1(X65)
              | ~ c3_1(X65) ) ) )
      & ( ! [X66] :
            ( ndr1_0
           => ( c1_1(X66)
              | ~ c2_1(X66)
              | ~ c3_1(X66) ) )
        | ! [X67] :
            ( ndr1_0
           => ( ~ c0_1(X67)
              | ~ c1_1(X67)
              | ~ c3_1(X67) ) )
        | hskp0 )
      & ( ! [X68] :
            ( ndr1_0
           => ( c1_1(X68)
              | ~ c2_1(X68)
              | ~ c3_1(X68) ) )
        | hskp7
        | hskp17 )
      & ( hskp29
        | hskp23
        | hskp3 )
      & ( hskp28
        | hskp16
        | hskp15 )
      & ( hskp28
        | hskp17
        | hskp4 )
      & ( hskp21
        | hskp12
        | hskp19 )
      & ( hskp22
        | hskp24
        | hskp25 )
      & ( hskp26
        | hskp3
        | hskp13 )
      & ( hskp17
        | hskp3
        | hskp14 ) ) ).

%--------------------------------------------------------------------------
