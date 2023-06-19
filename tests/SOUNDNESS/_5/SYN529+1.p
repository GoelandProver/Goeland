%--------------------------------------------------------------------------
% File     : SYN529+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=25, K=3, D=2, P=0, Index=033
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-25-3-2-033.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.1.0, 0.17 v2.6.0, 0.00 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  242 (   0 equ)
%            Maximal formula atoms :  242 ( 242 avg)
%            Number of connectives :  314 (  73   ~;  84   |; 132   &)
%                                         (   0 <=>;  25  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   36 (  36 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   43 (  43 usr;  43 con; 0-0 aty)
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
    ~ ( ( c2_0
        | ~ c5_0 )
      & ( ~ c4_0
        | ~ c3_0
        | ~ c2_0 )
      & ( c4_0
        | ( ndr1_0
          & ndr1_1(a314)
          & ~ c3_2(a314,a315)
          & ~ c2_2(a314,a315)
          & ~ c1_2(a314,a315)
          & c4_1(a314)
          & ! [U] :
              ( ndr1_1(a314)
             => ( ~ c1_2(a314,U)
                | c4_2(a314,U)
                | c3_2(a314,U) ) ) )
        | ! [V] :
            ( ndr1_0
           => ( ! [W] :
                  ( ndr1_1(V)
                 => ( c4_2(V,W)
                    | c3_2(V,W)
                    | c1_2(V,W) ) )
              | ~ c4_1(V)
              | c5_1(V) ) ) )
      & ( ( ndr1_0
          & ~ c4_1(a316)
          & ndr1_1(a316)
          & c3_2(a316,a317)
          & ~ c4_2(a316,a317)
          & c2_2(a316,a317)
          & c1_1(a316) )
        | ( ndr1_0
          & ndr1_1(a318)
          & c4_2(a318,a319)
          & c2_2(a318,a319)
          & ndr1_1(a318)
          & c2_2(a318,a320)
          & ~ c4_2(a318,a320) )
        | ~ c4_0 )
      & ( ! [X] :
            ( ndr1_0
           => ( ! [Y] :
                  ( ndr1_1(X)
                 => ( ~ c4_2(X,Y)
                    | c2_2(X,Y)
                    | ~ c3_2(X,Y) ) )
              | ( ndr1_1(X)
                & ~ c1_2(X,a321)
                & c5_2(X,a321)
                & ~ c2_2(X,a321) )
              | ~ c2_1(X) ) )
        | c4_0
        | ( ndr1_0
          & c3_1(a322)
          & ndr1_1(a322)
          & ~ c4_2(a322,a323)
          & c5_2(a322,a323)
          & ~ c1_2(a322,a323) ) )
      & ( ! [Z] :
            ( ndr1_0
           => ( c1_1(Z)
              | c5_1(Z) ) )
        | ! [X1] :
            ( ndr1_0
           => ( ~ c2_1(X1)
              | c4_1(X1) ) )
        | ! [X2] :
            ( ndr1_0
           => ( c4_1(X2)
              | ! [X3] :
                  ( ndr1_1(X2)
                 => ( c5_2(X2,X3)
                    | c4_2(X2,X3) ) )
              | c2_1(X2) ) ) )
      & ( c2_0
        | ~ c3_0 )
      & ( c5_0
        | ( ndr1_0
          & ! [X4] :
              ( ndr1_1(a324)
             => ( c3_2(a324,X4)
                | c2_2(a324,X4)
                | ~ c4_2(a324,X4) ) )
          & ndr1_1(a324)
          & c1_2(a324,a325)
          & c5_2(a324,a325)
          & ! [X5] :
              ( ndr1_1(a324)
             => ( c3_2(a324,X5)
                | c1_2(a324,X5) ) ) )
        | ( ndr1_0
          & c2_1(a326)
          & c4_1(a326)
          & ndr1_1(a326)
          & ~ c2_2(a326,a327)
          & ~ c5_2(a326,a327)
          & c3_2(a326,a327) ) )
      & ( ( ndr1_0
          & ~ c2_1(a328)
          & c5_1(a328) )
        | c4_0
        | ( ndr1_0
          & ndr1_1(a329)
          & ~ c2_2(a329,a330)
          & ! [X6] :
              ( ndr1_1(a329)
             => ( ~ c4_2(a329,X6)
                | ~ c5_2(a329,X6)
                | c1_2(a329,X6) ) )
          & c1_1(a329) ) )
      & ( ~ c4_0
        | ( ndr1_0
          & ndr1_1(a331)
          & c1_2(a331,a332)
          & c2_2(a331,a332)
          & ~ c5_2(a331,a332)
          & c5_1(a331)
          & c3_1(a331) )
        | ( ndr1_0
          & ~ c3_1(a333) ) )
      & ( ! [X7] :
            ( ndr1_0
           => ( c3_1(X7)
              | ( ndr1_1(X7)
                & c4_2(X7,a334)
                & c2_2(X7,a334) )
              | c5_1(X7) ) )
        | c1_0 )
      & ( ( ndr1_0
          & ndr1_1(a335)
          & c4_2(a335,a336)
          & c5_2(a335,a336)
          & c2_2(a335,a336)
          & ndr1_1(a335)
          & c1_2(a335,a337)
          & c5_2(a335,a337)
          & ~ c3_2(a335,a337) )
        | c4_0
        | c5_0 )
      & ( ~ c5_0
        | ( ndr1_0
          & c1_1(a338)
          & c4_1(a338)
          & ndr1_1(a338)
          & c1_2(a338,a339)
          & ~ c3_2(a338,a339)
          & ~ c4_2(a338,a339) )
        | ! [X8] :
            ( ndr1_0
           => ( ! [X9] :
                  ( ndr1_1(X8)
                 => ( ~ c3_2(X8,X9)
                    | c2_2(X8,X9)
                    | c1_2(X8,X9) ) )
              | ( ndr1_1(X8)
                & ~ c4_2(X8,a340)
                & ~ c1_2(X8,a340)
                & c2_2(X8,a340) )
              | ( ndr1_1(X8)
                & c2_2(X8,a341)
                & c4_2(X8,a341)
                & c3_2(X8,a341) ) ) ) )
      & ( c3_0
        | c5_0
        | ~ c1_0 )
      & ( c4_0
        | ! [X10] :
            ( ndr1_0
           => ( ( ndr1_1(X10)
                & c5_2(X10,a342)
                & c2_2(X10,a342) )
              | ~ c4_1(X10)
              | c5_1(X10) ) ) )
      & ( ~ c3_0
        | ~ c5_0
        | c4_0 )
      & ( ! [X11] :
            ( ndr1_0
           => ( ! [X12] :
                  ( ndr1_1(X11)
                 => ( c4_2(X11,X12)
                    | c3_2(X11,X12)
                    | c2_2(X11,X12) ) )
              | c3_1(X11)
              | ~ c2_1(X11) ) )
        | c5_0 )
      & ( ( ndr1_0
          & ~ c1_1(a343)
          & c2_1(a343) )
        | c3_0 )
      & ( ( ndr1_0
          & ndr1_1(a344)
          & c3_2(a344,a345)
          & ~ c1_2(a344,a345)
          & ~ c2_1(a344)
          & ! [X13] :
              ( ndr1_1(a344)
             => ( ~ c2_2(a344,X13)
                | ~ c1_2(a344,X13)
                | ~ c5_2(a344,X13) ) ) )
        | c5_0
        | ( ndr1_0
          & c4_1(a346)
          & ndr1_1(a346)
          & ~ c5_2(a346,a347)
          & c1_2(a346,a347)
          & c3_1(a346) ) )
      & ( ( ndr1_0
          & ~ c3_1(a348)
          & ! [X14] :
              ( ndr1_1(a348)
             => ( c5_2(a348,X14)
                | ~ c4_2(a348,X14)
                | ~ c2_2(a348,X14) ) )
          & ndr1_1(a348)
          & ~ c5_2(a348,a349)
          & c2_2(a348,a349) )
        | ! [X15] :
            ( ndr1_0
           => ( ( ndr1_1(X15)
                & c2_2(X15,a350)
                & ~ c3_2(X15,a350)
                & ~ c1_2(X15,a350) )
              | ~ c3_1(X15)
              | ! [X16] :
                  ( ndr1_1(X15)
                 => ( c1_2(X15,X16)
                    | ~ c4_2(X15,X16)
                    | c5_2(X15,X16) ) ) ) ) )
      & ( c4_0
        | ~ c1_0
        | ~ c5_0 )
      & ( ( ndr1_0
          & ~ c1_1(a351)
          & ndr1_1(a351)
          & c2_2(a351,a352)
          & ~ c1_2(a351,a352)
          & ~ c4_2(a351,a352)
          & c4_1(a351) )
        | c3_0
        | ( ndr1_0
          & ! [X17] :
              ( ndr1_1(a353)
             => ( ~ c2_2(a353,X17)
                | c3_2(a353,X17)
                | ~ c5_2(a353,X17) ) )
          & ndr1_1(a353)
          & c2_2(a353,a354)
          & c3_2(a353,a354)
          & ! [X18] :
              ( ndr1_1(a353)
             => ( ~ c1_2(a353,X18)
                | ~ c4_2(a353,X18)
                | c3_2(a353,X18) ) ) ) )
      & ( ( ndr1_0
          & ndr1_1(a355)
          & ~ c4_2(a355,a356)
          & ~ c5_2(a355,a356)
          & ! [X19] :
              ( ndr1_1(a355)
             => ( c3_2(a355,X19)
                | ~ c1_2(a355,X19) ) )
          & ~ c3_1(a355) )
        | c2_0
        | c5_0 ) ) ).

%--------------------------------------------------------------------------
