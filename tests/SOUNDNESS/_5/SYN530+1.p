%--------------------------------------------------------------------------
% File     : SYN530+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=25, K=3, D=2, P=0, Index=034
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-25-3-2-034.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  195 (   0 equ)
%            Maximal formula atoms :  195 ( 195 avg)
%            Number of connectives :  267 (  73   ~;  75   |;  96   &)
%                                         (   0 <=>;  23  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   29 (  29 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   30 (  30 usr;  30 con; 0-0 aty)
%            Number of variables   :   23 (  23   !;   0   ?)
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
           => ( ~ c5_1(U)
              | ~ c1_1(U) ) )
        | ( ndr1_0
          & ndr1_1(a357)
          & ~ c5_2(a357,a358)
          & ~ c1_2(a357,a358)
          & c3_2(a357,a358)
          & ~ c2_1(a357)
          & ~ c5_1(a357) )
        | ( ndr1_0
          & ~ c3_1(a359)
          & ~ c5_1(a359) ) )
      & ( c5_0
        | ( ndr1_0
          & ~ c5_1(a360)
          & c3_1(a360) )
        | c1_0 )
      & ( ( ndr1_0
          & ! [V] :
              ( ndr1_1(a361)
             => ( c2_2(a361,V)
                | c3_2(a361,V) ) )
          & ! [W] :
              ( ndr1_1(a361)
             => ( c2_2(a361,W)
                | ~ c1_2(a361,W)
                | c3_2(a361,W) ) )
          & ~ c1_1(a361) )
        | ~ c1_0
        | ~ c5_0 )
      & ( ~ c2_0
        | ! [X] :
            ( ndr1_0
           => ( ! [Y] :
                  ( ndr1_1(X)
                 => ( c4_2(X,Y)
                    | ~ c5_2(X,Y)
                    | ~ c1_2(X,Y) ) )
              | ! [Z] :
                  ( ndr1_1(X)
                 => ( c5_2(X,Z)
                    | c3_2(X,Z)
                    | ~ c4_2(X,Z) ) )
              | ! [X1] :
                  ( ndr1_1(X)
                 => ( c1_2(X,X1)
                    | ~ c5_2(X,X1)
                    | ~ c4_2(X,X1) ) ) ) )
        | ! [X2] :
            ( ndr1_0
           => ( ( ndr1_1(X2)
                & ~ c1_2(X2,a362) )
              | ~ c4_1(X2) ) ) )
      & ( ( ndr1_0
          & ndr1_1(a363)
          & ~ c4_2(a363,a364)
          & ~ c2_2(a363,a364)
          & ~ c5_2(a363,a364)
          & ~ c4_1(a363)
          & ! [X3] :
              ( ndr1_1(a363)
             => ( c1_2(a363,X3)
                | ~ c3_2(a363,X3) ) ) )
        | c3_0
        | ~ c1_0 )
      & ( ! [X4] :
            ( ndr1_0
           => ( c5_1(X4)
              | ( ndr1_1(X4)
                & ~ c1_2(X4,a365)
                & c3_2(X4,a365) )
              | ! [X5] :
                  ( ndr1_1(X4)
                 => ( c2_2(X4,X5)
                    | ~ c3_2(X4,X5)
                    | c1_2(X4,X5) ) ) ) )
        | c5_0
        | ! [X6] :
            ( ndr1_0
           => ( ( ndr1_1(X6)
                & ~ c2_2(X6,a366)
                & ~ c1_2(X6,a366) )
              | ~ c2_1(X6)
              | ( ndr1_1(X6)
                & ~ c4_2(X6,a367)
                & c3_2(X6,a367)
                & c2_2(X6,a367) ) ) ) )
      & ( c5_0
        | c2_0
        | ! [X7] :
            ( ndr1_0
           => ( c3_1(X7)
              | c4_1(X7)
              | ( ndr1_1(X7)
                & ~ c4_2(X7,a368)
                & ~ c2_2(X7,a368)
                & c1_2(X7,a368) ) ) ) )
      & ( ~ c3_0
        | c4_0
        | c5_0 )
      & ( ! [X8] :
            ( ndr1_0
           => ( c5_1(X8)
              | ~ c1_1(X8)
              | c4_1(X8) ) )
        | c3_0
        | ( ndr1_0
          & ~ c3_1(a369)
          & c4_1(a369) ) )
      & ( ! [X9] :
            ( ndr1_0
           => ( ( ndr1_1(X9)
                & c3_2(X9,a370)
                & c1_2(X9,a370)
                & ~ c5_2(X9,a370) )
              | c5_1(X9)
              | c4_1(X9) ) )
        | c4_0 )
      & ( c1_0
        | ( ndr1_0
          & ! [X10] :
              ( ndr1_1(a371)
             => ( ~ c5_2(a371,X10)
                | c4_2(a371,X10)
                | ~ c1_2(a371,X10) ) )
          & ndr1_1(a371)
          & ~ c1_2(a371,a372)
          & c4_2(a371,a372)
          & ~ c2_2(a371,a372)
          & ndr1_1(a371)
          & ~ c1_2(a371,a373)
          & c2_2(a371,a373) )
        | c2_0 )
      & ( c4_0
        | ~ c2_0 )
      & ( c5_0
        | ~ c4_0 )
      & ( ~ c1_0
        | ! [X11] :
            ( ndr1_0
           => ( c5_1(X11)
              | ( ndr1_1(X11)
                & c3_2(X11,a374)
                & ~ c1_2(X11,a374)
                & c5_2(X11,a374) )
              | ( ndr1_1(X11)
                & c4_2(X11,a375)
                & c1_2(X11,a375) ) ) )
        | ~ c5_0 )
      & ( ! [X12] :
            ( ndr1_0
           => ( c1_1(X12)
              | ! [X13] :
                  ( ndr1_1(X12)
                 => ( c1_2(X12,X13)
                    | ~ c3_2(X12,X13) ) )
              | ( ndr1_1(X12)
                & c1_2(X12,a376)
                & c3_2(X12,a376)
                & ~ c4_2(X12,a376) ) ) )
        | ~ c2_0
        | ~ c4_0 )
      & ( ~ c2_0
        | ( ndr1_0
          & c3_1(a377)
          & ~ c1_1(a377) ) )
      & ( ~ c3_0
        | ! [X14] :
            ( ndr1_0
           => ( c3_1(X14)
              | ! [X15] :
                  ( ndr1_1(X14)
                 => ( ~ c2_2(X14,X15)
                    | ~ c3_2(X14,X15) ) ) ) )
        | ( ndr1_0
          & c3_1(a378)
          & ndr1_1(a378)
          & ~ c1_2(a378,a379)
          & c2_2(a378,a379)
          & ~ c4_2(a378,a379)
          & ~ c5_1(a378) ) )
      & ( ~ c1_0
        | ! [X16] :
            ( ndr1_0
           => ( ( ndr1_1(X16)
                & c2_2(X16,a380)
                & ~ c5_2(X16,a380)
                & ~ c3_2(X16,a380) )
              | ( ndr1_1(X16)
                & ~ c3_2(X16,a381)
                & c4_2(X16,a381)
                & ~ c2_2(X16,a381) )
              | ~ c2_1(X16) ) ) )
      & ( c4_0
        | ( ndr1_0
          & c4_1(a382)
          & c1_1(a382)
          & c5_1(a382) )
        | ( ndr1_0
          & ndr1_1(a383)
          & ~ c5_2(a383,a384)
          & ~ c1_2(a383,a384)
          & ~ c3_1(a383)
          & c1_1(a383) ) )
      & ( ~ c1_0
        | c4_0
        | ( ndr1_0
          & c4_1(a385)
          & c5_1(a385) ) )
      & ( ( ndr1_0
          & c3_1(a386) )
        | ~ c1_0
        | ! [X17] :
            ( ndr1_0
           => ( c5_1(X17)
              | c4_1(X17) ) ) ) ) ).

%--------------------------------------------------------------------------
