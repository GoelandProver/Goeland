%--------------------------------------------------------------------------
% File     : SYN532+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=25, K=3, D=2, P=0, Index=042
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-25-3-2-042.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.10 v5.4.0, 0.20 v5.3.0, 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.7.0, 0.17 v2.6.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  190 (   0 equ)
%            Maximal formula atoms :  190 ( 190 avg)
%            Number of connectives :  255 (  66   ~;  65   |; 104   &)
%                                         (   0 <=>;  20  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   31 (  31 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   32 (  32 usr;  32 con; 0-0 aty)
%            Number of variables   :   20 (  20   !;   0   ?)
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
    ~ ( ( ~ c3_0
        | c5_0
        | ( ndr1_0
          & ! [U] :
              ( ndr1_1(a411)
             => ( c1_2(a411,U)
                | c3_2(a411,U)
                | c5_2(a411,U) ) )
          & c2_1(a411)
          & c1_1(a411) ) )
      & ( ! [V] :
            ( ndr1_0
           => ( c5_1(V)
              | ~ c3_1(V) ) )
        | ~ c3_0
        | ~ c4_0 )
      & ( ! [W] :
            ( ndr1_0
           => ~ c2_1(W) )
        | ( ndr1_0
          & ~ c4_1(a412)
          & ! [X] :
              ( ndr1_1(a412)
             => ( ~ c2_2(a412,X)
                | c3_2(a412,X) ) )
          & ~ c2_1(a412) )
        | ( ndr1_0
          & ~ c2_1(a413)
          & ndr1_1(a413)
          & ~ c3_2(a413,a414)
          & ~ c5_2(a413,a414)
          & c1_2(a413,a414)
          & ! [Y] :
              ( ndr1_1(a413)
             => ( c5_2(a413,Y)
                | ~ c1_2(a413,Y) ) ) ) )
      & ( ~ c4_0
        | ~ c5_0
        | ( ndr1_0
          & c2_1(a415)
          & ~ c4_1(a415)
          & c5_1(a415) ) )
      & ( ( ndr1_0
          & ! [Z] :
              ( ndr1_1(a416)
             => ( ~ c5_2(a416,Z)
                | ~ c2_2(a416,Z) ) )
          & c2_1(a416)
          & ! [X1] :
              ( ndr1_1(a416)
             => c5_2(a416,X1) ) )
        | ! [X2] :
            ( ndr1_0
           => ( ( ndr1_1(X2)
                & ~ c4_2(X2,a417)
                & c2_2(X2,a417) )
              | ~ c2_1(X2) ) )
        | ( ndr1_0
          & c2_1(a418)
          & ndr1_1(a418)
          & c4_2(a418,a419)
          & ~ c5_2(a418,a419)
          & ~ c3_2(a418,a419) ) )
      & ( ( ndr1_0
          & ndr1_1(a420)
          & ~ c4_2(a420,a421)
          & c1_2(a420,a421)
          & c4_1(a420)
          & c5_1(a420) )
        | c4_0 )
      & ( ! [X3] :
            ( ndr1_0
           => ( ! [X4] :
                  ( ndr1_1(X3)
                 => ( ~ c4_2(X3,X4)
                    | ~ c2_2(X3,X4)
                    | c5_2(X3,X4) ) )
              | ! [X5] :
                  ( ndr1_1(X3)
                 => ( ~ c2_2(X3,X5)
                    | ~ c3_2(X3,X5)
                    | c1_2(X3,X5) ) ) ) )
        | c4_0
        | ~ c3_0 )
      & ( ~ c1_0
        | ~ c3_0
        | ~ c5_0 )
      & ( c1_0
        | ~ c4_0
        | c5_0 )
      & ( c5_0
        | ~ c3_0
        | c2_0 )
      & ( c1_0
        | ( ndr1_0
          & ~ c2_1(a422)
          & ndr1_1(a422)
          & c1_2(a422,a423)
          & c5_2(a422,a423)
          & ~ c2_2(a422,a423)
          & ~ c4_1(a422) )
        | ~ c3_0 )
      & ( c5_0
        | ! [X6] :
            ( ndr1_0
           => ( c2_1(X6)
              | c3_1(X6)
              | ( ndr1_1(X6)
                & c2_2(X6,a424)
                & ~ c3_2(X6,a424)
                & ~ c5_2(X6,a424) ) ) )
        | ! [X7] :
            ( ndr1_0
           => ( c5_1(X7)
              | c2_1(X7)
              | ~ c4_1(X7) ) ) )
      & ( c4_0
        | ~ c3_0
        | c1_0 )
      & ( ( ndr1_0
          & ndr1_1(a425)
          & ~ c2_2(a425,a426)
          & c4_2(a425,a426)
          & ~ c5_2(a425,a426)
          & ~ c3_1(a425)
          & ndr1_1(a425)
          & ~ c5_2(a425,a427)
          & ~ c3_2(a425,a427)
          & c2_2(a425,a427) )
        | ! [X8] :
            ( ndr1_0
           => ( ( ndr1_1(X8)
                & ~ c4_2(X8,a428)
                & ~ c3_2(X8,a428) )
              | ( ndr1_1(X8)
                & c1_2(X8,a429)
                & ~ c4_2(X8,a429)
                & ~ c5_2(X8,a429) )
              | ( ndr1_1(X8)
                & c1_2(X8,a430)
                & ~ c4_2(X8,a430)
                & c5_2(X8,a430) ) ) )
        | ( ndr1_0
          & c3_1(a431)
          & ~ c1_1(a431) ) )
      & ( c1_0
        | ( ndr1_0
          & ! [X9] :
              ( ndr1_1(a432)
             => ( ~ c2_2(a432,X9)
                | c5_2(a432,X9)
                | c4_2(a432,X9) ) )
          & ~ c1_1(a432)
          & ndr1_1(a432)
          & ~ c3_2(a432,a433)
          & ~ c2_2(a432,a433) )
        | c5_0 )
      & ( ~ c3_0
        | c1_0 )
      & ( ( ndr1_0
          & ! [X10] :
              ( ndr1_1(a434)
             => ( ~ c4_2(a434,X10)
                | c2_2(a434,X10)
                | ~ c3_2(a434,X10) ) )
          & ndr1_1(a434)
          & c5_2(a434,a435)
          & c4_2(a434,a435)
          & c3_2(a434,a435)
          & ndr1_1(a434)
          & ~ c5_2(a434,a436)
          & c3_2(a434,a436) )
        | ( ndr1_0
          & c4_1(a437) )
        | ( ndr1_0
          & ~ c5_1(a438)
          & c1_1(a438)
          & c2_1(a438) ) )
      & ( ( ndr1_0
          & c5_1(a439)
          & ! [X11] :
              ( ndr1_1(a439)
             => ( c5_2(a439,X11)
                | c3_2(a439,X11) ) ) )
        | c3_0 )
      & ( c5_0
        | c1_0
        | ( ndr1_0
          & ! [X12] :
              ( ndr1_1(a440)
             => ( c2_2(a440,X12)
                | ~ c3_2(a440,X12)
                | c4_2(a440,X12) ) )
          & ~ c5_1(a440)
          & c4_1(a440) ) )
      & ( ( ndr1_0
          & ndr1_1(a441)
          & c3_2(a441,a442)
          & ~ c1_2(a441,a442)
          & ! [X13] :
              ( ndr1_1(a441)
             => ( c5_2(a441,X13)
                | ~ c4_2(a441,X13) ) )
          & c2_1(a441) )
        | ! [X14] :
            ( ndr1_0
           => ( c5_1(X14)
              | c2_1(X14)
              | ~ c1_1(X14) ) )
        | c4_0 ) ) ).

%--------------------------------------------------------------------------
