%--------------------------------------------------------------------------
% File     : SYN525+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=20, K=3, D=2, P=0, Index=094
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-20-3-2-094.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.0.0, 0.17 v5.5.0, 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  196 (   0 equ)
%            Maximal formula atoms :  196 ( 196 avg)
%            Number of connectives :  262 (  67   ~;  70   |; 100   &)
%                                         (   0 <=>;  25  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   26 (  26 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   30 (  30 usr;  30 con; 0-0 aty)
%            Number of variables   :   25 (  25   !;   0   ?)
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
          & c3_1(a188)
          & ndr1_1(a188)
          & ~ c4_2(a188,a189)
          & c3_2(a188,a189)
          & c5_2(a188,a189)
          & ! [U] :
              ( ndr1_1(a188)
             => ( ~ c3_2(a188,U)
                | c1_2(a188,U)
                | ~ c4_2(a188,U) ) ) )
        | ~ c4_0
        | ( ndr1_0
          & ! [V] :
              ( ndr1_1(a190)
             => ( c3_2(a190,V)
                | c5_2(a190,V) ) )
          & c4_1(a190)
          & ~ c2_1(a190) ) )
      & ( ( ndr1_0
          & ~ c3_1(a191)
          & c5_1(a191)
          & c2_1(a191) )
        | ( ndr1_0
          & ndr1_1(a192)
          & ~ c1_2(a192,a193)
          & ~ c4_2(a192,a193)
          & c5_2(a192,a193)
          & ~ c5_1(a192)
          & ndr1_1(a192)
          & c3_2(a192,a194)
          & c5_2(a192,a194) )
        | c1_0 )
      & ( ( ndr1_0
          & ~ c2_1(a195)
          & ~ c1_1(a195)
          & ! [W] :
              ( ndr1_1(a195)
             => ( c2_2(a195,W)
                | c3_2(a195,W)
                | c1_2(a195,W) ) ) )
        | ( ndr1_0
          & ! [X] :
              ( ndr1_1(a196)
             => ( ~ c4_2(a196,X)
                | ~ c1_2(a196,X)
                | ~ c3_2(a196,X) ) )
          & ! [Y] :
              ( ndr1_1(a196)
             => ( c5_2(a196,Y)
                | c1_2(a196,Y) ) )
          & c4_1(a196) ) )
      & ( ! [Z] :
            ( ndr1_0
           => ( ( ndr1_1(Z)
                & c1_2(Z,a197)
                & c4_2(Z,a197) )
              | c3_1(Z)
              | ( ndr1_1(Z)
                & ~ c2_2(Z,a198)
                & ~ c4_2(Z,a198)
                & ~ c3_2(Z,a198) ) ) )
        | ~ c4_0
        | ! [X1] :
            ( ndr1_0
           => ( ~ c1_1(X1)
              | ~ c5_1(X1) ) ) )
      & ( ( ndr1_0
          & ~ c2_1(a199)
          & ~ c5_1(a199)
          & c3_1(a199) )
        | ~ c2_0
        | ~ c5_0 )
      & ( c4_0
        | ( ndr1_0
          & ! [X2] :
              ( ndr1_1(a200)
             => ( ~ c2_2(a200,X2)
                | c1_2(a200,X2)
                | c4_2(a200,X2) ) )
          & c3_1(a200)
          & ! [X3] :
              ( ndr1_1(a200)
             => ( c3_2(a200,X3)
                | c5_2(a200,X3)
                | ~ c1_2(a200,X3) ) ) )
        | ( ndr1_0
          & ! [X4] :
              ( ndr1_1(a201)
             => ( ~ c2_2(a201,X4)
                | ~ c1_2(a201,X4)
                | c5_2(a201,X4) ) )
          & ~ c5_1(a201)
          & c2_1(a201) ) )
      & ( c4_0
        | ( ndr1_0
          & ~ c2_1(a202)
          & ~ c3_1(a202) )
        | ( ndr1_0
          & c2_1(a203)
          & ! [X5] :
              ( ndr1_1(a203)
             => ~ c4_2(a203,X5) )
          & ndr1_1(a203)
          & c2_2(a203,a204)
          & c5_2(a203,a204)
          & ~ c3_2(a203,a204) ) )
      & ( ! [X6] :
            ( ndr1_0
           => ( c2_1(X6)
              | ~ c4_1(X6)
              | ( ndr1_1(X6)
                & c4_2(X6,a205)
                & ~ c5_2(X6,a205)
                & ~ c2_2(X6,a205) ) ) )
        | c3_0
        | ! [X7] :
            ( ndr1_0
           => ( c2_1(X7)
              | ~ c1_1(X7)
              | ~ c3_1(X7) ) ) )
      & ( c2_0
        | ( ndr1_0
          & c1_1(a206)
          & ndr1_1(a206)
          & c2_2(a206,a207)
          & ~ c4_2(a206,a207)
          & ndr1_1(a206)
          & c3_2(a206,a208)
          & ~ c2_2(a206,a208)
          & ~ c1_2(a206,a208) )
        | ~ c5_0 )
      & ( ~ c2_0
        | ! [X8] :
            ( ndr1_0
           => ( ( ndr1_1(X8)
                & ~ c4_2(X8,a209)
                & ~ c5_2(X8,a209)
                & ~ c3_2(X8,a209) )
              | ~ c3_1(X8)
              | ! [X9] :
                  ( ndr1_1(X8)
                 => ( c3_2(X8,X9)
                    | c2_2(X8,X9)
                    | c4_2(X8,X9) ) ) ) ) )
      & ( ( ndr1_0
          & ! [X10] :
              ( ndr1_1(a210)
             => ( c3_2(a210,X10)
                | c4_2(a210,X10)
                | c2_2(a210,X10) ) )
          & c1_1(a210)
          & ndr1_1(a210)
          & ~ c3_2(a210,a211)
          & c4_2(a210,a211)
          & ~ c5_2(a210,a211) )
        | c5_0
        | ( ndr1_0
          & ndr1_1(a212)
          & c4_2(a212,a213)
          & ~ c1_2(a212,a213)
          & c3_2(a212,a213)
          & ~ c2_1(a212)
          & ndr1_1(a212)
          & ~ c4_2(a212,a214)
          & c1_2(a212,a214)
          & c5_2(a212,a214) ) )
      & ( ! [X11] :
            ( ndr1_0
           => ( ~ c3_1(X11)
              | ~ c4_1(X11)
              | c1_1(X11) ) )
        | ~ c2_0
        | c4_0 )
      & ( ( ndr1_0
          & ~ c5_1(a215)
          & ~ c3_1(a215) )
        | c3_0
        | ( ndr1_0
          & c1_1(a216)
          & c2_1(a216)
          & ~ c4_1(a216) ) )
      & ( ~ c4_0
        | ! [X12] :
            ( ndr1_0
           => ( ~ c3_1(X12)
              | c1_1(X12) ) )
        | ! [X13] :
            ( ndr1_0
           => ( c3_1(X13)
              | c2_1(X13)
              | ! [X14] :
                  ( ndr1_1(X13)
                 => ( c4_2(X13,X14)
                    | ~ c3_2(X13,X14) ) ) ) ) )
      & ( ! [X15] :
            ( ndr1_0
           => ( ! [X16] :
                  ( ndr1_1(X15)
                 => ( ~ c5_2(X15,X16)
                    | c1_2(X15,X16)
                    | c2_2(X15,X16) ) )
              | ( ndr1_1(X15)
                & ~ c4_2(X15,a217)
                & c5_2(X15,a217)
                & c1_2(X15,a217) )
              | c4_1(X15) ) )
        | ! [X17] :
            ( ndr1_0
           => ( ! [X18] :
                  ( ndr1_1(X17)
                 => ( c1_2(X17,X18)
                    | c5_2(X17,X18)
                    | c4_2(X17,X18) ) )
              | c1_1(X17) ) ) )
      & ( ~ c2_0
        | ! [X19] :
            ( ndr1_0
           => ( ~ c2_1(X19)
              | ~ c5_1(X19) ) )
        | c5_0 ) ) ).

%--------------------------------------------------------------------------
