%--------------------------------------------------------------------------
% File     : SYN433+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=20, K=3, D=1, P=0, Index=036
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-20-3-1-036.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.1.0, 0.17 v2.6.0, 0.00 v2.4.0, 0.33 v2.3.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  289 (   0 equ)
%            Maximal formula atoms :  289 ( 289 avg)
%            Number of connectives :  394 ( 106   ~; 132   |; 123   &)
%                                         (   0 <=>;  33  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   54 (  54 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   31 (  31 usr;  27 prp; 0-1 aty)
%            Number of functors    :   26 (  26 usr;  26 con; 0-0 aty)
%            Number of variables   :   33 (  33   !;   0   ?)
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
          & c1_1(a197)
          & ~ c3_1(a197)
          & ~ c0_1(a197) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & c3_1(a198)
          & c0_1(a198)
          & ~ c1_1(a198) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & c2_1(a202)
          & c0_1(a202)
          & ~ c3_1(a202) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & ~ c2_1(a205)
          & c0_1(a205)
          & ~ c1_1(a205) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & c0_1(a207)
          & ~ c3_1(a207)
          & ~ c1_1(a207) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & ~ c3_1(a210)
          & ~ c2_1(a210)
          & ~ c1_1(a210) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & c2_1(a211)
          & ~ c3_1(a211)
          & ~ c0_1(a211) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & c1_1(a212)
          & ~ c0_1(a212)
          & ~ c3_1(a212) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & ~ c3_1(a213)
          & c2_1(a213)
          & ~ c0_1(a213) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & ~ c2_1(a215)
          & ~ c1_1(a215)
          & ~ c0_1(a215) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & ~ c3_1(a217)
          & c0_1(a217)
          & ~ c1_1(a217) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & ~ c1_1(a221)
          & ~ c2_1(a221)
          & ~ c3_1(a221) ) )
      & ( ~ hskp12
        | ( ndr1_0
          & c3_1(a222)
          & c0_1(a222)
          & ~ c2_1(a222) ) )
      & ( ~ hskp13
        | ( ndr1_0
          & ~ c2_1(a196)
          & ~ c0_1(a196)
          & c3_1(a196) ) )
      & ( ~ hskp14
        | ( ndr1_0
          & ~ c2_1(a199)
          & c0_1(a199)
          & c3_1(a199) ) )
      & ( ~ hskp15
        | ( ndr1_0
          & ~ c0_1(a200)
          & c2_1(a200)
          & c3_1(a200) ) )
      & ( ~ hskp16
        | ( ndr1_0
          & c3_1(a203)
          & ~ c1_1(a203)
          & c0_1(a203) ) )
      & ( ~ hskp17
        | ( ndr1_0
          & c2_1(a204)
          & ~ c0_1(a204)
          & c3_1(a204) ) )
      & ( ~ hskp18
        | ( ndr1_0
          & c1_1(a206)
          & c3_1(a206)
          & c0_1(a206) ) )
      & ( ~ hskp19
        | ( ndr1_0
          & c2_1(a208)
          & c0_1(a208)
          & c1_1(a208) ) )
      & ( ~ hskp20
        | ( ndr1_0
          & c0_1(a209)
          & ~ c2_1(a209)
          & c1_1(a209) ) )
      & ( ~ hskp21
        | ( ndr1_0
          & c2_1(a214)
          & ~ c3_1(a214)
          & c0_1(a214) ) )
      & ( ~ hskp22
        | ( ndr1_0
          & c2_1(a216)
          & c3_1(a216)
          & c0_1(a216) ) )
      & ( ~ hskp23
        | ( ndr1_0
          & c2_1(a218)
          & c0_1(a218)
          & c3_1(a218) ) )
      & ( ~ hskp24
        | ( ndr1_0
          & c2_1(a219)
          & c1_1(a219)
          & c0_1(a219) ) )
      & ( ~ hskp25
        | ( ndr1_0
          & c1_1(a220)
          & c2_1(a220)
          & c0_1(a220) ) )
      & ( hskp13
        | ! [U] :
            ( ndr1_0
           => ( c3_1(U)
              | c2_1(U)
              | c0_1(U) ) )
        | hskp0 )
      & ( ! [V] :
            ( ndr1_0
           => ( c3_1(V)
              | ~ c0_1(V)
              | ~ c1_1(V) ) )
        | ! [W] :
            ( ndr1_0
           => ( ~ c3_1(W)
              | c2_1(W)
              | ~ c1_1(W) ) )
        | hskp1 )
      & ( ! [X] :
            ( ndr1_0
           => ( ~ c2_1(X)
              | ~ c0_1(X)
              | ~ c1_1(X) ) )
        | ! [Y] :
            ( ndr1_0
           => ( c2_1(Y)
              | c1_1(Y)
              | ~ c0_1(Y) ) )
        | hskp14 )
      & ( ! [Z] :
            ( ndr1_0
           => ( c0_1(Z)
              | c3_1(Z)
              | c2_1(Z) ) )
        | hskp15
        | ! [X1] :
            ( ndr1_0
           => ( ~ c1_1(X1)
              | ~ c0_1(X1)
              | ~ c3_1(X1) ) ) )
      & ( hskp0
        | ! [X2] :
            ( ndr1_0
           => ( ~ c3_1(X2)
              | ~ c2_1(X2)
              | c0_1(X2) ) )
        | ! [X3] :
            ( ndr1_0
           => ( c0_1(X3)
              | ~ c3_1(X3)
              | c2_1(X3) ) ) )
      & ( hskp2
        | hskp16
        | hskp17 )
      & ( ! [X4] :
            ( ndr1_0
           => ( c2_1(X4)
              | c0_1(X4)
              | c1_1(X4) ) )
        | ! [X5] :
            ( ndr1_0
           => ( c3_1(X5)
              | ~ c0_1(X5)
              | c1_1(X5) ) )
        | ! [X6] :
            ( ndr1_0
           => ( c1_1(X6)
              | c2_1(X6)
              | c3_1(X6) ) ) )
      & ( ! [X7] :
            ( ndr1_0
           => ( c3_1(X7)
              | c0_1(X7)
              | ~ c1_1(X7) ) )
        | ! [X8] :
            ( ndr1_0
           => ( ~ c2_1(X8)
              | ~ c3_1(X8)
              | ~ c1_1(X8) ) )
        | ! [X9] :
            ( ndr1_0
           => ( c1_1(X9)
              | c3_1(X9)
              | ~ c0_1(X9) ) ) )
      & ( hskp3
        | hskp18
        | hskp4 )
      & ( ! [X10] :
            ( ndr1_0
           => ( c0_1(X10)
              | c2_1(X10)
              | ~ c1_1(X10) ) )
        | ! [X11] :
            ( ndr1_0
           => ( ~ c0_1(X11)
              | ~ c2_1(X11)
              | c1_1(X11) ) )
        | hskp19 )
      & ( hskp20
        | hskp5
        | ! [X12] :
            ( ndr1_0
           => ( c2_1(X12)
              | c3_1(X12)
              | ~ c0_1(X12) ) ) )
      & ( hskp6
        | hskp7
        | ! [X13] :
            ( ndr1_0
           => ( c1_1(X13)
              | ~ c3_1(X13)
              | c0_1(X13) ) ) )
      & ( ! [X14] :
            ( ndr1_0
           => ( c0_1(X14)
              | c1_1(X14)
              | ~ c3_1(X14) ) )
        | ! [X15] :
            ( ndr1_0
           => ( c0_1(X15)
              | ~ c2_1(X15)
              | c1_1(X15) ) )
        | ! [X16] :
            ( ndr1_0
           => ( ~ c0_1(X16)
              | ~ c3_1(X16)
              | ~ c2_1(X16) ) ) )
      & ( hskp8
        | hskp21
        | hskp9 )
      & ( ! [X17] :
            ( ndr1_0
           => ( c2_1(X17)
              | ~ c0_1(X17)
              | c3_1(X17) ) )
        | ! [X18] :
            ( ndr1_0
           => ( ~ c0_1(X18)
              | c1_1(X18)
              | ~ c3_1(X18) ) )
        | hskp22 )
      & ( ! [X19] :
            ( ndr1_0
           => ( ~ c0_1(X19)
              | ~ c3_1(X19)
              | c1_1(X19) ) )
        | ! [X20] :
            ( ndr1_0
           => ( ~ c2_1(X20)
              | ~ c0_1(X20)
              | c1_1(X20) ) )
        | ! [X21] :
            ( ndr1_0
           => ( c1_1(X21)
              | c3_1(X21)
              | ~ c0_1(X21) ) ) )
      & ( ! [X22] :
            ( ndr1_0
           => ( c0_1(X22)
              | ~ c2_1(X22)
              | c3_1(X22) ) )
        | hskp10
        | ! [X23] :
            ( ndr1_0
           => ( c1_1(X23)
              | ~ c2_1(X23)
              | c0_1(X23) ) ) )
      & ( hskp23
        | hskp24
        | ! [X24] :
            ( ndr1_0
           => ( c0_1(X24)
              | c1_1(X24)
              | c3_1(X24) ) ) )
      & ( hskp25
        | ! [X25] :
            ( ndr1_0
           => ( c1_1(X25)
              | ~ c2_1(X25)
              | ~ c0_1(X25) ) )
        | hskp11 )
      & ( ! [X26] :
            ( ndr1_0
           => ( c1_1(X26)
              | c0_1(X26)
              | c2_1(X26) ) )
        | ! [X27] :
            ( ndr1_0
           => ( ~ c2_1(X27)
              | ~ c3_1(X27)
              | ~ c1_1(X27) ) )
        | hskp12 ) ) ).

%--------------------------------------------------------------------------
