%--------------------------------------------------------------------------
% File     : SYN524+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=20, K=3, D=2, P=0, Index=086
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-20-3-2-086.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  216 (   0 equ)
%            Maximal formula atoms :  216 ( 216 avg)
%            Number of connectives :  291 (  76   ~;  85   |;  99   &)
%                                         (   0 <=>;  31  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   28 (  28 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   31 (  31 usr;  31 con; 0-0 aty)
%            Number of variables   :   31 (  31   !;   0   ?)
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
    ~ ( ( ! [U] :
            ( ndr1_0
           => ( ( ndr1_1(U)
                & ~ c3_2(U,a157)
                & c2_2(U,a157) )
              | ~ c5_1(U)
              | ! [V] :
                  ( ndr1_1(U)
                 => ( c1_2(U,V)
                    | c5_2(U,V) ) ) ) )
        | c1_0
        | ( ndr1_0
          & c3_1(a158)
          & c5_1(a158)
          & ! [W] :
              ( ndr1_1(a158)
             => ( c1_2(a158,W)
                | c5_2(a158,W)
                | c4_2(a158,W) ) ) ) )
      & ( ~ c1_0
        | ( ndr1_0
          & ~ c2_1(a159)
          & ~ c3_1(a159)
          & ndr1_1(a159)
          & ~ c3_2(a159,a160)
          & ~ c5_2(a159,a160) )
        | ! [X] :
            ( ndr1_0
           => ( c1_1(X)
              | c3_1(X)
              | ! [Y] :
                  ( ndr1_1(X)
                 => ( ~ c5_2(X,Y)
                    | c2_2(X,Y) ) ) ) ) )
      & ( ( ndr1_0
          & ~ c3_1(a161)
          & ndr1_1(a161)
          & c3_2(a161,a162)
          & c5_2(a161,a162)
          & c1_2(a161,a162)
          & c4_1(a161) )
        | ! [Z] :
            ( ndr1_0
           => ( c2_1(Z)
              | ! [X1] :
                  ( ndr1_1(Z)
                 => ( ~ c4_2(Z,X1)
                    | ~ c1_2(Z,X1) ) )
              | c1_1(Z) ) )
        | ( ndr1_0
          & c3_1(a163)
          & ndr1_1(a163)
          & ~ c1_2(a163,a164)
          & c5_2(a163,a164)
          & ~ c3_2(a163,a164)
          & ~ c2_1(a163) ) )
      & ( ~ c5_0
        | ( ndr1_0
          & c1_1(a165)
          & ndr1_1(a165)
          & c1_2(a165,a166)
          & c3_2(a165,a166)
          & ~ c5_2(a165,a166)
          & ! [X2] :
              ( ndr1_1(a165)
             => ( c5_2(a165,X2)
                | ~ c3_2(a165,X2)
                | c4_2(a165,X2) ) ) ) )
      & ( ~ c2_0
        | ! [X3] :
            ( ndr1_0
           => ( ~ c5_1(X3)
              | ~ c2_1(X3)
              | c1_1(X3) ) )
        | ( ndr1_0
          & ! [X4] :
              ( ndr1_1(a167)
             => ( ~ c2_2(a167,X4)
                | ~ c1_2(a167,X4)
                | c4_2(a167,X4) ) )
          & ! [X5] :
              ( ndr1_1(a167)
             => ( ~ c3_2(a167,X5)
                | ~ c1_2(a167,X5) ) )
          & ndr1_1(a167)
          & c2_2(a167,a168)
          & c3_2(a167,a168)
          & c4_2(a167,a168) ) )
      & ( ( ndr1_0
          & c3_1(a169)
          & ! [X6] :
              ( ndr1_1(a169)
             => ( c2_2(a169,X6)
                | c3_2(a169,X6)
                | c5_2(a169,X6) ) ) )
        | ( ndr1_0
          & ~ c1_1(a170)
          & ~ c3_1(a170) )
        | ( ndr1_0
          & ~ c4_1(a171)
          & ndr1_1(a171)
          & ~ c1_2(a171,a172)
          & c3_2(a171,a172)
          & ! [X7] :
              ( ndr1_1(a171)
             => ( ~ c4_2(a171,X7)
                | ~ c5_2(a171,X7) ) ) ) )
      & ( ~ c5_0
        | ! [X8] :
            ( ndr1_0
           => ( ndr1_1(X8)
              & ~ c5_2(X8,a173)
              & ~ c3_2(X8,a173) ) )
        | ! [X9] :
            ( ndr1_0
           => ( ! [X10] :
                  ( ndr1_1(X9)
                 => ( c2_2(X9,X10)
                    | c5_2(X9,X10)
                    | c4_2(X9,X10) ) )
              | ~ c2_1(X9)
              | ~ c5_1(X9) ) ) )
      & ( c3_0
        | ~ c4_0
        | c2_0 )
      & ( ~ c4_0
        | ! [X11] :
            ( ndr1_0
           => ( c1_1(X11)
              | ~ c3_1(X11)
              | ( ndr1_1(X11)
                & ~ c2_2(X11,a174)
                & ~ c5_2(X11,a174)
                & ~ c1_2(X11,a174) ) ) )
        | ( ndr1_0
          & c1_1(a175)
          & c2_1(a175)
          & ! [X12] :
              ( ndr1_1(a175)
             => ( c2_2(a175,X12)
                | ~ c3_2(a175,X12)
                | c4_2(a175,X12) ) ) ) )
      & ( ! [X13] :
            ( ndr1_0
           => ( c4_1(X13)
              | ~ c5_1(X13)
              | ~ c2_1(X13) ) )
        | c3_0
        | ! [X14] :
            ( ndr1_0
           => ( ( ndr1_1(X14)
                & ~ c4_2(X14,a176)
                & c2_2(X14,a176) )
              | ( ndr1_1(X14)
                & c2_2(X14,a177)
                & c4_2(X14,a177)
                & c3_2(X14,a177) )
              | ~ c1_1(X14) ) ) )
      & ( ~ c2_0
        | ( ndr1_0
          & c4_1(a178)
          & ndr1_1(a178)
          & ~ c4_2(a178,a179)
          & c5_2(a178,a179)
          & ! [X15] :
              ( ndr1_1(a178)
             => ( c4_2(a178,X15)
                | c3_2(a178,X15) ) ) )
        | ~ c3_0 )
      & ( ~ c2_0
        | ~ c3_0
        | ! [X16] :
            ( ndr1_0
           => ( ~ c4_1(X16)
              | ~ c5_1(X16)
              | ~ c3_1(X16) ) ) )
      & ( ( ndr1_0
          & c2_1(a180)
          & ! [X17] :
              ( ndr1_1(a180)
             => ( ~ c5_2(a180,X17)
                | c4_2(a180,X17)
                | ~ c1_2(a180,X17) ) )
          & c3_1(a180) )
        | ~ c3_0 )
      & ( ( ndr1_0
          & ~ c4_1(a181)
          & ! [X18] :
              ( ndr1_1(a181)
             => ( ~ c1_2(a181,X18)
                | c5_2(a181,X18)
                | c3_2(a181,X18) ) )
          & c1_1(a181) )
        | c4_0
        | c2_0 )
      & ( c3_0
        | ! [X19] :
            ( ndr1_0
           => ( ~ c1_1(X19)
              | ~ c4_1(X19)
              | ! [X20] :
                  ( ndr1_1(X19)
                 => ( ~ c4_2(X19,X20)
                    | ~ c3_2(X19,X20)
                    | ~ c1_2(X19,X20) ) ) ) )
        | ! [X21] :
            ( ndr1_0
           => ( c1_1(X21)
              | ( ndr1_1(X21)
                & ~ c3_2(X21,a182)
                & ~ c2_2(X21,a182)
                & c5_2(X21,a182) )
              | ! [X22] :
                  ( ndr1_1(X21)
                 => ( c2_2(X21,X22)
                    | c1_2(X21,X22)
                    | ~ c3_2(X21,X22) ) ) ) ) )
      & ( c1_0
        | c5_0
        | ( ndr1_0
          & ndr1_1(a183)
          & c1_2(a183,a184)
          & ~ c5_2(a183,a184)
          & c2_1(a183)
          & ! [X23] :
              ( ndr1_1(a183)
             => ( c3_2(a183,X23)
                | c2_2(a183,X23) ) ) ) )
      & ( c3_0
        | ! [X24] :
            ( ndr1_0
           => ( ( ndr1_1(X24)
                & ~ c2_2(X24,a185)
                & ~ c3_2(X24,a185) )
              | ~ c3_1(X24)
              | ( ndr1_1(X24)
                & ~ c1_2(X24,a186)
                & c4_2(X24,a186) ) ) ) )
      & ( ! [X25] :
            ( ndr1_0
           => ( ( ndr1_1(X25)
                & c1_2(X25,a187)
                & ~ c5_2(X25,a187)
                & c2_2(X25,a187) )
              | ~ c2_1(X25) ) )
        | ~ c1_0
        | c5_0 ) ) ).

%--------------------------------------------------------------------------
