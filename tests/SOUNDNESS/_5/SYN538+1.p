%--------------------------------------------------------------------------
% File     : SYN538+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=40, K=3, D=2, P=0, Index=022
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-40-3-2-022.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.2.0, 0.25 v3.1.0, 0.17 v2.7.0, 0.33 v2.6.0, 0.25 v2.5.0, 0.00 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  340 (   0 equ)
%            Maximal formula atoms :  340 ( 340 avg)
%            Number of connectives :  465 ( 126   ~; 147   |; 139   &)
%                                         (   0 <=>;  53  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   45 (  45 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   41 (  41 usr;  41 con; 0-0 aty)
%            Number of variables   :   53 (  53   !;   0   ?)
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
    ~ ( ( ( ndr1_0
          & c2_1(a546)
          & ndr1_1(a546)
          & c2_2(a546,a547)
          & c5_2(a546,a547)
          & ~ c4_2(a546,a547) )
        | ! [U] :
            ( ndr1_0
           => ( ( ndr1_1(U)
                & ~ c1_2(U,a548)
                & c5_2(U,a548)
                & c2_2(U,a548) )
              | ( ndr1_1(U)
                & c5_2(U,a549)
                & c2_2(U,a549)
                & ~ c4_2(U,a549) )
              | ! [V] :
                  ( ndr1_1(U)
                 => ( c1_2(U,V)
                    | ~ c5_2(U,V) ) ) ) )
        | ! [W] :
            ( ndr1_0
           => ( ~ c1_1(W)
              | c2_1(W)
              | ! [X] :
                  ( ndr1_1(W)
                 => ( ~ c2_2(W,X)
                    | ~ c3_2(W,X) ) ) ) ) )
      & ( ~ c4_0
        | ~ c2_0 )
      & ( c3_0
        | ~ c4_0
        | ( ndr1_0
          & ~ c5_1(a550) ) )
      & ( c1_0
        | c4_0 )
      & ( ! [Y] :
            ( ndr1_0
           => ( ~ c3_1(Y)
              | ~ c4_1(Y) ) )
        | ( ndr1_0
          & ~ c1_1(a551)
          & ! [Z] :
              ( ndr1_1(a551)
             => ( ~ c4_2(a551,Z)
                | c1_2(a551,Z)
                | ~ c3_2(a551,Z) ) )
          & ! [X1] :
              ( ndr1_1(a551)
             => ( c5_2(a551,X1)
                | ~ c2_2(a551,X1)
                | c4_2(a551,X1) ) ) )
        | ~ c4_0 )
      & ( ! [X2] :
            ( ndr1_0
           => ( c4_1(X2)
              | ~ c3_1(X2)
              | ! [X3] :
                  ( ndr1_1(X2)
                 => ( c4_2(X2,X3)
                    | c1_2(X2,X3)
                    | ~ c3_2(X2,X3) ) ) ) )
        | ( ndr1_0
          & ndr1_1(a552)
          & c2_2(a552,a553)
          & ~ c3_2(a552,a553)
          & c1_2(a552,a553)
          & ndr1_1(a552)
          & ~ c2_2(a552,a554)
          & ~ c4_2(a552,a554) ) )
      & ( c5_0
        | c1_0
        | ! [X4] :
            ( ndr1_0
           => ( ( ndr1_1(X4)
                & ~ c5_2(X4,a555)
                & ~ c1_2(X4,a555)
                & ~ c4_2(X4,a555) )
              | c5_1(X4)
              | ~ c3_1(X4) ) ) )
      & ( ~ c3_0
        | c1_0
        | ! [X5] :
            ( ndr1_0
           => ( c4_1(X5)
              | c1_1(X5)
              | ~ c3_1(X5) ) ) )
      & ( ! [X6] :
            ( ndr1_0
           => ( ~ c5_1(X6)
              | ! [X7] :
                  ( ndr1_1(X6)
                 => ( c1_2(X6,X7)
                    | ~ c3_2(X6,X7)
                    | c2_2(X6,X7) ) )
              | c3_1(X6) ) )
        | ~ c2_0
        | c1_0 )
      & ( c5_0
        | ( ndr1_0
          & ~ c4_1(a556)
          & c5_1(a556) )
        | ! [X8] :
            ( ndr1_0
           => ( ( ndr1_1(X8)
                & c1_2(X8,a557)
                & ~ c3_2(X8,a557) )
              | c2_1(X8)
              | ( ndr1_1(X8)
                & ~ c5_2(X8,a558)
                & ~ c3_2(X8,a558)
                & c2_2(X8,a558) ) ) ) )
      & ( c2_0
        | ! [X9] :
            ( ndr1_0
           => ( ( ndr1_1(X9)
                & ~ c1_2(X9,a559)
                & c3_2(X9,a559)
                & c4_2(X9,a559) )
              | ! [X10] :
                  ( ndr1_1(X9)
                 => ( ~ c2_2(X9,X10)
                    | c1_2(X9,X10) ) )
              | ! [X11] :
                  ( ndr1_1(X9)
                 => ( c2_2(X9,X11)
                    | c5_2(X9,X11)
                    | ~ c3_2(X9,X11) ) ) ) )
        | ! [X12] :
            ( ndr1_0
           => ( ~ c4_1(X12)
              | ( ndr1_1(X12)
                & c5_2(X12,a560)
                & c3_2(X12,a560) )
              | ~ c3_1(X12) ) ) )
      & ( ( ndr1_0
          & ~ c1_1(a561)
          & ! [X13] :
              ( ndr1_1(a561)
             => ( ~ c5_2(a561,X13)
                | ~ c4_2(a561,X13)
                | ~ c2_2(a561,X13) ) ) )
        | ! [X14] :
            ( ndr1_0
           => ( ( ndr1_1(X14)
                & c2_2(X14,a562)
                & c5_2(X14,a562)
                & ~ c4_2(X14,a562) )
              | ( ndr1_1(X14)
                & c1_2(X14,a563)
                & ~ c2_2(X14,a563)
                & c4_2(X14,a563) )
              | c3_1(X14) ) )
        | ( ndr1_0
          & ~ c3_1(a564)
          & ~ c1_1(a564) ) )
      & ( c5_0
        | c4_0
        | ~ c3_0 )
      & ( c5_0
        | ! [X15] :
            ( ndr1_0
           => ( ~ c1_1(X15)
              | ! [X16] :
                  ( ndr1_1(X15)
                 => ( ~ c5_2(X15,X16)
                    | c1_2(X15,X16)
                    | ~ c4_2(X15,X16) ) )
              | c2_1(X15) ) ) )
      & ( ! [X17] :
            ( ndr1_0
           => ( c5_1(X17)
              | ~ c4_1(X17)
              | ! [X18] :
                  ( ndr1_1(X17)
                 => ( c3_2(X17,X18)
                    | ~ c2_2(X17,X18)
                    | c1_2(X17,X18) ) ) ) )
        | ~ c3_0 )
      & ( ~ c5_0
        | ~ c3_0
        | ( ndr1_0
          & ~ c1_1(a565)
          & ! [X19] :
              ( ndr1_1(a565)
             => ( ~ c1_2(a565,X19)
                | ~ c2_2(a565,X19) ) ) ) )
      & ( ! [X20] :
            ( ndr1_0
           => ( ! [X21] :
                  ( ndr1_1(X20)
                 => ( ~ c4_2(X20,X21)
                    | ~ c2_2(X20,X21)
                    | c3_2(X20,X21) ) )
              | ( ndr1_1(X20)
                & ~ c2_2(X20,a566)
                & ~ c3_2(X20,a566)
                & c4_2(X20,a566) )
              | ~ c1_1(X20) ) )
        | ! [X22] :
            ( ndr1_0
           => ( ~ c5_1(X22)
              | ~ c2_1(X22) ) ) )
      & ( ( ndr1_0
          & c1_1(a567)
          & ndr1_1(a567)
          & ~ c1_2(a567,a568)
          & c4_2(a567,a568)
          & c2_1(a567) )
        | ( ndr1_0
          & ~ c1_1(a569)
          & ~ c2_1(a569)
          & ! [X23] :
              ( ndr1_1(a569)
             => ( ~ c2_2(a569,X23)
                | c3_2(a569,X23) ) ) )
        | c5_0 )
      & ( ! [X24] :
            ( ndr1_0
           => ( ( ndr1_1(X24)
                & ~ c2_2(X24,a570)
                & ~ c3_2(X24,a570)
                & ~ c4_2(X24,a570) )
              | ~ c5_1(X24)
              | ! [X25] :
                  ( ndr1_1(X24)
                 => ( ~ c5_2(X24,X25)
                    | c2_2(X24,X25) ) ) ) )
        | c5_0
        | ~ c2_0 )
      & ( ( ndr1_0
          & ndr1_1(a571)
          & ~ c3_2(a571,a572)
          & ~ c1_2(a571,a572)
          & c5_2(a571,a572)
          & ndr1_1(a571)
          & c3_2(a571,a573)
          & ~ c4_2(a571,a573)
          & c1_2(a571,a573)
          & c1_1(a571) )
        | ! [X26] :
            ( ndr1_0
           => ( ~ c2_1(X26)
              | c1_1(X26)
              | ~ c4_1(X26) ) )
        | ~ c2_0 )
      & ( ( ndr1_0
          & ! [X27] :
              ( ndr1_1(a574)
             => ( c4_2(a574,X27)
                | ~ c1_2(a574,X27)
                | c3_2(a574,X27) ) )
          & c5_1(a574)
          & ~ c1_1(a574) )
        | c5_0
        | ! [X28] :
            ( ndr1_0
           => ( ~ c5_1(X28)
              | ! [X29] :
                  ( ndr1_1(X28)
                 => ( c2_2(X28,X29)
                    | ~ c1_2(X28,X29)
                    | ~ c3_2(X28,X29) ) )
              | c2_1(X28) ) ) )
      & ( ! [X30] :
            ( ndr1_0
           => ( ! [X31] :
                  ( ndr1_1(X30)
                 => ( c3_2(X30,X31)
                    | ~ c4_2(X30,X31)
                    | c1_2(X30,X31) ) )
              | ! [X32] :
                  ( ndr1_1(X30)
                 => ( c2_2(X30,X32)
                    | c4_2(X30,X32) ) )
              | c5_1(X30) ) )
        | c4_0
        | c1_0 )
      & ( ! [X33] :
            ( ndr1_0
           => ( ( ndr1_1(X33)
                & ~ c3_2(X33,a575)
                & c2_2(X33,a575)
                & c1_2(X33,a575) )
              | ~ c4_1(X33)
              | c2_1(X33) ) )
        | ! [X34] :
            ( ndr1_0
           => ( ~ c3_1(X34)
              | c4_1(X34) ) ) )
      & ( c3_0
        | ~ c2_0
        | c1_0 )
      & ( c2_0
        | ! [X35] :
            ( ndr1_0
           => ~ c2_1(X35) ) )
      & ( ! [X36] :
            ( ndr1_0
           => ( ( ndr1_1(X36)
                & ~ c5_2(X36,a576)
                & c2_2(X36,a576) )
              | ~ c2_1(X36)
              | c3_1(X36) ) )
        | ( ndr1_0
          & c1_1(a577)
          & c4_1(a577) )
        | c1_0 )
      & ( ~ c4_0
        | ( ndr1_0
          & ~ c2_1(a578)
          & ! [X37] :
              ( ndr1_1(a578)
             => ( c4_2(a578,X37)
                | ~ c5_2(a578,X37) ) )
          & c5_1(a578) )
        | c3_0 )
      & ( ! [X38] :
            ( ndr1_0
           => ( ! [X39] :
                  ( ndr1_1(X38)
                 => ( ~ c1_2(X38,X39)
                    | c5_2(X38,X39) ) )
              | c5_1(X38)
              | ~ c4_1(X38) ) )
        | ! [X40] :
            ( ndr1_0
           => ~ c3_1(X40) )
        | ! [X41] :
            ( ndr1_0
           => ( ~ c3_1(X41)
              | ( ndr1_1(X41)
                & c3_2(X41,a579)
                & ~ c2_2(X41,a579) )
              | ( ndr1_1(X41)
                & ~ c1_2(X41,a580)
                & c2_2(X41,a580) ) ) ) )
      & ( ! [X42] :
            ( ndr1_0
           => ( ~ c2_1(X42)
              | ~ c4_1(X42)
              | c3_1(X42) ) )
        | c3_0 )
      & ( ! [X43] :
            ( ndr1_0
           => ( c4_1(X43)
              | c5_1(X43)
              | ! [X44] :
                  ( ndr1_1(X43)
                 => ( ~ c1_2(X43,X44)
                    | c4_2(X43,X44)
                    | ~ c5_2(X43,X44) ) ) ) )
        | ~ c2_0
        | ( ndr1_0
          & c3_1(a581)
          & ~ c2_1(a581)
          & ndr1_1(a581)
          & ~ c2_2(a581,a582)
          & c5_2(a581,a582)
          & c1_2(a581,a582) ) )
      & ( c4_0
        | ( ndr1_0
          & ~ c4_1(a583)
          & c3_1(a583)
          & c5_1(a583) )
        | ( ndr1_0
          & ~ c2_1(a584)
          & ~ c5_1(a584) ) )
      & ( ~ c4_0
        | ( ndr1_0
          & c2_1(a585)
          & ~ c1_1(a585)
          & c5_1(a585) )
        | ~ c1_0 )
      & ( ~ c1_0
        | c3_0 )
      & ( ! [X45] :
            ( ndr1_0
           => ( c4_1(X45)
              | c1_1(X45)
              | c5_1(X45) ) )
        | ~ c3_0
        | ! [X46] :
            ( ndr1_0
           => ( ( ndr1_1(X46)
                & ~ c4_2(X46,a586)
                & ~ c1_2(X46,a586)
                & c5_2(X46,a586) )
              | ~ c5_1(X46)
              | ! [X47] :
                  ( ndr1_1(X46)
                 => ( c3_2(X46,X47)
                    | ~ c5_2(X46,X47) ) ) ) ) ) ) ).

%--------------------------------------------------------------------------
