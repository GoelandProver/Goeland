%--------------------------------------------------------------------------
% File     : SYN435+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=40, K=3, D=1, P=0, Index=046
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-40-3-1-046.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.20 v5.3.0, 0.50 v5.0.0, 0.33 v4.1.0, 0.50 v4.0.1, 0.33 v3.7.0, 0.00 v3.5.0, 0.25 v3.4.0, 0.17 v3.2.0, 0.25 v3.1.0, 0.50 v2.6.0, 0.25 v2.5.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  543 (   0 equ)
%            Maximal formula atoms :  543 ( 543 avg)
%            Number of connectives :  764 ( 222   ~; 238   |; 251   &)
%                                         (   0 <=>;  53  =>;   0  <=;   0 <~>)
%            Maximal formula depth :  101 ( 101 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   58 (  58 usr;  54 prp; 0-1 aty)
%            Number of functors    :   53 (  53 usr;  53 con; 0-0 aty)
%            Number of variables   :   53 (  53   !;   0   ?)
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
          & c2_1(a282)
          & c3_1(a282)
          & ~ c1_1(a282) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & c2_1(a283)
          & ~ c1_1(a283)
          & ~ c3_1(a283) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & ~ c1_1(a290)
          & ~ c3_1(a290)
          & ~ c0_1(a290) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & ~ c2_1(a291)
          & c0_1(a291)
          & ~ c1_1(a291) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & ~ c0_1(a292)
          & ~ c3_1(a292)
          & ~ c1_1(a292) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & ~ c1_1(a294)
          & c2_1(a294)
          & ~ c3_1(a294) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & c2_1(a297)
          & c0_1(a297)
          & ~ c1_1(a297) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & c2_1(a299)
          & c0_1(a299)
          & ~ c3_1(a299) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & ~ c1_1(a300)
          & c0_1(a300)
          & ~ c2_1(a300) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & c1_1(a301)
          & ~ c3_1(a301)
          & ~ c0_1(a301) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & ~ c1_1(a306)
          & ~ c3_1(a306)
          & ~ c2_1(a306) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & c1_1(a309)
          & c0_1(a309)
          & ~ c2_1(a309) ) )
      & ( ~ hskp12
        | ( ndr1_0
          & ~ c3_1(a310)
          & ~ c1_1(a310)
          & ~ c2_1(a310) ) )
      & ( ~ hskp13
        | ( ndr1_0
          & c3_1(a311)
          & c0_1(a311)
          & ~ c1_1(a311) ) )
      & ( ~ hskp14
        | ( ndr1_0
          & ~ c3_1(a312)
          & ~ c0_1(a312)
          & ~ c2_1(a312) ) )
      & ( ~ hskp15
        | ( ndr1_0
          & c1_1(a313)
          & c3_1(a313)
          & ~ c2_1(a313) ) )
      & ( ~ hskp16
        | ( ndr1_0
          & c3_1(a317)
          & c1_1(a317)
          & ~ c0_1(a317) ) )
      & ( ~ hskp17
        | ( ndr1_0
          & ~ c0_1(a318)
          & ~ c3_1(a318)
          & ~ c2_1(a318) ) )
      & ( ~ hskp18
        | ( ndr1_0
          & ~ c2_1(a319)
          & c1_1(a319)
          & ~ c0_1(a319) ) )
      & ( ~ hskp19
        | ( ndr1_0
          & c3_1(a322)
          & ~ c2_1(a322)
          & ~ c1_1(a322) ) )
      & ( ~ hskp20
        | ( ndr1_0
          & ~ c3_1(a324)
          & ~ c2_1(a324)
          & ~ c0_1(a324) ) )
      & ( ~ hskp21
        | ( ndr1_0
          & c0_1(a326)
          & ~ c1_1(a326)
          & ~ c2_1(a326) ) )
      & ( ~ hskp22
        | ( ndr1_0
          & c3_1(a327)
          & ~ c1_1(a327)
          & ~ c0_1(a327) ) )
      & ( ~ hskp23
        | ( ndr1_0
          & c1_1(a333)
          & ~ c2_1(a333)
          & ~ c3_1(a333) ) )
      & ( ~ hskp24
        | ( ndr1_0
          & c0_1(a336)
          & ~ c2_1(a336)
          & ~ c1_1(a336) ) )
      & ( ~ hskp25
        | ( ndr1_0
          & ~ c2_1(a337)
          & ~ c0_1(a337)
          & ~ c3_1(a337) ) )
      & ( ~ hskp26
        | ( ndr1_0
          & ~ c0_1(a347)
          & ~ c2_1(a347)
          & ~ c1_1(a347) ) )
      & ( ~ hskp27
        | ( ndr1_0
          & c1_1(a284)
          & ~ c0_1(a284)
          & c2_1(a284) ) )
      & ( ~ hskp28
        | ( ndr1_0
          & c0_1(a285)
          & c2_1(a285)
          & c1_1(a285) ) )
      & ( ~ hskp29
        | ( ndr1_0
          & ~ c1_1(a286)
          & ~ c0_1(a286)
          & c2_1(a286) ) )
      & ( ~ hskp30
        | ( ndr1_0
          & c2_1(a287)
          & c0_1(a287)
          & c3_1(a287) ) )
      & ( ~ hskp31
        | ( ndr1_0
          & ~ c1_1(a288)
          & ~ c2_1(a288)
          & c3_1(a288) ) )
      & ( ~ hskp32
        | ( ndr1_0
          & c2_1(a289)
          & c3_1(a289)
          & c0_1(a289) ) )
      & ( ~ hskp33
        | ( ndr1_0
          & c1_1(a293)
          & ~ c2_1(a293)
          & c0_1(a293) ) )
      & ( ~ hskp34
        | ( ndr1_0
          & ~ c3_1(a296)
          & c2_1(a296)
          & c1_1(a296) ) )
      & ( ~ hskp35
        | ( ndr1_0
          & ~ c0_1(a298)
          & ~ c3_1(a298)
          & c2_1(a298) ) )
      & ( ~ hskp36
        | ( ndr1_0
          & c1_1(a302)
          & c0_1(a302)
          & c3_1(a302) ) )
      & ( ~ hskp37
        | ( ndr1_0
          & c0_1(a303)
          & c1_1(a303)
          & c2_1(a303) ) )
      & ( ~ hskp38
        | ( ndr1_0
          & ~ c2_1(a304)
          & c0_1(a304)
          & c1_1(a304) ) )
      & ( ~ hskp39
        | ( ndr1_0
          & ~ c2_1(a305)
          & ~ c1_1(a305)
          & c0_1(a305) ) )
      & ( ~ hskp40
        | ( ndr1_0
          & c2_1(a307)
          & ~ c0_1(a307)
          & c1_1(a307) ) )
      & ( ~ hskp41
        | ( ndr1_0
          & c1_1(a315)
          & c3_1(a315)
          & c2_1(a315) ) )
      & ( ~ hskp42
        | ( ndr1_0
          & ~ c1_1(a316)
          & ~ c3_1(a316)
          & c0_1(a316) ) )
      & ( ~ hskp43
        | ( ndr1_0
          & ~ c2_1(a325)
          & c1_1(a325)
          & c3_1(a325) ) )
      & ( ~ hskp44
        | ( ndr1_0
          & c2_1(a330)
          & ~ c3_1(a330)
          & c0_1(a330) ) )
      & ( ~ hskp45
        | ( ndr1_0
          & c1_1(a331)
          & ~ c3_1(a331)
          & c2_1(a331) ) )
      & ( ~ hskp46
        | ( ndr1_0
          & ~ c3_1(a334)
          & ~ c0_1(a334)
          & c2_1(a334) ) )
      & ( ~ hskp47
        | ( ndr1_0
          & ~ c0_1(a335)
          & ~ c2_1(a335)
          & c1_1(a335) ) )
      & ( ~ hskp48
        | ( ndr1_0
          & ~ c3_1(a340)
          & c1_1(a340)
          & c2_1(a340) ) )
      & ( ~ hskp49
        | ( ndr1_0
          & c3_1(a342)
          & ~ c1_1(a342)
          & c0_1(a342) ) )
      & ( ~ hskp50
        | ( ndr1_0
          & c0_1(a343)
          & c1_1(a343)
          & c3_1(a343) ) )
      & ( ~ hskp51
        | ( ndr1_0
          & c0_1(a344)
          & ~ c1_1(a344)
          & c3_1(a344) ) )
      & ( ~ hskp52
        | ( ndr1_0
          & ~ c0_1(a345)
          & c2_1(a345)
          & c1_1(a345) ) )
      & ( ! [U] :
            ( ndr1_0
           => ( c3_1(U)
              | ~ c0_1(U)
              | c2_1(U) ) )
        | hskp0
        | ! [V] :
            ( ndr1_0
           => ( c1_1(V)
              | c0_1(V)
              | c3_1(V) ) ) )
      & ( hskp1
        | hskp27
        | hskp28 )
      & ( hskp29
        | hskp30
        | ! [W] :
            ( ndr1_0
           => ( c2_1(W)
              | ~ c3_1(W)
              | ~ c1_1(W) ) ) )
      & ( ! [X] :
            ( ndr1_0
           => ( ~ c2_1(X)
              | ~ c1_1(X)
              | ~ c0_1(X) ) )
        | hskp31
        | ! [Y] :
            ( ndr1_0
           => ( c1_1(Y)
              | ~ c2_1(Y)
              | ~ c3_1(Y) ) ) )
      & ( hskp32
        | hskp2
        | ! [Z] :
            ( ndr1_0
           => ( c3_1(Z)
              | c0_1(Z)
              | ~ c2_1(Z) ) ) )
      & ( ! [X1] :
            ( ndr1_0
           => ( c2_1(X1)
              | ~ c3_1(X1)
              | ~ c1_1(X1) ) )
        | hskp3
        | hskp4 )
      & ( hskp33
        | ! [X2] :
            ( ndr1_0
           => ( ~ c0_1(X2)
              | ~ c2_1(X2)
              | ~ c1_1(X2) ) )
        | hskp5 )
      & ( hskp33
        | hskp34
        | ! [X3] :
            ( ndr1_0
           => ( c2_1(X3)
              | c1_1(X3)
              | c0_1(X3) ) ) )
      & ( ! [X4] :
            ( ndr1_0
           => ( ~ c2_1(X4)
              | c0_1(X4)
              | ~ c3_1(X4) ) )
        | ! [X5] :
            ( ndr1_0
           => ( c1_1(X5)
              | ~ c2_1(X5)
              | c3_1(X5) ) )
        | ! [X6] :
            ( ndr1_0
           => ( ~ c2_1(X6)
              | ~ c0_1(X6)
              | c1_1(X6) ) ) )
      & ( ! [X7] :
            ( ndr1_0
           => ( ~ c2_1(X7)
              | c3_1(X7)
              | ~ c1_1(X7) ) )
        | ! [X8] :
            ( ndr1_0
           => ( c2_1(X8)
              | ~ c0_1(X8)
              | ~ c3_1(X8) ) )
        | hskp6 )
      & ( ! [X9] :
            ( ndr1_0
           => ( c1_1(X9)
              | c3_1(X9)
              | ~ c0_1(X9) ) )
        | ! [X10] :
            ( ndr1_0
           => ( ~ c2_1(X10)
              | ~ c1_1(X10)
              | ~ c3_1(X10) ) )
        | hskp35 )
      & ( ! [X11] :
            ( ndr1_0
           => ( ~ c2_1(X11)
              | ~ c0_1(X11)
              | ~ c1_1(X11) ) )
        | hskp7
        | ! [X12] :
            ( ndr1_0
           => ( ~ c0_1(X12)
              | c1_1(X12)
              | ~ c3_1(X12) ) ) )
      & ( ! [X13] :
            ( ndr1_0
           => ( ~ c1_1(X13)
              | c3_1(X13)
              | ~ c0_1(X13) ) )
        | ! [X14] :
            ( ndr1_0
           => ( c3_1(X14)
              | c1_1(X14)
              | ~ c2_1(X14) ) )
        | hskp8 )
      & ( hskp9
        | ! [X15] :
            ( ndr1_0
           => ( ~ c0_1(X15)
              | c3_1(X15)
              | ~ c1_1(X15) ) )
        | ! [X16] :
            ( ndr1_0
           => ( ~ c0_1(X16)
              | c3_1(X16)
              | c2_1(X16) ) ) )
      & ( hskp36
        | ! [X17] :
            ( ndr1_0
           => ( ~ c3_1(X17)
              | ~ c0_1(X17)
              | c2_1(X17) ) )
        | ! [X18] :
            ( ndr1_0
           => ( c0_1(X18)
              | ~ c2_1(X18)
              | c1_1(X18) ) ) )
      & ( hskp37
        | hskp38
        | ! [X19] :
            ( ndr1_0
           => ( c0_1(X19)
              | c2_1(X19)
              | ~ c1_1(X19) ) ) )
      & ( hskp39
        | hskp10
        | ! [X20] :
            ( ndr1_0
           => ( ~ c3_1(X20)
              | c2_1(X20)
              | ~ c1_1(X20) ) ) )
      & ( hskp40
        | ! [X21] :
            ( ndr1_0
           => ( ~ c2_1(X21)
              | ~ c0_1(X21)
              | ~ c1_1(X21) ) )
        | ! [X22] :
            ( ndr1_0
           => ( c3_1(X22)
              | c0_1(X22)
              | c1_1(X22) ) ) )
      & ( ! [X23] :
            ( ndr1_0
           => ( c3_1(X23)
              | c0_1(X23)
              | c1_1(X23) ) )
        | hskp30
        | hskp11 )
      & ( hskp12
        | ! [X24] :
            ( ndr1_0
           => ( c0_1(X24)
              | ~ c3_1(X24)
              | ~ c1_1(X24) ) )
        | ! [X25] :
            ( ndr1_0
           => ( c0_1(X25)
              | c1_1(X25)
              | ~ c3_1(X25) ) ) )
      & ( hskp13
        | ! [X26] :
            ( ndr1_0
           => ( c2_1(X26)
              | c1_1(X26)
              | ~ c3_1(X26) ) )
        | hskp14 )
      & ( hskp15
        | ! [X27] :
            ( ndr1_0
           => ( c2_1(X27)
              | ~ c1_1(X27)
              | ~ c3_1(X27) ) )
        | hskp13 )
      & ( hskp41
        | hskp42
        | ! [X28] :
            ( ndr1_0
           => ( c0_1(X28)
              | ~ c2_1(X28)
              | c1_1(X28) ) ) )
      & ( ! [X29] :
            ( ndr1_0
           => ( c0_1(X29)
              | c2_1(X29)
              | ~ c1_1(X29) ) )
        | hskp16
        | ! [X30] :
            ( ndr1_0
           => ( ~ c0_1(X30)
              | c2_1(X30)
              | c3_1(X30) ) ) )
      & ( hskp17
        | hskp18
        | ! [X31] :
            ( ndr1_0
           => ( ~ c1_1(X31)
              | ~ c3_1(X31)
              | c0_1(X31) ) ) )
      & ( ! [X32] :
            ( ndr1_0
           => ( ~ c1_1(X32)
              | c3_1(X32)
              | c2_1(X32) ) )
        | ! [X33] :
            ( ndr1_0
           => ( c3_1(X33)
              | ~ c1_1(X33)
              | c0_1(X33) ) )
        | hskp4 )
      & ( ! [X34] :
            ( ndr1_0
           => ( c2_1(X34)
              | c1_1(X34)
              | c0_1(X34) ) )
        | ! [X35] :
            ( ndr1_0
           => ( c2_1(X35)
              | c3_1(X35)
              | c0_1(X35) ) )
        | hskp13 )
      & ( hskp19
        | hskp18
        | hskp20 )
      & ( hskp43
        | hskp21
        | hskp22 )
      & ( hskp43
        | hskp42
        | hskp44 )
      & ( hskp45
        | hskp18
        | hskp23 )
      & ( hskp46
        | hskp47
        | hskp24 )
      & ( hskp25
        | ! [X36] :
            ( ndr1_0
           => ( c3_1(X36)
              | c0_1(X36)
              | ~ c1_1(X36) ) )
        | ! [X37] :
            ( ndr1_0
           => ( c1_1(X37)
              | ~ c3_1(X37)
              | ~ c2_1(X37) ) ) )
      & ( ! [X38] :
            ( ndr1_0
           => ( c1_1(X38)
              | ~ c2_1(X38)
              | c3_1(X38) ) )
        | hskp7
        | ! [X39] :
            ( ndr1_0
           => ( ~ c3_1(X39)
              | ~ c0_1(X39)
              | ~ c2_1(X39) ) ) )
      & ( hskp19
        | ! [X40] :
            ( ndr1_0
           => ( ~ c3_1(X40)
              | ~ c0_1(X40)
              | ~ c2_1(X40) ) )
        | hskp48 )
      & ( hskp45
        | ! [X41] :
            ( ndr1_0
           => ( ~ c0_1(X41)
              | ~ c1_1(X41)
              | ~ c2_1(X41) ) )
        | hskp49 )
      & ( hskp50
        | hskp51 )
      & ( ! [X42] :
            ( ndr1_0
           => ( ~ c3_1(X42)
              | c0_1(X42)
              | ~ c1_1(X42) ) )
        | hskp52
        | ! [X43] :
            ( ndr1_0
           => ( c0_1(X43)
              | ~ c3_1(X43)
              | ~ c1_1(X43) ) ) )
      & ( ! [X44] :
            ( ndr1_0
           => ( ~ c2_1(X44)
              | c0_1(X44)
              | ~ c1_1(X44) ) )
        | ! [X45] :
            ( ndr1_0
           => ( ~ c3_1(X45)
              | ~ c0_1(X45)
              | ~ c1_1(X45) ) )
        | ! [X46] :
            ( ndr1_0
           => ( ~ c2_1(X46)
              | ~ c3_1(X46)
              | c0_1(X46) ) ) )
      & ( ! [X47] :
            ( ndr1_0
           => ( ~ c3_1(X47)
              | ~ c0_1(X47)
              | c1_1(X47) ) )
        | hskp41
        | hskp26 ) ) ).

%--------------------------------------------------------------------------
