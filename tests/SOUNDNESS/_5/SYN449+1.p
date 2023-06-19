%--------------------------------------------------------------------------
% File     : SYN449+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=60, K=3, D=1, P=0, Index=026
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-60-3-1-026.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.1.0, 0.17 v5.5.0, 0.40 v5.3.0, 0.50 v5.0.0, 0.33 v4.1.0, 0.67 v4.0.1, 0.33 v3.7.0, 0.00 v3.5.0, 0.25 v3.4.0, 0.33 v3.2.0, 0.25 v3.1.0, 0.50 v2.6.0, 0.25 v2.5.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  598 (   0 equ)
%            Maximal formula atoms :  598 ( 598 avg)
%            Number of connectives :  813 ( 216   ~; 324   |; 187   &)
%                                         (   0 <=>;  86  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   95 (  95 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   37 (  37 usr;  33 prp; 0-1 aty)
%            Number of functors    :   32 (  32 usr;  32 con; 0-0 aty)
%            Number of variables   :   86 (  86   !;   0   ?)
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
          & c2_1(a547)
          & ~ c0_1(a547)
          & ~ c1_1(a547) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & c3_1(a548)
          & ~ c0_1(a548)
          & ~ c2_1(a548) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & c3_1(a549)
          & ~ c1_1(a549)
          & ~ c2_1(a549) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & c3_1(a550)
          & ~ c0_1(a550)
          & ~ c1_1(a550) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & c0_1(a551)
          & c1_1(a551)
          & ~ c3_1(a551) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & c0_1(a552)
          & ~ c1_1(a552)
          & ~ c2_1(a552) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & ~ c0_1(a554)
          & ~ c1_1(a554)
          & ~ c2_1(a554) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & ~ c0_1(a555)
          & ~ c2_1(a555)
          & ~ c3_1(a555) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & c0_1(a556)
          & c2_1(a556)
          & ~ c3_1(a556) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & c2_1(a557)
          & c3_1(a557)
          & ~ c1_1(a557) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & c1_1(a558)
          & c3_1(a558)
          & ~ c0_1(a558) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & c2_1(a559)
          & ~ c0_1(a559)
          & ~ c3_1(a559) ) )
      & ( ~ hskp12
        | ( ndr1_0
          & c0_1(a560)
          & ~ c1_1(a560)
          & ~ c3_1(a560) ) )
      & ( ~ hskp13
        | ( ndr1_0
          & c0_1(a561)
          & c1_1(a561)
          & ~ c2_1(a561) ) )
      & ( ~ hskp14
        | ( ndr1_0
          & ~ c1_1(a562)
          & ~ c2_1(a562)
          & ~ c3_1(a562) ) )
      & ( ~ hskp15
        | ( ndr1_0
          & c1_1(a563)
          & c2_1(a563)
          & ~ c0_1(a563) ) )
      & ( ~ hskp16
        | ( ndr1_0
          & c1_1(a564)
          & c2_1(a564)
          & ~ c3_1(a564) ) )
      & ( ~ hskp17
        | ( ndr1_0
          & c0_1(a566)
          & c2_1(a566)
          & ~ c1_1(a566) ) )
      & ( ~ hskp18
        | ( ndr1_0
          & c0_1(a570)
          & c3_1(a570)
          & ~ c2_1(a570) ) )
      & ( ~ hskp19
        | ( ndr1_0
          & c1_1(a572)
          & ~ c2_1(a572)
          & ~ c3_1(a572) ) )
      & ( ~ hskp20
        | ( ndr1_0
          & c2_1(a576)
          & ~ c1_1(a576)
          & ~ c3_1(a576) ) )
      & ( ~ hskp21
        | ( ndr1_0
          & c1_1(a577)
          & ~ c0_1(a577)
          & ~ c3_1(a577) ) )
      & ( ~ hskp22
        | ( ndr1_0
          & c1_1(a584)
          & ~ c0_1(a584)
          & ~ c2_1(a584) ) )
      & ( ~ hskp23
        | ( ndr1_0
          & c0_1(a587)
          & ~ c2_1(a587)
          & ~ c3_1(a587) ) )
      & ( ~ hskp24
        | ( ndr1_0
          & c1_1(a599)
          & c3_1(a599)
          & ~ c2_1(a599) ) )
      & ( ~ hskp25
        | ( ndr1_0
          & ~ c0_1(a601)
          & ~ c1_1(a601)
          & ~ c3_1(a601) ) )
      & ( ~ hskp26
        | ( ndr1_0
          & c2_1(a607)
          & c3_1(a607)
          & ~ c0_1(a607) ) )
      & ( ~ hskp27
        | ( ndr1_0
          & c0_1(a628)
          & c3_1(a628)
          & ~ c1_1(a628) ) )
      & ( ~ hskp28
        | ( ndr1_0
          & c0_1(a546)
          & c2_1(a546)
          & c3_1(a546) ) )
      & ( ~ hskp29
        | ( ndr1_0
          & c0_1(a581)
          & c1_1(a581)
          & c3_1(a581) ) )
      & ( ~ hskp30
        | ( ndr1_0
          & c0_1(a608)
          & c1_1(a608)
          & c2_1(a608) ) )
      & ( ~ hskp31
        | ( ndr1_0
          & c1_1(a609)
          & c2_1(a609)
          & c3_1(a609) ) )
      & ( ! [U] :
            ( ndr1_0
           => ( c0_1(U)
              | c1_1(U)
              | c2_1(U) ) )
        | hskp28
        | hskp0 )
      & ( ! [V] :
            ( ndr1_0
           => ( c0_1(V)
              | c1_1(V)
              | c2_1(V) ) )
        | hskp1
        | hskp2 )
      & ( ! [W] :
            ( ndr1_0
           => ( c0_1(W)
              | c1_1(W)
              | c3_1(W) ) )
        | ! [X] :
            ( ndr1_0
           => ( c0_1(X)
              | c2_1(X)
              | ~ c3_1(X) ) )
        | ! [Y] :
            ( ndr1_0
           => ( c3_1(Y)
              | ~ c0_1(Y)
              | ~ c1_1(Y) ) ) )
      & ( ! [Z] :
            ( ndr1_0
           => ( c0_1(Z)
              | c1_1(Z)
              | c3_1(Z) ) )
        | ! [X1] :
            ( ndr1_0
           => ( c1_1(X1)
              | ~ c2_1(X1)
              | ~ c3_1(X1) ) )
        | hskp3 )
      & ( ! [X2] :
            ( ndr1_0
           => ( c0_1(X2)
              | c1_1(X2)
              | c3_1(X2) ) )
        | hskp4
        | hskp5 )
      & ( ! [X3] :
            ( ndr1_0
           => ( c0_1(X3)
              | c1_1(X3)
              | c3_1(X3) ) )
        | hskp2
        | hskp6 )
      & ( ! [X4] :
            ( ndr1_0
           => ( c0_1(X4)
              | c1_1(X4)
              | ~ c2_1(X4) ) )
        | ! [X5] :
            ( ndr1_0
           => ( c0_1(X5)
              | c2_1(X5)
              | ~ c1_1(X5) ) )
        | hskp7 )
      & ( ! [X6] :
            ( ndr1_0
           => ( c0_1(X6)
              | c1_1(X6)
              | ~ c2_1(X6) ) )
        | hskp8
        | hskp9 )
      & ( ! [X7] :
            ( ndr1_0
           => ( c0_1(X7)
              | c1_1(X7)
              | ~ c2_1(X7) ) )
        | hskp10
        | hskp11 )
      & ( ! [X8] :
            ( ndr1_0
           => ( c0_1(X8)
              | c1_1(X8)
              | ~ c3_1(X8) ) )
        | ! [X9] :
            ( ndr1_0
           => ( c1_1(X9)
              | c2_1(X9)
              | ~ c0_1(X9) ) )
        | ! [X10] :
            ( ndr1_0
           => ( c1_1(X10)
              | ~ c0_1(X10)
              | ~ c2_1(X10) ) ) )
      & ( ! [X11] :
            ( ndr1_0
           => ( c0_1(X11)
              | c1_1(X11)
              | ~ c3_1(X11) ) )
        | ! [X12] :
            ( ndr1_0
           => ( c1_1(X12)
              | c3_1(X12)
              | ~ c2_1(X12) ) )
        | hskp12 )
      & ( ! [X13] :
            ( ndr1_0
           => ( c0_1(X13)
              | c1_1(X13)
              | ~ c3_1(X13) ) )
        | hskp13
        | hskp14 )
      & ( ! [X14] :
            ( ndr1_0
           => ( c0_1(X14)
              | c2_1(X14)
              | c3_1(X14) ) )
        | ! [X15] :
            ( ndr1_0
           => ( c2_1(X15)
              | c3_1(X15)
              | ~ c0_1(X15) ) )
        | hskp15 )
      & ( ! [X16] :
            ( ndr1_0
           => ( c0_1(X16)
              | c2_1(X16)
              | c3_1(X16) ) )
        | ! [X17] :
            ( ndr1_0
           => ( ~ c0_1(X17)
              | ~ c1_1(X17)
              | ~ c2_1(X17) ) )
        | hskp16 )
      & ( ! [X18] :
            ( ndr1_0
           => ( c0_1(X18)
              | c2_1(X18)
              | ~ c1_1(X18) ) )
        | ! [X19] :
            ( ndr1_0
           => ( c1_1(X19)
              | c2_1(X19)
              | ~ c3_1(X19) ) )
        | ! [X20] :
            ( ndr1_0
           => ( c3_1(X20)
              | ~ c0_1(X20)
              | ~ c2_1(X20) ) ) )
      & ( ! [X21] :
            ( ndr1_0
           => ( c0_1(X21)
              | c2_1(X21)
              | ~ c1_1(X21) ) )
        | ! [X22] :
            ( ndr1_0
           => ( c1_1(X22)
              | ~ c2_1(X22)
              | ~ c3_1(X22) ) )
        | hskp11 )
      & ( ! [X23] :
            ( ndr1_0
           => ( c0_1(X23)
              | c2_1(X23)
              | ~ c1_1(X23) ) )
        | ! [X24] :
            ( ndr1_0
           => ( c3_1(X24)
              | ~ c1_1(X24)
              | ~ c2_1(X24) ) )
        | ! [X25] :
            ( ndr1_0
           => ( ~ c1_1(X25)
              | ~ c2_1(X25)
              | ~ c3_1(X25) ) ) )
      & ( ! [X26] :
            ( ndr1_0
           => ( c0_1(X26)
              | c3_1(X26)
              | ~ c2_1(X26) ) )
        | ! [X27] :
            ( ndr1_0
           => ( c1_1(X27)
              | ~ c2_1(X27)
              | ~ c3_1(X27) ) )
        | hskp17 )
      & ( ! [X28] :
            ( ndr1_0
           => ( c0_1(X28)
              | ~ c1_1(X28)
              | ~ c2_1(X28) ) )
        | ! [X29] :
            ( ndr1_0
           => ( c2_1(X29)
              | c3_1(X29)
              | ~ c0_1(X29) ) )
        | ! [X30] :
            ( ndr1_0
           => ( c2_1(X30)
              | ~ c0_1(X30)
              | ~ c3_1(X30) ) ) )
      & ( ! [X31] :
            ( ndr1_0
           => ( c0_1(X31)
              | ~ c1_1(X31)
              | ~ c2_1(X31) ) )
        | ! [X32] :
            ( ndr1_0
           => ( c2_1(X32)
              | ~ c0_1(X32)
              | ~ c3_1(X32) ) )
        | hskp15 )
      & ( ! [X33] :
            ( ndr1_0
           => ( c0_1(X33)
              | ~ c1_1(X33)
              | ~ c2_1(X33) ) )
        | ! [X34] :
            ( ndr1_0
           => ( ~ c0_1(X34)
              | ~ c1_1(X34)
              | ~ c3_1(X34) ) )
        | ! [X35] :
            ( ndr1_0
           => ( ~ c1_1(X35)
              | ~ c2_1(X35)
              | ~ c3_1(X35) ) ) )
      & ( ! [X36] :
            ( ndr1_0
           => ( c0_1(X36)
              | ~ c1_1(X36)
              | ~ c2_1(X36) ) )
        | hskp28
        | hskp7 )
      & ( ! [X37] :
            ( ndr1_0
           => ( c0_1(X37)
              | ~ c1_1(X37)
              | ~ c2_1(X37) ) )
        | hskp18
        | hskp15 )
      & ( ! [X38] :
            ( ndr1_0
           => ( c0_1(X38)
              | ~ c1_1(X38)
              | ~ c3_1(X38) ) )
        | ! [X39] :
            ( ndr1_0
           => ( c3_1(X39)
              | ~ c1_1(X39)
              | ~ c2_1(X39) ) )
        | hskp19 )
      & ( ! [X40] :
            ( ndr1_0
           => ( c0_1(X40)
              | ~ c1_1(X40)
              | ~ c3_1(X40) ) )
        | hskp13
        | hskp6 )
      & ( ! [X41] :
            ( ndr1_0
           => ( c0_1(X41)
              | ~ c2_1(X41)
              | ~ c3_1(X41) ) )
        | hskp13
        | hskp20 )
      & ( ! [X42] :
            ( ndr1_0
           => ( c1_1(X42)
              | c2_1(X42)
              | c3_1(X42) ) )
        | ! [X43] :
            ( ndr1_0
           => ( c2_1(X43)
              | c3_1(X43)
              | ~ c1_1(X43) ) )
        | ! [X44] :
            ( ndr1_0
           => ( c2_1(X44)
              | ~ c0_1(X44)
              | ~ c3_1(X44) ) ) )
      & ( ! [X45] :
            ( ndr1_0
           => ( c1_1(X45)
              | c2_1(X45)
              | ~ c0_1(X45) ) )
        | ! [X46] :
            ( ndr1_0
           => ( c3_1(X46)
              | ~ c1_1(X46)
              | ~ c2_1(X46) ) )
        | hskp21 )
      & ( ! [X47] :
            ( ndr1_0
           => ( c1_1(X47)
              | c2_1(X47)
              | ~ c0_1(X47) ) )
        | hskp16
        | hskp0 )
      & ( ! [X48] :
            ( ndr1_0
           => ( c1_1(X48)
              | c2_1(X48)
              | ~ c3_1(X48) ) )
        | ! [X49] :
            ( ndr1_0
           => ( c3_1(X49)
              | ~ c1_1(X49)
              | ~ c2_1(X49) ) )
        | hskp19 )
      & ( ! [X50] :
            ( ndr1_0
           => ( c1_1(X50)
              | c2_1(X50)
              | ~ c3_1(X50) ) )
        | ! [X51] :
            ( ndr1_0
           => ( ~ c0_1(X51)
              | ~ c2_1(X51)
              | ~ c3_1(X51) ) )
        | hskp29 )
      & ( ! [X52] :
            ( ndr1_0
           => ( c1_1(X52)
              | c2_1(X52)
              | ~ c3_1(X52) ) )
        | hskp11
        | hskp6 )
      & ( ! [X53] :
            ( ndr1_0
           => ( c1_1(X53)
              | c3_1(X53)
              | ~ c0_1(X53) ) )
        | ! [X54] :
            ( ndr1_0
           => ( c3_1(X54)
              | ~ c1_1(X54)
              | ~ c2_1(X54) ) )
        | hskp22 )
      & ( ! [X55] :
            ( ndr1_0
           => ( c1_1(X55)
              | ~ c0_1(X55)
              | ~ c2_1(X55) ) )
        | ! [X56] :
            ( ndr1_0
           => ( c3_1(X56)
              | ~ c0_1(X56)
              | ~ c1_1(X56) ) )
        | hskp0 )
      & ( ! [X57] :
            ( ndr1_0
           => ( c1_1(X57)
              | ~ c0_1(X57)
              | ~ c2_1(X57) ) )
        | hskp8
        | hskp23 )
      & ( ! [X58] :
            ( ndr1_0
           => ( c1_1(X58)
              | ~ c0_1(X58)
              | ~ c2_1(X58) ) )
        | hskp10
        | hskp9 )
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
        | hskp19 )
      & ( ! [X61] :
            ( ndr1_0
           => ( c1_1(X61)
              | ~ c2_1(X61)
              | ~ c3_1(X61) ) )
        | hskp4
        | hskp19 )
      & ( ! [X62] :
            ( ndr1_0
           => ( c2_1(X62)
              | c3_1(X62)
              | ~ c0_1(X62) ) )
        | ! [X63] :
            ( ndr1_0
           => ( c3_1(X63)
              | ~ c0_1(X63)
              | ~ c1_1(X63) ) )
        | hskp9 )
      & ( ! [X64] :
            ( ndr1_0
           => ( c2_1(X64)
              | c3_1(X64)
              | ~ c0_1(X64) ) )
        | hskp29
        | hskp5 )
      & ( ! [X65] :
            ( ndr1_0
           => ( c2_1(X65)
              | c3_1(X65)
              | ~ c0_1(X65) ) )
        | hskp13
        | hskp10 )
      & ( ! [X66] :
            ( ndr1_0
           => ( c2_1(X66)
              | c3_1(X66)
              | ~ c0_1(X66) ) )
        | hskp13
        | hskp24 )
      & ( ! [X67] :
            ( ndr1_0
           => ( c2_1(X67)
              | c3_1(X67)
              | ~ c0_1(X67) ) )
        | hskp16
        | hskp25 )
      & ( ! [X68] :
            ( ndr1_0
           => ( c2_1(X68)
              | ~ c0_1(X68)
              | ~ c3_1(X68) ) )
        | hskp28
        | hskp24 )
      & ( ! [X69] :
            ( ndr1_0
           => ( c2_1(X69)
              | ~ c0_1(X69)
              | ~ c3_1(X69) ) )
        | hskp23
        | hskp11 )
      & ( ! [X70] :
            ( ndr1_0
           => ( c2_1(X70)
              | ~ c0_1(X70)
              | ~ c3_1(X70) ) )
        | hskp16
        | hskp26 )
      & ( ! [X71] :
            ( ndr1_0
           => ( c3_1(X71)
              | ~ c0_1(X71)
              | ~ c1_1(X71) ) )
        | hskp30
        | hskp31 )
      & ( ! [X72] :
            ( ndr1_0
           => ( c3_1(X72)
              | ~ c0_1(X72)
              | ~ c2_1(X72) ) )
        | hskp16
        | hskp24 )
      & ( ! [X73] :
            ( ndr1_0
           => ( c3_1(X73)
              | ~ c1_1(X73)
              | ~ c2_1(X73) ) )
        | ! [X74] :
            ( ndr1_0
           => ( ~ c0_1(X74)
              | ~ c2_1(X74)
              | ~ c3_1(X74) ) )
        | hskp24 )
      & ( ! [X75] :
            ( ndr1_0
           => ( c3_1(X75)
              | ~ c1_1(X75)
              | ~ c2_1(X75) ) )
        | ! [X76] :
            ( ndr1_0
           => ( ~ c1_1(X76)
              | ~ c2_1(X76)
              | ~ c3_1(X76) ) )
        | hskp16 )
      & ( ! [X77] :
            ( ndr1_0
           => ( ~ c0_1(X77)
              | ~ c1_1(X77)
              | ~ c3_1(X77) ) )
        | hskp31
        | hskp21 )
      & ( ! [X78] :
            ( ndr1_0
           => ( ~ c0_1(X78)
              | ~ c1_1(X78)
              | ~ c3_1(X78) ) )
        | hskp31
        | hskp6 )
      & ( ! [X79] :
            ( ndr1_0
           => ( ~ c0_1(X79)
              | ~ c1_1(X79)
              | ~ c3_1(X79) ) )
        | hskp3
        | hskp25 )
      & ( ! [X80] :
            ( ndr1_0
           => ( ~ c0_1(X80)
              | ~ c2_1(X80)
              | ~ c3_1(X80) ) )
        | hskp24
        | hskp19 )
      & ( hskp29
        | hskp2
        | hskp25 )
      & ( hskp8
        | hskp3
        | hskp7 )
      & ( hskp27
        | hskp18
        | hskp20 )
      & ( hskp27
        | hskp0
        | hskp3 )
      & ( hskp18
        | hskp15
        | hskp2 )
      & ( hskp23
        | hskp26
        | hskp25 ) ) ).

%--------------------------------------------------------------------------
