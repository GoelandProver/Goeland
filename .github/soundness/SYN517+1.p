%--------------------------------------------------------------------------
% File     : SYN517+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=15, K=3, D=2, P=0, Index=061
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-15-3-2-061.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.10 v5.4.0, 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  132 (   0 equ)
%            Maximal formula atoms :  132 ( 132 avg)
%            Number of connectives :  173 (  42   ~;  49   |;  67   &)
%                                         (   0 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   23 (  23 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   20 (  20 usr;  20 con; 0-0 aty)
%            Number of variables   :   15 (  15   !;   0   ?)
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
    ~ ( ( c1_0
        | ( ndr1_0
          & ndr1_1(a50)
          & ~ c1_2(a50,a51)
          & ~ c4_2(a50,a51)
          & c3_2(a50,a51)
          & ! [U] :
              ( ndr1_1(a50)
             => ( ~ c2_2(a50,U)
                | c4_2(a50,U)
                | c3_2(a50,U) ) )
          & c3_1(a50) )
        | ! [V] :
            ( ndr1_0
           => ( c5_1(V)
              | c3_1(V)
              | ! [W] :
                  ( ndr1_1(V)
                 => ( ~ c3_2(V,W)
                    | c4_2(V,W) ) ) ) ) )
      & ( ! [X] :
            ( ndr1_0
           => ( ! [Y] :
                  ( ndr1_1(X)
                 => ( c3_2(X,Y)
                    | ~ c4_2(X,Y)
                    | ~ c2_2(X,Y) ) )
              | c4_1(X)
              | ( ndr1_1(X)
                & ~ c3_2(X,a52)
                & ~ c2_2(X,a52)
                & c1_2(X,a52) ) ) )
        | ~ c5_0
        | ~ c1_0 )
      & ( c4_0
        | c5_0 )
      & ( ~ c2_0
        | ~ c3_0
        | c5_0 )
      & ( c1_0
        | ( ndr1_0
          & c5_1(a53)
          & ndr1_1(a53)
          & ~ c1_2(a53,a54)
          & c3_2(a53,a54)
          & c2_2(a53,a54)
          & c1_1(a53) )
        | c2_0 )
      & ( ~ c2_0
        | ( ndr1_0
          & ndr1_1(a55)
          & c4_2(a55,a56)
          & ~ c3_2(a55,a56)
          & c1_2(a55,a56)
          & c5_1(a55)
          & ! [Z] :
              ( ndr1_1(a55)
             => ( c3_2(a55,Z)
                | c5_2(a55,Z)
                | c1_2(a55,Z) ) ) )
        | ~ c4_0 )
      & ( c3_0
        | ( ndr1_0
          & ndr1_1(a57)
          & c4_2(a57,a58)
          & ~ c1_2(a57,a58)
          & c2_2(a57,a58)
          & ! [X1] :
              ( ndr1_1(a57)
             => ( ~ c3_2(a57,X1)
                | c5_2(a57,X1)
                | c2_2(a57,X1) ) )
          & ~ c5_1(a57) )
        | ( ndr1_0
          & ~ c4_1(a59)
          & c2_1(a59)
          & c5_1(a59) ) )
      & ( ~ c5_0
        | ~ c3_0
        | ( ndr1_0
          & ndr1_1(a60)
          & ~ c4_2(a60,a61)
          & ~ c1_2(a60,a61)
          & ~ c5_2(a60,a61)
          & c5_1(a60)
          & ! [X2] :
              ( ndr1_1(a60)
             => ( c5_2(a60,X2)
                | c4_2(a60,X2) ) ) ) )
      & ( ( ndr1_0
          & c1_1(a62)
          & ! [X3] :
              ( ndr1_1(a62)
             => ( c2_2(a62,X3)
                | ~ c5_2(a62,X3)
                | c1_2(a62,X3) ) )
          & ndr1_1(a62)
          & c3_2(a62,a63)
          & ~ c5_2(a62,a63)
          & ~ c2_2(a62,a63) )
        | ( ndr1_0
          & ~ c5_1(a64)
          & c2_1(a64) )
        | ~ c5_0 )
      & ( ( ndr1_0
          & ! [X4] :
              ( ndr1_1(a65)
             => ( ~ c1_2(a65,X4)
                | ~ c3_2(a65,X4) ) )
          & ndr1_1(a65)
          & ~ c3_2(a65,a66)
          & c5_2(a65,a66)
          & c4_2(a65,a66) )
        | c2_0 )
      & ( c3_0
        | ( ndr1_0
          & ! [X5] :
              ( ndr1_1(a67)
             => ( ~ c2_2(a67,X5)
                | c1_2(a67,X5)
                | ~ c3_2(a67,X5) ) )
          & ~ c1_1(a67) )
        | ( ndr1_0
          & ! [X6] :
              ( ndr1_1(a68)
             => ( ~ c4_2(a68,X6)
                | ~ c5_2(a68,X6)
                | c3_2(a68,X6) ) )
          & ~ c3_1(a68) ) )
      & ( ! [X7] :
            ( ndr1_0
           => ( ( ndr1_1(X7)
                & c5_2(X7,a69)
                & ~ c1_2(X7,a69)
                & c4_2(X7,a69) )
              | c4_1(X7)
              | c3_1(X7) ) )
        | ! [X8] :
            ( ndr1_0
           => ( ~ c5_1(X8)
              | c3_1(X8)
              | ! [X9] :
                  ( ndr1_1(X8)
                 => ( c2_2(X8,X9)
                    | c4_2(X8,X9)
                    | c3_2(X8,X9) ) ) ) )
        | c4_0 ) ) ).

%--------------------------------------------------------------------------
