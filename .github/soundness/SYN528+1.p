%--------------------------------------------------------------------------
% File     : SYN528+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=25, K=3, D=2, P=0, Index=029
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-25-3-2-029.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.7.0, 0.17 v2.6.0, 0.00 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  219 (   0 equ)
%            Maximal formula atoms :  219 ( 219 avg)
%            Number of connectives :  302 (  84   ~;  77   |; 115   &)
%                                         (   0 <=>;  26  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   29 (  29 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   37 (  37 usr;  37 con; 0-0 aty)
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
    ~ ( ( ( ndr1_0
          & ~ c4_1(a277)
          & c2_1(a277) )
        | c5_0
        | ~ c1_0 )
      & ( ~ c2_0
        | ! [U] :
            ( ndr1_0
           => ( ! [V] :
                  ( ndr1_1(U)
                 => ( ~ c4_2(U,V)
                    | ~ c5_2(U,V) ) )
              | ( ndr1_1(U)
                & ~ c2_2(U,a278)
                & ~ c5_2(U,a278)
                & ~ c4_2(U,a278) )
              | ! [W] :
                  ( ndr1_1(U)
                 => ( ~ c1_2(U,W)
                    | c2_2(U,W) ) ) ) )
        | ! [X] :
            ( ndr1_0
           => ( ~ c2_1(X)
              | ( ndr1_1(X)
                & ~ c3_2(X,a279)
                & c4_2(X,a279) ) ) ) )
      & ( c5_0
        | ! [Y] :
            ( ndr1_0
           => ( ( ndr1_1(Y)
                & c4_2(Y,a280)
                & c5_2(Y,a280) )
              | ! [Z] :
                  ( ndr1_1(Y)
                 => ( c3_2(Y,Z)
                    | c5_2(Y,Z)
                    | ~ c1_2(Y,Z) ) )
              | ~ c5_1(Y) ) )
        | ~ c3_0 )
      & ( ! [X1] :
            ( ndr1_0
           => ( ~ c1_1(X1)
              | ! [X2] :
                  ( ndr1_1(X1)
                 => ( ~ c4_2(X1,X2)
                    | ~ c2_2(X1,X2) ) )
              | ~ c4_1(X1) ) )
        | ( ndr1_0
          & ndr1_1(a281)
          & ~ c2_2(a281,a282)
          & ~ c5_2(a281,a282)
          & c3_2(a281,a282)
          & c5_1(a281)
          & ~ c4_1(a281) ) )
      & ( c5_0
        | ! [X3] :
            ( ndr1_0
           => ( ( ndr1_1(X3)
                & ~ c2_2(X3,a283)
                & ~ c4_2(X3,a283) )
              | ( ndr1_1(X3)
                & ~ c3_2(X3,a284)
                & ~ c1_2(X3,a284)
                & c4_2(X3,a284) )
              | ( ndr1_1(X3)
                & c1_2(X3,a285)
                & c3_2(X3,a285)
                & ~ c2_2(X3,a285) ) ) )
        | ( ndr1_0
          & ~ c2_1(a286)
          & ndr1_1(a286)
          & ~ c1_2(a286,a287)
          & ~ c4_2(a286,a287)
          & ! [X4] :
              ( ndr1_1(a286)
             => ( c5_2(a286,X4)
                | c2_2(a286,X4) ) ) ) )
      & ( c3_0
        | ~ c5_0
        | ( ndr1_0
          & ~ c1_1(a288)
          & ! [X5] :
              ( ndr1_1(a288)
             => ( c1_2(a288,X5)
                | c4_2(a288,X5)
                | c2_2(a288,X5) ) ) ) )
      & ( ! [X6] :
            ( ndr1_0
           => ( ( ndr1_1(X6)
                & ~ c2_2(X6,a289)
                & c4_2(X6,a289)
                & ~ c5_2(X6,a289) )
              | ( ndr1_1(X6)
                & ~ c4_2(X6,a290)
                & ~ c5_2(X6,a290) ) ) )
        | c1_0 )
      & ( ! [X7] :
            ( ndr1_0
           => ( ! [X8] :
                  ( ndr1_1(X7)
                 => ( ~ c4_2(X7,X8)
                    | c5_2(X7,X8) ) )
              | ~ c5_1(X7)
              | ~ c2_1(X7) ) )
        | ~ c1_0
        | ! [X9] :
            ( ndr1_0
           => ( ~ c2_1(X9)
              | ( ndr1_1(X9)
                & c1_2(X9,a291)
                & ~ c2_2(X9,a291)
                & ~ c5_2(X9,a291) ) ) ) )
      & ( ~ c3_0
        | ( ndr1_0
          & ~ c3_1(a292)
          & ! [X10] :
              ( ndr1_1(a292)
             => ( c2_2(a292,X10)
                | ~ c5_2(a292,X10)
                | ~ c3_2(a292,X10) ) )
          & ! [X11] :
              ( ndr1_1(a292)
             => ( c3_2(a292,X11)
                | ~ c2_2(a292,X11)
                | c4_2(a292,X11) ) ) )
        | ! [X12] :
            ( ndr1_0
           => ( c1_1(X12)
              | ~ c4_1(X12)
              | c3_1(X12) ) ) )
      & ( c3_0
        | c4_0
        | c1_0 )
      & ( c4_0
        | ( ndr1_0
          & c2_1(a293)
          & c5_1(a293) )
        | ~ c2_0 )
      & ( ( ndr1_0
          & ~ c1_1(a294)
          & ~ c4_1(a294)
          & c3_1(a294) )
        | ( ndr1_0
          & ~ c2_1(a295)
          & ! [X13] :
              ( ndr1_1(a295)
             => ( c4_2(a295,X13)
                | c5_2(a295,X13) ) )
          & ~ c1_1(a295) )
        | ( ndr1_0
          & c4_1(a296)
          & c3_1(a296) ) )
      & ( c3_0
        | ( ndr1_0
          & ndr1_1(a297)
          & ~ c1_2(a297,a298)
          & c2_2(a297,a298)
          & c3_2(a297,a298)
          & ndr1_1(a297)
          & ~ c2_2(a297,a299)
          & ~ c3_2(a297,a299)
          & ~ c4_2(a297,a299)
          & c2_1(a297) )
        | ~ c1_0 )
      & ( ! [X14] :
            ( ndr1_0
           => ( c4_1(X14)
              | c1_1(X14)
              | ! [X15] :
                  ( ndr1_1(X14)
                 => ( ~ c1_2(X14,X15)
                    | ~ c2_2(X14,X15) ) ) ) )
        | ~ c4_0
        | ( ndr1_0
          & c5_1(a300)
          & ndr1_1(a300)
          & ~ c1_2(a300,a301)
          & ~ c3_2(a300,a301)
          & ~ c4_2(a300,a301) ) )
      & ( ~ c4_0
        | ( ndr1_0
          & c5_1(a302)
          & ! [X16] :
              ( ndr1_1(a302)
             => ( ~ c2_2(a302,X16)
                | ~ c5_2(a302,X16) ) )
          & c2_1(a302) )
        | c1_0 )
      & ( ! [X17] :
            ( ndr1_0
           => ( ~ c5_1(X17)
              | ~ c2_1(X17)
              | ( ndr1_1(X17)
                & c4_2(X17,a303)
                & c2_2(X17,a303)
                & ~ c5_2(X17,a303) ) ) )
        | ( ndr1_0
          & ! [X18] :
              ( ndr1_1(a304)
             => ( ~ c5_2(a304,X18)
                | ~ c4_2(a304,X18)
                | c1_2(a304,X18) ) )
          & c5_1(a304) )
        | ~ c5_0 )
      & ( ! [X19] :
            ( ndr1_0
           => ( ( ndr1_1(X19)
                & c5_2(X19,a305)
                & c3_2(X19,a305)
                & c4_2(X19,a305) )
              | ~ c4_1(X19)
              | ( ndr1_1(X19)
                & c4_2(X19,a306)
                & ~ c2_2(X19,a306) ) ) )
        | ~ c3_0 )
      & ( c4_0
        | ( ndr1_0
          & ~ c3_1(a307)
          & ndr1_1(a307)
          & c5_2(a307,a308)
          & c3_2(a307,a308)
          & c4_2(a307,a308)
          & ~ c5_1(a307) )
        | ( ndr1_0
          & ndr1_1(a309)
          & c3_2(a309,a310)
          & ~ c2_2(a309,a310)
          & c2_1(a309)
          & c3_1(a309) ) )
      & ( ( ndr1_0
          & ! [X20] :
              ( ndr1_1(a311)
             => ( c5_2(a311,X20)
                | ~ c2_2(a311,X20) ) )
          & c2_1(a311)
          & ~ c3_1(a311) )
        | c4_0
        | ~ c5_0 )
      & ( c4_0
        | ( ndr1_0
          & c4_1(a312)
          & ~ c3_1(a312) )
        | ( ndr1_0
          & c3_1(a313)
          & c5_1(a313) ) ) ) ).

%--------------------------------------------------------------------------
