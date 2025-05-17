%--------------------------------------------------------------------------
% File     : SYN533+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=25, K=3, D=2, P=0, Index=082
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-25-3-2-082.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.10 v5.4.0, 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  158 (   0 equ)
%            Maximal formula atoms :  158 ( 158 avg)
%            Number of connectives :  209 (  52   ~;  50   |;  91   &)
%                                         (   0 <=>;  16  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   28 (  28 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   28 (  28 usr;  28 con; 0-0 aty)
%            Number of variables   :   16 (  16   !;   0   ?)
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
    ~ ( ( ~ c1_0
        | ! [U] :
            ( ndr1_0
           => ( c2_1(U)
              | ! [V] :
                  ( ndr1_1(U)
                 => ( c5_2(U,V)
                    | ~ c2_2(U,V) ) )
              | ~ c3_1(U) ) )
        | c2_0 )
      & c4_0
      & ( c1_0
        | ! [W] :
            ( ndr1_0
           => ( ( ndr1_1(W)
                & ~ c1_2(W,a443)
                & c3_2(W,a443) )
              | ( ndr1_1(W)
                & ~ c5_2(W,a444)
                & ~ c3_2(W,a444) )
              | ~ c2_1(W) ) )
        | ! [X] :
            ( ndr1_0
           => ( ! [Y] :
                  ( ndr1_1(X)
                 => ( ~ c5_2(X,Y)
                    | c3_2(X,Y) ) )
              | ! [Z] :
                  ( ndr1_1(X)
                 => ( ~ c3_2(X,Z)
                    | c1_2(X,Z)
                    | c4_2(X,Z) ) ) ) ) )
      & ( c3_0
        | c1_0
        | ! [X1] :
            ( ndr1_0
           => ( ~ c1_1(X1)
              | ! [X2] :
                  ( ndr1_1(X1)
                 => ( c5_2(X1,X2)
                    | ~ c3_2(X1,X2)
                    | c4_2(X1,X2) ) ) ) ) )
      & ( ( ndr1_0
          & c3_1(a445)
          & ndr1_1(a445)
          & ~ c4_2(a445,a446)
          & ~ c2_2(a445,a446) )
        | c3_0 )
      & ( ( ndr1_0
          & ! [X3] :
              ( ndr1_1(a447)
             => ( c3_2(a447,X3)
                | ~ c5_2(a447,X3)
                | c1_2(a447,X3) ) )
          & ndr1_1(a447)
          & ~ c1_2(a447,a448)
          & ~ c4_2(a447,a448)
          & ~ c2_2(a447,a448) )
        | ( ndr1_0
          & c1_1(a449)
          & c2_1(a449)
          & ndr1_1(a449)
          & c5_2(a449,a450)
          & ~ c2_2(a449,a450)
          & ~ c3_2(a449,a450) )
        | c2_0 )
      & ( c2_0
        | ( ndr1_0
          & ndr1_1(a451)
          & ~ c2_2(a451,a452)
          & c3_2(a451,a452)
          & ~ c4_1(a451)
          & c3_1(a451) )
        | ~ c5_0 )
      & ( c2_0
        | c3_0
        | ! [X4] :
            ( ndr1_0
           => ( c2_1(X4)
              | ~ c3_1(X4) ) ) )
      & ( ~ c1_0
        | ( ndr1_0
          & ~ c4_1(a453)
          & ndr1_1(a453)
          & c5_2(a453,a454)
          & ~ c1_2(a453,a454)
          & ~ c3_2(a453,a454) )
        | ( ndr1_0
          & ndr1_1(a455)
          & c2_2(a455,a456)
          & c3_2(a455,a456)
          & ~ c4_2(a455,a456)
          & ~ c1_1(a455)
          & ndr1_1(a455)
          & c1_2(a455,a457)
          & c2_2(a455,a457)
          & ~ c4_2(a455,a457) ) )
      & ( c1_0
        | ! [X5] :
            ( ndr1_0
           => ( c2_1(X5)
              | c3_1(X5) ) ) )
      & ( ( ndr1_0
          & c1_1(a458)
          & ~ c5_1(a458)
          & ndr1_1(a458)
          & c5_2(a458,a459)
          & ~ c1_2(a458,a459)
          & ~ c3_2(a458,a459) )
        | ( ndr1_0
          & c2_1(a460)
          & ~ c1_1(a460)
          & ! [X6] :
              ( ndr1_1(a460)
             => c3_2(a460,X6) ) )
        | ~ c3_0 )
      & ( c1_0
        | ( ndr1_0
          & ndr1_1(a461)
          & c1_2(a461,a462)
          & ~ c5_2(a461,a462)
          & ~ c4_2(a461,a462)
          & c1_1(a461)
          & ndr1_1(a461)
          & c2_2(a461,a463)
          & c1_2(a461,a463) )
        | ~ c2_0 )
      & ( ( ndr1_0
          & c3_1(a464)
          & ~ c5_1(a464)
          & ~ c2_1(a464) )
        | c2_0 )
      & ( ( ndr1_0
          & ndr1_1(a465)
          & ~ c5_2(a465,a466)
          & c1_2(a465,a466)
          & ~ c4_2(a465,a466)
          & ~ c5_1(a465) )
        | c2_0 )
      & ( ! [X7] :
            ( ndr1_0
           => ( ~ c1_1(X7)
              | ~ c4_1(X7)
              | ! [X8] :
                  ( ndr1_1(X7)
                 => ( c4_2(X7,X8)
                    | c2_2(X7,X8)
                    | c5_2(X7,X8) ) ) ) )
        | ! [X9] :
            ( ndr1_0
           => ( ~ c3_1(X9)
              | c2_1(X9) ) ) )
      & ( ~ c3_0
        | c1_0
        | c2_0 )
      & ( ( ndr1_0
          & c4_1(a467)
          & ~ c3_1(a467)
          & c5_1(a467) )
        | c1_0 )
      & ( ! [X10] :
            ( ndr1_0
           => ( c1_1(X10)
              | ( ndr1_1(X10)
                & c2_2(X10,a468)
                & ~ c1_2(X10,a468)
                & c5_2(X10,a468) )
              | ( ndr1_1(X10)
                & c5_2(X10,a469)
                & c4_2(X10,a469)
                & c2_2(X10,a469) ) ) )
        | ( ndr1_0
          & ~ c3_1(a470)
          & ~ c5_1(a470) ) ) ) ).

%--------------------------------------------------------------------------
