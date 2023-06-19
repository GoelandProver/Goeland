%--------------------------------------------------------------------------
% File     : SYN534+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=25, K=3, D=2, P=0, Index=090
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-25-3-2-090.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  186 (   0 equ)
%            Maximal formula atoms :  186 ( 186 avg)
%            Number of connectives :  252 (  67   ~;  83   |;  74   &)
%                                         (   0 <=>;  28  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   30 (  30 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   21 (  21 usr;  21 con; 0-0 aty)
%            Number of variables   :   28 (  28   !;   0   ?)
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
    ~ ( ( c2_0
        | ( ndr1_0
          & ~ c2_1(a471)
          & ~ c4_1(a471) )
        | ~ c1_0 )
      & ( ~ c3_0
        | ! [U] :
            ( ndr1_0
           => ( c3_1(U)
              | c5_1(U) ) )
        | c1_0 )
      & ( c3_0
        | c1_0
        | ~ c5_0 )
      & ( ( ndr1_0
          & ~ c1_1(a472)
          & c5_1(a472)
          & ndr1_1(a472)
          & ~ c5_2(a472,a473)
          & ~ c3_2(a472,a473) )
        | ( ndr1_0
          & ! [V] :
              ( ndr1_1(a474)
             => ( c4_2(a474,V)
                | ~ c3_2(a474,V) ) )
          & ! [W] :
              ( ndr1_1(a474)
             => ( ~ c5_2(a474,W)
                | c1_2(a474,W)
                | ~ c4_2(a474,W) ) )
          & ndr1_1(a474)
          & ~ c5_2(a474,a475)
          & c2_2(a474,a475) ) )
      & ( ~ c2_0
        | ~ c3_0 )
      & ( c4_0
        | ~ c2_0
        | ! [X] :
            ( ndr1_0
           => ( ! [Y] :
                  ( ndr1_1(X)
                 => ( c3_2(X,Y)
                    | ~ c4_2(X,Y)
                    | c5_2(X,Y) ) )
              | ~ c3_1(X)
              | ( ndr1_1(X)
                & ~ c3_2(X,a476)
                & ~ c1_2(X,a476)
                & ~ c5_2(X,a476) ) ) ) )
      & ( ! [Z] :
            ( ndr1_0
           => ( c2_1(Z)
              | ~ c4_1(Z)
              | ~ c1_1(Z) ) )
        | ! [X1] :
            ( ndr1_0
           => ( c5_1(X1)
              | ( ndr1_1(X1)
                & ~ c2_2(X1,a477)
                & c5_2(X1,a477)
                & c1_2(X1,a477) )
              | ~ c2_1(X1) ) )
        | ( ndr1_0
          & ~ c2_1(a478)
          & ! [X2] :
              ( ndr1_1(a478)
             => ( ~ c2_2(a478,X2)
                | ~ c1_2(a478,X2)
                | ~ c4_2(a478,X2) ) )
          & c1_1(a478) ) )
      & ( c4_0
        | ( ndr1_0
          & c5_1(a479)
          & ! [X3] :
              ( ndr1_1(a479)
             => ( ~ c1_2(a479,X3)
                | ~ c5_2(a479,X3)
                | ~ c2_2(a479,X3) ) ) )
        | ~ c3_0 )
      & ( ( ndr1_0
          & ndr1_1(a480)
          & ~ c4_2(a480,a481)
          & c1_2(a480,a481)
          & c2_2(a480,a481)
          & ~ c5_1(a480) )
        | c5_0
        | ! [X4] :
            ( ndr1_0
           => ( c2_1(X4)
              | ! [X5] :
                  ( ndr1_1(X4)
                 => ( ~ c5_2(X4,X5)
                    | ~ c3_2(X4,X5)
                    | c4_2(X4,X5) ) )
              | ! [X6] :
                  ( ndr1_1(X4)
                 => ( ~ c5_2(X4,X6)
                    | c2_2(X4,X6)
                    | ~ c4_2(X4,X6) ) ) ) ) )
      & ( ! [X7] :
            ( ndr1_0
           => ( ! [X8] :
                  ( ndr1_1(X7)
                 => ( ~ c1_2(X7,X8)
                    | ~ c4_2(X7,X8)
                    | ~ c2_2(X7,X8) ) )
              | c4_1(X7)
              | ! [X9] :
                  ( ndr1_1(X7)
                 => ( c1_2(X7,X9)
                    | c5_2(X7,X9)
                    | ~ c4_2(X7,X9) ) ) ) )
        | ! [X10] :
            ( ndr1_0
           => ( c1_1(X10)
              | ( ndr1_1(X10)
                & c3_2(X10,a482)
                & c1_2(X10,a482)
                & ~ c4_2(X10,a482) )
              | ~ c2_1(X10) ) )
        | ~ c3_0 )
      & ( c5_0
        | c1_0 )
      & ( ! [X11] :
            ( ndr1_0
           => ( ( ndr1_1(X11)
                & c3_2(X11,a483)
                & c2_2(X11,a483)
                & c1_2(X11,a483) )
              | ~ c2_1(X11) ) )
        | c4_0
        | ~ c2_0 )
      & ( ( ndr1_0
          & ! [X12] :
              ( ndr1_1(a484)
             => c4_2(a484,X12) )
          & ~ c3_1(a484)
          & ~ c1_1(a484) )
        | ( ndr1_0
          & ndr1_1(a485)
          & c3_2(a485,a486)
          & c2_2(a485,a486)
          & c5_2(a485,a486)
          & c2_1(a485)
          & c4_1(a485) )
        | c2_0 )
      & ( ! [X13] :
            ( ndr1_0
           => ( c1_1(X13)
              | ~ c3_1(X13)
              | ! [X14] :
                  ( ndr1_1(X13)
                 => ( ~ c1_2(X13,X14)
                    | c5_2(X13,X14)
                    | ~ c3_2(X13,X14) ) ) ) )
        | ~ c5_0
        | c2_0 )
      & ( ! [X15] :
            ( ndr1_0
           => ( ! [X16] :
                  ( ndr1_1(X15)
                 => ( ~ c2_2(X15,X16)
                    | ~ c5_2(X15,X16)
                    | ~ c4_2(X15,X16) ) )
              | c4_1(X15)
              | c1_1(X15) ) )
        | ! [X17] :
            ( ndr1_0
           => c2_1(X17) )
        | c4_0 )
      & ( c3_0
        | ! [X18] :
            ( ndr1_0
           => ( c1_1(X18)
              | c3_1(X18) ) )
        | c5_0 )
      & ( ~ c5_0
        | ( ndr1_0
          & ! [X19] :
              ( ndr1_1(a487)
             => ( ~ c2_2(a487,X19)
                | c4_2(a487,X19)
                | ~ c5_2(a487,X19) ) )
          & ~ c2_1(a487) )
        | ( ndr1_0
          & c4_1(a488)
          & ! [X20] :
              ( ndr1_1(a488)
             => ( c1_2(a488,X20)
                | c4_2(a488,X20) ) )
          & c2_1(a488) ) )
      & ( c3_0
        | ~ c5_0
        | ! [X21] :
            ( ndr1_0
           => ( c2_1(X21)
              | ( ndr1_1(X21)
                & c3_2(X21,a489)
                & c5_2(X21,a489)
                & ~ c2_2(X21,a489) )
              | ( ndr1_1(X21)
                & c1_2(X21,a490)
                & ~ c3_2(X21,a490) ) ) ) )
      & ( ! [X22] :
            ( ndr1_0
           => ( ~ c3_1(X22)
              | c4_1(X22)
              | ~ c5_1(X22) ) )
        | c5_0
        | ~ c2_0 )
      & ( ( ndr1_0
          & c3_1(a491)
          & c5_1(a491) )
        | c3_0 ) ) ).

%--------------------------------------------------------------------------
