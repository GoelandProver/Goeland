%--------------------------------------------------------------------------
% File     : SYN432+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=20, K=3, D=1, P=0, Index=020
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-20-3-1-020.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.50 v4.0.1, 0.33 v3.7.0, 0.00 v3.5.0, 0.25 v3.4.0, 0.00 v3.1.0, 0.17 v2.7.0, 0.33 v2.6.0, 0.00 v2.5.0, 0.33 v2.3.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  288 (   0 equ)
%            Maximal formula atoms :  288 ( 288 avg)
%            Number of connectives :  398 ( 111   ~; 122   |; 139   &)
%                                         (   0 <=>;  26  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   58 (  58 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   35 (  35 usr;  31 prp; 0-1 aty)
%            Number of functors    :   30 (  30 usr;  30 con; 0-0 aty)
%            Number of variables   :   26 (  26   !;   0   ?)
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
          & ~ c0_1(a168)
          & ~ c2_1(a168)
          & ~ c1_1(a168) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & c3_1(a169)
          & ~ c1_1(a169)
          & ~ c0_1(a169) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & c3_1(a172)
          & ~ c2_1(a172)
          & ~ c1_1(a172) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & ~ c1_1(a173)
          & c3_1(a173)
          & ~ c2_1(a173) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & ~ c1_1(a176)
          & ~ c3_1(a176)
          & ~ c0_1(a176) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & ~ c3_1(a178)
          & ~ c0_1(a178)
          & ~ c1_1(a178) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & c0_1(a181)
          & ~ c1_1(a181)
          & ~ c2_1(a181) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & c2_1(a189)
          & c1_1(a189)
          & ~ c3_1(a189) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & ~ c0_1(a192)
          & c3_1(a192)
          & ~ c2_1(a192) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & c3_1(a195)
          & c2_1(a195)
          & ~ c1_1(a195) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & ~ c0_1(a162)
          & ~ c3_1(a162)
          & c2_1(a162) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & ~ c1_1(a163)
          & c0_1(a163)
          & c3_1(a163) ) )
      & ( ~ hskp12
        | ( ndr1_0
          & ~ c0_1(a164)
          & ~ c1_1(a164)
          & c2_1(a164) ) )
      & ( ~ hskp13
        | ( ndr1_0
          & c1_1(a166)
          & ~ c2_1(a166)
          & c3_1(a166) ) )
      & ( ~ hskp14
        | ( ndr1_0
          & ~ c2_1(a167)
          & c0_1(a167)
          & c3_1(a167) ) )
      & ( ~ hskp15
        | ( ndr1_0
          & c1_1(a170)
          & c0_1(a170)
          & c2_1(a170) ) )
      & ( ~ hskp16
        | ( ndr1_0
          & c1_1(a171)
          & ~ c3_1(a171)
          & c0_1(a171) ) )
      & ( ~ hskp17
        | ( ndr1_0
          & ~ c3_1(a174)
          & c0_1(a174)
          & c2_1(a174) ) )
      & ( ~ hskp18
        | ( ndr1_0
          & c1_1(a175)
          & c3_1(a175)
          & c2_1(a175) ) )
      & ( ~ hskp19
        | ( ndr1_0
          & ~ c0_1(a177)
          & c3_1(a177)
          & c1_1(a177) ) )
      & ( ~ hskp20
        | ( ndr1_0
          & c3_1(a179)
          & c2_1(a179)
          & c0_1(a179) ) )
      & ( ~ hskp21
        | ( ndr1_0
          & ~ c1_1(a180)
          & ~ c2_1(a180)
          & c3_1(a180) ) )
      & ( ~ hskp22
        | ( ndr1_0
          & c2_1(a183)
          & ~ c3_1(a183)
          & c0_1(a183) ) )
      & ( ~ hskp23
        | ( ndr1_0
          & c1_1(a184)
          & c2_1(a184)
          & c0_1(a184) ) )
      & ( ~ hskp24
        | ( ndr1_0
          & c1_1(a185)
          & c3_1(a185)
          & c0_1(a185) ) )
      & ( ~ hskp25
        | ( ndr1_0
          & ~ c0_1(a186)
          & ~ c2_1(a186)
          & c1_1(a186) ) )
      & ( ~ hskp26
        | ( ndr1_0
          & ~ c2_1(a187)
          & ~ c1_1(a187)
          & c3_1(a187) ) )
      & ( ~ hskp27
        | ( ndr1_0
          & ~ c2_1(a188)
          & c1_1(a188)
          & c0_1(a188) ) )
      & ( ~ hskp28
        | ( ndr1_0
          & c2_1(a190)
          & ~ c1_1(a190)
          & c0_1(a190) ) )
      & ( ~ hskp29
        | ( ndr1_0
          & c2_1(a193)
          & c3_1(a193)
          & c0_1(a193) ) )
      & ( hskp10
        | ! [U] :
            ( ndr1_0
           => ( c2_1(U)
              | c1_1(U)
              | c3_1(U) ) )
        | ! [V] :
            ( ndr1_0
           => ( c3_1(V)
              | c1_1(V)
              | ~ c2_1(V) ) ) )
      & ( ! [W] :
            ( ndr1_0
           => ( ~ c3_1(W)
              | ~ c1_1(W)
              | ~ c0_1(W) ) )
        | hskp11
        | ! [X] :
            ( ndr1_0
           => ( ~ c1_1(X)
              | ~ c2_1(X)
              | ~ c0_1(X) ) ) )
      & ( ! [Y] :
            ( ndr1_0
           => ( c1_1(Y)
              | c2_1(Y)
              | c0_1(Y) ) )
        | hskp12
        | hskp11 )
      & ( ! [Z] :
            ( ndr1_0
           => ( ~ c3_1(Z)
              | ~ c0_1(Z)
              | ~ c2_1(Z) ) )
        | ! [X1] :
            ( ndr1_0
           => ( ~ c2_1(X1)
              | c3_1(X1)
              | c1_1(X1) ) )
        | hskp13 )
      & ( hskp14
        | ! [X2] :
            ( ndr1_0
           => ( ~ c2_1(X2)
              | ~ c0_1(X2)
              | ~ c1_1(X2) ) )
        | hskp0 )
      & ( ! [X3] :
            ( ndr1_0
           => ( ~ c3_1(X3)
              | c2_1(X3)
              | c1_1(X3) ) )
        | hskp1
        | hskp15 )
      & ( ! [X4] :
            ( ndr1_0
           => ( ~ c1_1(X4)
              | ~ c2_1(X4)
              | c3_1(X4) ) )
        | hskp16
        | hskp2 )
      & ( ! [X5] :
            ( ndr1_0
           => ( c3_1(X5)
              | c2_1(X5)
              | ~ c1_1(X5) ) )
        | ! [X6] :
            ( ndr1_0
           => ( ~ c0_1(X6)
              | c3_1(X6)
              | c2_1(X6) ) )
        | hskp3 )
      & ( ! [X7] :
            ( ndr1_0
           => ( c2_1(X7)
              | c0_1(X7)
              | ~ c3_1(X7) ) )
        | hskp17
        | ! [X8] :
            ( ndr1_0
           => ( ~ c2_1(X8)
              | c1_1(X8)
              | ~ c3_1(X8) ) ) )
      & ( hskp18
        | ! [X9] :
            ( ndr1_0
           => ( c2_1(X9)
              | c1_1(X9)
              | ~ c0_1(X9) ) )
        | ! [X10] :
            ( ndr1_0
           => ( c1_1(X10)
              | ~ c3_1(X10)
              | ~ c2_1(X10) ) ) )
      & ( hskp4
        | hskp19
        | ! [X11] :
            ( ndr1_0
           => ( ~ c1_1(X11)
              | c3_1(X11)
              | c0_1(X11) ) ) )
      & ( hskp5
        | hskp20
        | hskp21 )
      & ( hskp6
        | hskp17
        | hskp22 )
      & ( hskp23
        | hskp24
        | ! [X12] :
            ( ndr1_0
           => ( ~ c2_1(X12)
              | c1_1(X12)
              | c3_1(X12) ) ) )
      & ( hskp25
        | ! [X13] :
            ( ndr1_0
           => ( ~ c0_1(X13)
              | ~ c1_1(X13)
              | c3_1(X13) ) )
        | hskp26 )
      & ( hskp27
        | ! [X14] :
            ( ndr1_0
           => ( ~ c2_1(X14)
              | ~ c1_1(X14)
              | c3_1(X14) ) )
        | hskp7 )
      & ( ! [X15] :
            ( ndr1_0
           => ( ~ c1_1(X15)
              | c2_1(X15)
              | c3_1(X15) ) )
        | ! [X16] :
            ( ndr1_0
           => ( c3_1(X16)
              | ~ c1_1(X16)
              | ~ c2_1(X16) ) )
        | ! [X17] :
            ( ndr1_0
           => ( c0_1(X17)
              | ~ c2_1(X17)
              | c3_1(X17) ) ) )
      & ( hskp28
        | hskp21
        | hskp8 )
      & ( hskp29
        | ! [X18] :
            ( ndr1_0
           => ( ~ c1_1(X18)
              | c0_1(X18)
              | ~ c2_1(X18) ) )
        | hskp25 )
      & ( hskp9
        | ! [X19] :
            ( ndr1_0
           => ( ~ c3_1(X19)
              | ~ c1_1(X19)
              | c0_1(X19) ) )
        | ! [X20] :
            ( ndr1_0
           => ( c1_1(X20)
              | c0_1(X20)
              | ~ c2_1(X20) ) ) ) ) ).

%--------------------------------------------------------------------------
