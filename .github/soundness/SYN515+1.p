%--------------------------------------------------------------------------
% File     : SYN515+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=15, K=3, D=2, P=0, Index=016
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-15-3-2-016.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.1.0, 0.17 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  178 (   0 equ)
%            Maximal formula atoms :  178 ( 178 avg)
%            Number of connectives :  248 (  71   ~;  68   |;  84   &)
%                                         (   0 <=>;  25  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   25 (  25 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   26 (  26 usr;  26 con; 0-0 aty)
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
    ~ ( ( ! [U] :
            ( ndr1_0
           => ( ( ndr1_1(U)
                & ~ c3_2(U,a1)
                & c5_2(U,a1)
                & ~ c1_2(U,a1) )
              | ( ndr1_1(U)
                & c3_2(U,a2)
                & ~ c5_2(U,a2) )
              | ~ c1_1(U) ) )
        | ~ c3_0
        | c5_0 )
      & ( ( ndr1_0
          & ! [V] :
              ( ndr1_1(a3)
             => ( ~ c5_2(a3,V)
                | ~ c1_2(a3,V)
                | c3_2(a3,V) ) )
          & ~ c5_1(a3)
          & ~ c3_1(a3) )
        | c1_0
        | ! [W] :
            ( ndr1_0
           => ( ~ c3_1(W)
              | ~ c5_1(W)
              | ! [X] :
                  ( ndr1_1(W)
                 => ( ~ c5_2(W,X)
                    | ~ c3_2(W,X)
                    | ~ c4_2(W,X) ) ) ) ) )
      & ( c4_0
        | ( ndr1_0
          & ! [Y] :
              ( ndr1_1(a4)
             => ( ~ c4_2(a4,Y)
                | ~ c5_2(a4,Y)
                | c3_2(a4,Y) ) )
          & ! [Z] :
              ( ndr1_1(a4)
             => ( c3_2(a4,Z)
                | ~ c2_2(a4,Z) ) )
          & ! [X1] :
              ( ndr1_1(a4)
             => ( c4_2(a4,X1)
                | ~ c3_2(a4,X1)
                | ~ c5_2(a4,X1) ) ) )
        | ! [X2] :
            ( ndr1_0
           => ( ~ c3_1(X2)
              | ( ndr1_1(X2)
                & ~ c5_2(X2,a5)
                & c4_2(X2,a5)
                & ~ c1_2(X2,a5) )
              | ( ndr1_1(X2)
                & c3_2(X2,a6)
                & c2_2(X2,a6)
                & ~ c5_2(X2,a6) ) ) ) )
      & ( ~ c4_0
        | ~ c1_0
        | c5_0 )
      & ( ~ c1_0
        | ( ndr1_0
          & ~ c1_1(a7)
          & ~ c3_1(a7)
          & c4_1(a7) )
        | c2_0 )
      & ( ( ndr1_0
          & ~ c3_1(a8)
          & c1_1(a8)
          & ndr1_1(a8)
          & ~ c2_2(a8,a9)
          & c3_2(a8,a9)
          & c1_2(a8,a9) )
        | ( ndr1_0
          & c5_1(a10)
          & ndr1_1(a10)
          & c5_2(a10,a11)
          & c2_2(a10,a11)
          & ~ c1_2(a10,a11)
          & c1_1(a10) )
        | ~ c4_0 )
      & ( c4_0
        | ( ndr1_0
          & c4_1(a12)
          & c3_1(a12)
          & ~ c5_1(a12) )
        | ( ndr1_0
          & ~ c4_1(a13)
          & ! [X3] :
              ( ndr1_1(a13)
             => ( c1_2(a13,X3)
                | c3_2(a13,X3)
                | ~ c5_2(a13,X3) ) )
          & ! [X4] :
              ( ndr1_1(a13)
             => ( c4_2(a13,X4)
                | c3_2(a13,X4) ) ) ) )
      & ( ! [X5] :
            ( ndr1_0
           => ( c2_1(X5)
              | c5_1(X5) ) )
        | ( ndr1_0
          & ! [X6] :
              ( ndr1_1(a14)
             => ( c5_2(a14,X6)
                | ~ c3_2(a14,X6) ) )
          & c5_1(a14)
          & ndr1_1(a14)
          & ~ c3_2(a14,a15)
          & c1_2(a14,a15)
          & ~ c2_2(a14,a15) )
        | ( ndr1_0
          & ! [X7] :
              ( ndr1_1(a16)
             => ( ~ c4_2(a16,X7)
                | ~ c1_2(a16,X7)
                | ~ c3_2(a16,X7) ) )
          & ~ c3_1(a16)
          & ~ c5_1(a16) ) )
      & ( ! [X8] :
            ( ndr1_0
           => ( ~ c5_1(X8)
              | ~ c2_1(X8)
              | ( ndr1_1(X8)
                & c5_2(X8,a17)
                & c1_2(X8,a17)
                & ~ c4_2(X8,a17) ) ) )
        | ~ c5_0
        | ! [X9] :
            ( ndr1_0
           => ( ( ndr1_1(X9)
                & c2_2(X9,a18)
                & c3_2(X9,a18) )
              | c1_1(X9)
              | ! [X10] :
                  ( ndr1_1(X9)
                 => ( ~ c4_2(X9,X10)
                    | c3_2(X9,X10)
                    | c1_2(X9,X10) ) ) ) ) )
      & ( ~ c4_0
        | ! [X11] :
            ( ndr1_0
           => ( ~ c4_1(X11)
              | ~ c3_1(X11)
              | ~ c2_1(X11) ) )
        | ( ndr1_0
          & ~ c2_1(a19)
          & ndr1_1(a19)
          & c3_2(a19,a20)
          & ~ c4_2(a19,a20)
          & ! [X12] :
              ( ndr1_1(a19)
             => ( ~ c3_2(a19,X12)
                | ~ c4_2(a19,X12) ) ) ) )
      & ( ~ c3_0
        | ! [X13] :
            ( ndr1_0
           => ( ~ c5_1(X13)
              | ( ndr1_1(X13)
                & ~ c1_2(X13,a21)
                & ~ c4_2(X13,a21)
                & c5_2(X13,a21) )
              | ! [X14] :
                  ( ndr1_1(X13)
                 => ( ~ c2_2(X13,X14)
                    | ~ c4_2(X13,X14)
                    | ~ c1_2(X13,X14) ) ) ) )
        | c4_0 )
      & ( ! [X15] :
            ( ndr1_0
           => ( ( ndr1_1(X15)
                & c4_2(X15,a22)
                & c5_2(X15,a22)
                & c2_2(X15,a22) )
              | ( ndr1_1(X15)
                & c2_2(X15,a23)
                & c4_2(X15,a23)
                & ~ c5_2(X15,a23) )
              | ! [X16] :
                  ( ndr1_1(X15)
                 => ( c5_2(X15,X16)
                    | c4_2(X15,X16) ) ) ) )
        | ( ndr1_0
          & ! [X17] :
              ( ndr1_1(a24)
             => ( ~ c1_2(a24,X17)
                | ~ c2_2(a24,X17)
                | c4_2(a24,X17) ) )
          & ndr1_1(a24)
          & c1_2(a24,a25)
          & c3_2(a24,a25)
          & ! [X18] :
              ( ndr1_1(a24)
             => ( ~ c4_2(a24,X18)
                | c1_2(a24,X18)
                | ~ c3_2(a24,X18) ) ) )
        | ( ndr1_0
          & ~ c5_1(a26)
          & ! [X19] :
              ( ndr1_1(a26)
             => ( c2_2(a26,X19)
                | c4_2(a26,X19)
                | ~ c1_2(a26,X19) ) ) ) ) ) ).

%--------------------------------------------------------------------------
