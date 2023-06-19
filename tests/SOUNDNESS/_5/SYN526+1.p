%--------------------------------------------------------------------------
% File     : SYN526+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=25, K=3, D=2, P=0, Index=011
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-25-3-2-011.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  231 (   0 equ)
%            Maximal formula atoms :  231 ( 231 avg)
%            Number of connectives :  321 (  91   ~;  91   |; 106   &)
%                                         (   0 <=>;  33  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   30 (  30 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   33 (  33 usr;  33 con; 0-0 aty)
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
    ~ ( ~ c2_0
      & ( ! [U] :
            ( ndr1_0
           => ( c3_1(U)
              | ! [V] :
                  ( ndr1_1(U)
                 => ( ~ c3_2(U,V)
                    | ~ c1_2(U,V) ) )
              | ~ c1_1(U) ) )
        | ! [W] :
            ( ndr1_0
           => ( c1_1(W)
              | ( ndr1_1(W)
                & ~ c3_2(W,a218)
                & c5_2(W,a218)
                & c1_2(W,a218) ) ) )
        | ~ c5_0 )
      & ( c5_0
        | c4_0
        | ! [X] :
            ( ndr1_0
           => ( ( ndr1_1(X)
                & ~ c1_2(X,a219)
                & ~ c2_2(X,a219)
                & ~ c3_2(X,a219) )
              | ~ c2_1(X)
              | c4_1(X) ) ) )
      & ( ~ c4_0
        | ! [Y] :
            ( ndr1_0
           => ( ( ndr1_1(Y)
                & ~ c3_2(Y,a220)
                & c1_2(Y,a220)
                & c4_2(Y,a220) )
              | ! [Z] :
                  ( ndr1_1(Y)
                 => ( c4_2(Y,Z)
                    | c3_2(Y,Z)
                    | ~ c2_2(Y,Z) ) )
              | ~ c2_1(Y) ) )
        | ! [X1] :
            ( ndr1_0
           => ( c2_1(X1)
              | ! [X2] :
                  ( ndr1_1(X1)
                 => ( c2_2(X1,X2)
                    | ~ c5_2(X1,X2)
                    | ~ c1_2(X1,X2) ) )
              | c5_1(X1) ) ) )
      & ( c5_0
        | ( ndr1_0
          & ndr1_1(a221)
          & c1_2(a221,a222)
          & ~ c5_2(a221,a222)
          & ! [X3] :
              ( ndr1_1(a221)
             => ( ~ c2_2(a221,X3)
                | ~ c1_2(a221,X3)
                | c5_2(a221,X3) ) ) )
        | c4_0 )
      & ( c5_0
        | ~ c3_0 )
      & ( ( ndr1_0
          & c2_1(a223)
          & ndr1_1(a223)
          & c4_2(a223,a224)
          & ~ c5_2(a223,a224)
          & c2_2(a223,a224)
          & c5_1(a223) )
        | ~ c5_0
        | ( ndr1_0
          & ndr1_1(a225)
          & c1_2(a225,a226)
          & ~ c3_2(a225,a226)
          & c4_1(a225) ) )
      & ( ~ c3_0
        | ! [X4] :
            ( ndr1_0
           => ( c5_1(X4)
              | ( ndr1_1(X4)
                & c4_2(X4,a227)
                & ~ c5_2(X4,a227)
                & c1_2(X4,a227) )
              | ( ndr1_1(X4)
                & ~ c2_2(X4,a228)
                & c1_2(X4,a228) ) ) )
        | ( ndr1_0
          & ! [X5] :
              ( ndr1_1(a229)
             => ( ~ c5_2(a229,X5)
                | ~ c4_2(a229,X5)
                | ~ c3_2(a229,X5) ) )
          & ~ c4_1(a229)
          & ! [X6] :
              ( ndr1_1(a229)
             => ( c5_2(a229,X6)
                | c4_2(a229,X6)
                | ~ c1_2(a229,X6) ) ) ) )
      & ( ~ c1_0
        | ~ c5_0
        | ~ c3_0 )
      & ( ( ndr1_0
          & c2_1(a230)
          & c3_1(a230)
          & ndr1_1(a230)
          & ~ c1_2(a230,a231)
          & ~ c5_2(a230,a231) )
        | ~ c4_0
        | ! [X7] :
            ( ndr1_0
           => ( ~ c2_1(X7)
              | c5_1(X7) ) ) )
      & ( ~ c5_0
        | c3_0
        | ( ndr1_0
          & ~ c4_1(a232)
          & ~ c3_1(a232) ) )
      & ( ! [X8] :
            ( ndr1_0
           => ( ( ndr1_1(X8)
                & c3_2(X8,a233)
                & c2_2(X8,a233)
                & ~ c5_2(X8,a233) )
              | c4_1(X8)
              | ~ c2_1(X8) ) )
        | ! [X9] :
            ( ndr1_0
           => ( ( ndr1_1(X9)
                & ~ c5_2(X9,a234)
                & c4_2(X9,a234) )
              | ~ c1_1(X9)
              | ! [X10] :
                  ( ndr1_1(X9)
                 => ( ~ c2_2(X9,X10)
                    | ~ c4_2(X9,X10)
                    | ~ c5_2(X9,X10) ) ) ) )
        | ! [X11] :
            ( ndr1_0
           => ( ( ndr1_1(X11)
                & c4_2(X11,a235)
                & ~ c5_2(X11,a235)
                & c1_2(X11,a235) )
              | c5_1(X11) ) ) )
      & ( ( ndr1_0
          & ~ c4_1(a236)
          & ! [X12] :
              ( ndr1_1(a236)
             => ( c3_2(a236,X12)
                | c5_2(a236,X12)
                | ~ c4_2(a236,X12) ) )
          & c3_1(a236) )
        | ~ c3_0
        | ( ndr1_0
          & ! [X13] :
              ( ndr1_1(a237)
             => ( c4_2(a237,X13)
                | ~ c5_2(a237,X13) ) )
          & ! [X14] :
              ( ndr1_1(a237)
             => ( ~ c3_2(a237,X14)
                | ~ c2_2(a237,X14)
                | c5_2(a237,X14) ) )
          & c2_1(a237) ) )
      & ( ! [X15] :
            ( ndr1_0
           => ( ( ndr1_1(X15)
                & c3_2(X15,a238)
                & c1_2(X15,a238)
                & ~ c2_2(X15,a238) )
              | ~ c2_1(X15) ) )
        | ! [X16] :
            ( ndr1_0
           => ( ~ c4_1(X16)
              | ( ndr1_1(X16)
                & ~ c5_2(X16,a239)
                & ~ c4_2(X16,a239)
                & c2_2(X16,a239) )
              | ~ c3_1(X16) ) )
        | ( ndr1_0
          & ~ c2_1(a240)
          & c3_1(a240)
          & ndr1_1(a240)
          & c3_2(a240,a241)
          & ~ c5_2(a240,a241)
          & ~ c1_2(a240,a241) ) )
      & ( ( ndr1_0
          & ~ c3_1(a242)
          & ~ c2_1(a242)
          & ~ c4_1(a242) )
        | ! [X17] :
            ( ndr1_0
           => ( ( ndr1_1(X17)
                & c1_2(X17,a243)
                & ~ c5_2(X17,a243) )
              | c4_1(X17) ) )
        | ~ c4_0 )
      & ( ~ c5_0
        | ! [X18] :
            ( ndr1_0
           => ( ~ c5_1(X18)
              | ( ndr1_1(X18)
                & ~ c3_2(X18,a244)
                & c5_2(X18,a244)
                & c2_2(X18,a244) )
              | ! [X19] :
                  ( ndr1_1(X18)
                 => ( c3_2(X18,X19)
                    | ~ c5_2(X18,X19)
                    | c4_2(X18,X19) ) ) ) ) )
      & ( ( ndr1_0
          & ! [X20] :
              ( ndr1_1(a245)
             => ( c5_2(a245,X20)
                | ~ c3_2(a245,X20) ) )
          & ! [X21] :
              ( ndr1_1(a245)
             => ( c1_2(a245,X21)
                | ~ c4_2(a245,X21)
                | c5_2(a245,X21) ) )
          & ~ c5_1(a245) )
        | ! [X22] :
            ( ndr1_0
           => ( c1_1(X22)
              | ( ndr1_1(X22)
                & ~ c1_2(X22,a246)
                & ~ c2_2(X22,a246)
                & ~ c3_2(X22,a246) )
              | c3_1(X22) ) )
        | ( ndr1_0
          & ! [X23] :
              ( ndr1_1(a247)
             => ( ~ c3_2(a247,X23)
                | c1_2(a247,X23) ) )
          & ~ c3_1(a247) ) )
      & ( ( ndr1_0
          & ndr1_1(a248)
          & c4_2(a248,a249)
          & c2_2(a248,a249)
          & ~ c1_2(a248,a249)
          & c3_1(a248) )
        | c3_0 )
      & ( ! [X24] :
            ( ndr1_0
           => ( c4_1(X24)
              | ( ndr1_1(X24)
                & c4_2(X24,a250)
                & ~ c5_2(X24,a250) )
              | ~ c3_1(X24) ) )
        | ! [X25] :
            ( ndr1_0
           => ( ! [X26] :
                  ( ndr1_1(X25)
                 => ( ~ c4_2(X25,X26)
                    | ~ c1_2(X25,X26)
                    | ~ c5_2(X25,X26) ) )
              | ~ c2_1(X25)
              | c5_1(X25) ) ) )
      & ( ~ c1_0
        | ~ c4_0
        | ! [X27] :
            ( ndr1_0
           => ( c2_1(X27)
              | c3_1(X27)
              | c4_1(X27) ) ) ) ) ).

%--------------------------------------------------------------------------
