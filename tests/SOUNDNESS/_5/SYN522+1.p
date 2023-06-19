%--------------------------------------------------------------------------
% File     : SYN522+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=20, K=3, D=2, P=0, Index=051
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-20-3-2-051.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.2.0, 0.25 v3.1.0, 0.00 v2.7.0, 0.17 v2.6.0, 0.00 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  226 (   0 equ)
%            Maximal formula atoms :  226 ( 226 avg)
%            Number of connectives :  304 (  79   ~;  79   |; 118   &)
%                                         (   0 <=>;  28  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   28 (  28 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   37 (  37 usr;  37 con; 0-0 aty)
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
    ~ ( ( ! [U] :
            ( ndr1_0
           => ( ! [V] :
                  ( ndr1_1(U)
                 => ( c2_2(U,V)
                    | ~ c5_2(U,V)
                    | c3_2(U,V) ) )
              | ( ndr1_1(U)
                & c4_2(U,a104)
                & c3_2(U,a104)
                & ~ c1_2(U,a104) )
              | ( ndr1_1(U)
                & ~ c4_2(U,a105)
                & ~ c3_2(U,a105)
                & c2_2(U,a105) ) ) )
        | ( ndr1_0
          & ~ c5_1(a106)
          & ndr1_1(a106)
          & c1_2(a106,a107)
          & c4_2(a106,a107)
          & c2_2(a106,a107) )
        | ( ndr1_0
          & c3_1(a108)
          & ~ c4_1(a108)
          & ! [W] :
              ( ndr1_1(a108)
             => ( c4_2(a108,W)
                | c2_2(a108,W)
                | c1_2(a108,W) ) ) ) )
      & ( ( ndr1_0
          & ~ c1_1(a109)
          & c3_1(a109) )
        | ( ndr1_0
          & ~ c4_1(a110)
          & ~ c3_1(a110)
          & ! [X] :
              ( ndr1_1(a110)
             => ( c1_2(a110,X)
                | c5_2(a110,X) ) ) )
        | ! [Y] :
            ( ndr1_0
           => ( ~ c5_1(Y)
              | ! [Z] :
                  ( ndr1_1(Y)
                 => ( ~ c5_2(Y,Z)
                    | ~ c1_2(Y,Z)
                    | ~ c3_2(Y,Z) ) )
              | ~ c3_1(Y) ) ) )
      & ( ! [X1] :
            ( ndr1_0
           => ( ( ndr1_1(X1)
                & c5_2(X1,a111)
                & ~ c3_2(X1,a111)
                & c2_2(X1,a111) )
              | ! [X2] :
                  ( ndr1_1(X1)
                 => ( c1_2(X1,X2)
                    | c4_2(X1,X2)
                    | ~ c2_2(X1,X2) ) )
              | ~ c4_1(X1) ) )
        | ~ c1_0
        | ( ndr1_0
          & ! [X3] :
              ( ndr1_1(a112)
             => ( c5_2(a112,X3)
                | c1_2(a112,X3) ) )
          & ! [X4] :
              ( ndr1_1(a112)
             => ( c1_2(a112,X4)
                | c5_2(a112,X4) ) )
          & ndr1_1(a112)
          & c2_2(a112,a113)
          & ~ c5_2(a112,a113)
          & ~ c3_2(a112,a113) ) )
      & ( ~ c1_0
        | c5_0
        | ! [X5] :
            ( ndr1_0
           => ( ~ c3_1(X5)
              | ~ c4_1(X5)
              | ! [X6] :
                  ( ndr1_1(X5)
                 => ( c4_2(X5,X6)
                    | c5_2(X5,X6) ) ) ) ) )
      & ( c2_0
        | ( ndr1_0
          & ~ c1_1(a114)
          & ! [X7] :
              ( ndr1_1(a114)
             => ( ~ c3_2(a114,X7)
                | c5_2(a114,X7) ) )
          & ! [X8] :
              ( ndr1_1(a114)
             => ( c1_2(a114,X8)
                | c5_2(a114,X8)
                | c4_2(a114,X8) ) ) ) )
      & ( ~ c3_0
        | ! [X9] :
            ( ndr1_0
           => ( ( ndr1_1(X9)
                & c2_2(X9,a115)
                & c5_2(X9,a115)
                & ~ c4_2(X9,a115) )
              | ( ndr1_1(X9)
                & c5_2(X9,a116)
                & ~ c2_2(X9,a116)
                & c1_2(X9,a116) )
              | ( ndr1_1(X9)
                & c4_2(X9,a117)
                & ~ c5_2(X9,a117)
                & c3_2(X9,a117) ) ) )
        | ! [X10] :
            ( ndr1_0
           => ( c2_1(X10)
              | ~ c4_1(X10) ) ) )
      & ( ~ c5_0
        | c3_0
        | ~ c1_0 )
      & ( ( ndr1_0
          & c5_1(a118)
          & c1_1(a118)
          & ~ c2_1(a118) )
        | c1_0 )
      & ( ~ c4_0
        | c3_0
        | ! [X11] :
            ( ndr1_0
           => ( ( ndr1_1(X11)
                & ~ c3_2(X11,a119)
                & c4_2(X11,a119)
                & ~ c2_2(X11,a119) )
              | c4_1(X11)
              | ( ndr1_1(X11)
                & c2_2(X11,a120)
                & c5_2(X11,a120)
                & ~ c1_2(X11,a120) ) ) ) )
      & ( ~ c1_0
        | ( ndr1_0
          & ndr1_1(a121)
          & c3_2(a121,a122)
          & ~ c2_2(a121,a122)
          & ! [X12] :
              ( ndr1_1(a121)
             => ( c3_2(a121,X12)
                | ~ c1_2(a121,X12)
                | ~ c4_2(a121,X12) ) )
          & ! [X13] :
              ( ndr1_1(a121)
             => ( ~ c5_2(a121,X13)
                | ~ c1_2(a121,X13)
                | c3_2(a121,X13) ) ) ) )
      & ( c4_0
        | ( ndr1_0
          & ndr1_1(a123)
          & c1_2(a123,a124)
          & ~ c2_2(a123,a124)
          & c5_1(a123)
          & ~ c1_1(a123) ) )
      & ( ( ndr1_0
          & ndr1_1(a125)
          & ~ c3_2(a125,a126)
          & ~ c5_2(a125,a126)
          & c1_2(a125,a126)
          & ~ c4_1(a125)
          & ndr1_1(a125)
          & ~ c4_2(a125,a127)
          & ~ c3_2(a125,a127)
          & ~ c2_2(a125,a127) )
        | ( ndr1_0
          & ndr1_1(a128)
          & ~ c1_2(a128,a129)
          & c4_2(a128,a129)
          & c2_2(a128,a129)
          & ~ c2_1(a128)
          & c3_1(a128) )
        | ( ndr1_0
          & ! [X14] :
              ( ndr1_1(a130)
             => ( ~ c3_2(a130,X14)
                | ~ c2_2(a130,X14)
                | ~ c4_2(a130,X14) ) )
          & ! [X15] :
              ( ndr1_1(a130)
             => ( c5_2(a130,X15)
                | c2_2(a130,X15) ) )
          & ~ c1_1(a130) ) )
      & ( ! [X16] :
            ( ndr1_0
           => ( ( ndr1_1(X16)
                & ~ c4_2(X16,a131)
                & ~ c1_2(X16,a131) )
              | c5_1(X16)
              | ( ndr1_1(X16)
                & c2_2(X16,a132)
                & c5_2(X16,a132)
                & c1_2(X16,a132) ) ) )
        | c2_0
        | ( ndr1_0
          & ~ c5_1(a133)
          & ~ c2_1(a133) ) )
      & ( ( ndr1_0
          & ! [X17] :
              ( ndr1_1(a134)
             => ( c4_2(a134,X17)
                | ~ c5_2(a134,X17)
                | c1_2(a134,X17) ) )
          & ! [X18] :
              ( ndr1_1(a134)
             => ( ~ c2_2(a134,X18)
                | ~ c3_2(a134,X18)
                | ~ c1_2(a134,X18) ) )
          & ~ c2_1(a134) )
        | ( ndr1_0
          & ~ c3_1(a135)
          & ndr1_1(a135)
          & ~ c3_2(a135,a136)
          & ~ c1_2(a135,a136)
          & c1_1(a135) )
        | c4_0 )
      & ( ( ndr1_0
          & c4_1(a137)
          & c1_1(a137) )
        | ~ c3_0
        | ~ c4_0 )
      & ( ~ c2_0
        | ! [X19] :
            ( ndr1_0
           => ( ( ndr1_1(X19)
                & c5_2(X19,a138)
                & ~ c4_2(X19,a138) )
              | c5_1(X19)
              | ! [X20] :
                  ( ndr1_1(X19)
                 => ( c5_2(X19,X20)
                    | c2_2(X19,X20)
                    | c3_2(X19,X20) ) ) ) )
        | ~ c4_0 )
      & c4_0
      & ( ! [X21] :
            ( ndr1_0
           => ( ! [X22] :
                  ( ndr1_1(X21)
                 => ( c1_2(X21,X22)
                    | c2_2(X21,X22)
                    | c3_2(X21,X22) ) )
              | ~ c4_1(X21)
              | ~ c5_1(X21) ) )
        | c3_0
        | ( ndr1_0
          & ndr1_1(a139)
          & c2_2(a139,a140)
          & c1_2(a139,a140)
          & ~ c4_2(a139,a140)
          & ~ c5_1(a139) ) ) ) ).

%--------------------------------------------------------------------------
