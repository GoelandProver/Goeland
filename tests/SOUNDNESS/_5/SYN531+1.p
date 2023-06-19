%--------------------------------------------------------------------------
% File     : SYN531+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=25, K=3, D=2, P=0, Index=036
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-25-3-2-036.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  178 (   0 equ)
%            Maximal formula atoms :  178 ( 178 avg)
%            Number of connectives :  232 (  55   ~;  70   |;  82   &)
%                                         (   0 <=>;  25  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   30 (  30 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   24 (  24 usr;  24 con; 0-0 aty)
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
           => ( ! [V] :
                  ( ndr1_1(U)
                 => ( c3_2(U,V)
                    | c2_2(U,V) ) )
              | c3_1(U) ) )
        | ~ c1_0
        | ~ c5_0 )
      & ( ! [W] :
            ( ndr1_0
           => ( ( ndr1_1(W)
                & c5_2(W,a387)
                & c2_2(W,a387)
                & c3_2(W,a387) )
              | ( ndr1_1(W)
                & c3_2(W,a388)
                & ~ c1_2(W,a388)
                & c2_2(W,a388) )
              | c2_1(W) ) )
        | ! [X] :
            ( ndr1_0
           => ( ~ c1_1(X)
              | ~ c5_1(X)
              | ( ndr1_1(X)
                & c1_2(X,a389)
                & ~ c3_2(X,a389) ) ) ) )
      & ( ! [Y] :
            ( ndr1_0
           => ( c3_1(Y)
              | ! [Z] :
                  ( ndr1_1(Y)
                 => ( c1_2(Y,Z)
                    | ~ c3_2(Y,Z) ) )
              | c5_1(Y) ) )
        | ( ndr1_0
          & ~ c1_1(a390)
          & ! [X1] :
              ( ndr1_1(a390)
             => ( c1_2(a390,X1)
                | c5_2(a390,X1) ) ) )
        | ( ndr1_0
          & ! [X2] :
              ( ndr1_1(a391)
             => ( c4_2(a391,X2)
                | ~ c1_2(a391,X2)
                | ~ c3_2(a391,X2) ) )
          & ~ c3_1(a391)
          & ! [X3] :
              ( ndr1_1(a391)
             => ( c4_2(a391,X3)
                | c1_2(a391,X3)
                | ~ c5_2(a391,X3) ) ) ) )
      & ( ~ c4_0
        | ! [X4] :
            ( ndr1_0
           => ( c4_1(X4)
              | c2_1(X4)
              | c5_1(X4) ) ) )
      & ( ( ndr1_0
          & c5_1(a392)
          & c3_1(a392)
          & c1_1(a392) )
        | c5_0
        | ( ndr1_0
          & ndr1_1(a393)
          & ~ c2_2(a393,a394)
          & ~ c3_2(a393,a394)
          & c5_2(a393,a394)
          & ndr1_1(a393)
          & ~ c1_2(a393,a395)
          & c2_2(a393,a395)
          & c3_1(a393) ) )
      & ( ~ c1_0
        | ( ndr1_0
          & ~ c3_1(a396)
          & c4_1(a396)
          & ndr1_1(a396)
          & ~ c5_2(a396,a397)
          & ~ c4_2(a396,a397)
          & c3_2(a396,a397) )
        | ~ c2_0 )
      & ( c3_0
        | c4_0
        | ! [X5] :
            ( ndr1_0
           => ( ~ c3_1(X5)
              | ( ndr1_1(X5)
                & c3_2(X5,a398) )
              | ~ c1_1(X5) ) ) )
      & ( c4_0
        | ~ c5_0
        | ~ c2_0 )
      & ( ~ c2_0
        | ~ c3_0 )
      & ( ! [X6] :
            ( ndr1_0
           => ( c4_1(X6)
              | c5_1(X6)
              | ~ c3_1(X6) ) )
        | ~ c2_0 )
      & ( ( ndr1_0
          & ~ c2_1(a399)
          & ! [X7] :
              ( ndr1_1(a399)
             => ( ~ c2_2(a399,X7)
                | ~ c1_2(a399,X7)
                | ~ c5_2(a399,X7) ) ) )
        | c3_0
        | ~ c5_0 )
      & ( c3_0
        | ! [X8] :
            ( ndr1_0
           => ( ! [X9] :
                  ( ndr1_1(X8)
                 => ( c3_2(X8,X9)
                    | c2_2(X8,X9)
                    | c4_2(X8,X9) ) )
              | c1_1(X8) ) )
        | c2_0 )
      & ( ~ c2_0
        | ( ndr1_0
          & c2_1(a400)
          & ~ c1_1(a400)
          & ! [X10] :
              ( ndr1_1(a400)
             => ~ c3_2(a400,X10) ) )
        | ( ndr1_0
          & ndr1_1(a401)
          & c2_2(a401,a402)
          & ~ c1_2(a401,a402)
          & c4_1(a401) ) )
      & ( ! [X11] :
            ( ndr1_0
           => ( c2_1(X11)
              | c1_1(X11)
              | ~ c3_1(X11) ) )
        | ~ c5_0
        | ( ndr1_0
          & c1_1(a403)
          & ndr1_1(a403)
          & c3_2(a403,a404)
          & ~ c4_2(a403,a404)
          & c2_1(a403) ) )
      & ( c5_0
        | c4_0 )
      & ( ~ c5_0
        | c1_0
        | c3_0 )
      & ( ! [X12] :
            ( ndr1_0
           => ( ~ c1_1(X12)
              | ! [X13] :
                  ( ndr1_1(X12)
                 => ( c2_2(X12,X13)
                    | ~ c3_2(X12,X13)
                    | c5_2(X12,X13) ) )
              | ( ndr1_1(X12)
                & ~ c5_2(X12,a405)
                & ~ c2_2(X12,a405)
                & ~ c1_2(X12,a405) ) ) )
        | ! [X14] :
            ( ndr1_0
           => ( ! [X15] :
                  ( ndr1_1(X14)
                 => ( c1_2(X14,X15)
                    | c3_2(X14,X15) ) )
              | ( ndr1_1(X14)
                & c4_2(X14,a406)
                & c2_2(X14,a406)
                & c3_2(X14,a406) ) ) ) )
      & ( ( ndr1_0
          & ndr1_1(a407)
          & ~ c3_2(a407,a408)
          & c1_2(a407,a408)
          & ~ c5_2(a407,a408)
          & ~ c2_1(a407)
          & ndr1_1(a407)
          & ~ c3_2(a407,a409)
          & c1_2(a407,a409)
          & c2_2(a407,a409) )
        | ! [X16] :
            ( ndr1_0
           => ( c5_1(X16)
              | ! [X17] :
                  ( ndr1_1(X16)
                 => ( c2_2(X16,X17)
                    | c1_2(X16,X17) ) )
              | ! [X18] :
                  ( ndr1_1(X16)
                 => ( ~ c4_2(X16,X18)
                    | c2_2(X16,X18) ) ) ) ) )
      & ( c2_0
        | ~ c5_0 )
      & ( c1_0
        | ! [X19] :
            ( ndr1_0
           => ( ( ndr1_1(X19)
                & c1_2(X19,a410)
                & ~ c4_2(X19,a410)
                & c2_2(X19,a410) )
              | c4_1(X19) ) )
        | c4_0 ) ) ).

%--------------------------------------------------------------------------
