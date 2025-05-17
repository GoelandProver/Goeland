%--------------------------------------------------------------------------
% File     : SYN537+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=40, K=3, D=2, P=0, Index=014
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-40-3-2-014.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.7.0, 0.17 v2.6.0, 0.00 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  293 (   0 equ)
%            Maximal formula atoms :  293 ( 293 avg)
%            Number of connectives :  413 ( 121   ~; 114   |; 140   &)
%                                         (   0 <=>;  38  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   41 (  41 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   41 (  41 usr;  41 con; 0-0 aty)
%            Number of variables   :   38 (  38   !;   0   ?)
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
           => ( c1_1(U)
              | ( ndr1_1(U)
                & c2_2(U,a640)
                & ~ c5_2(U,a640)
                & c3_2(U,a640) )
              | ! [V] :
                  ( ndr1_1(U)
                 => ( ~ c2_2(U,V)
                    | ~ c1_2(U,V)
                    | c3_2(U,V) ) ) ) )
        | ! [W] :
            ( ndr1_0
           => ( ~ c1_1(W)
              | ~ c5_1(W)
              | c3_1(W) ) )
        | ~ c5_0 )
      & ( ~ c3_0
        | ~ c4_0
        | ( ndr1_0
          & ndr1_1(a641)
          & ~ c1_2(a641,a642)
          & ~ c3_2(a641,a642)
          & ! [X] :
              ( ndr1_1(a641)
             => ( ~ c4_2(a641,X)
                | ~ c5_2(a641,X)
                | c3_2(a641,X) ) ) ) )
      & ( ~ c4_0
        | ~ c1_0
        | ~ c2_0 )
      & ( ( ndr1_0
          & ndr1_1(a643)
          & ~ c2_2(a643,a644)
          & c5_2(a643,a644)
          & ~ c1_1(a643)
          & c4_1(a643) )
        | ( ndr1_0
          & ~ c1_1(a645)
          & ndr1_1(a645)
          & c3_2(a645,a646)
          & c2_2(a645,a646)
          & ~ c5_2(a645,a646)
          & ~ c2_1(a645) )
        | ~ c3_0 )
      & ( ! [Y] :
            ( ndr1_0
           => ( ~ c3_1(Y)
              | ~ c1_1(Y)
              | ~ c4_1(Y) ) )
        | ~ c2_0
        | c1_0 )
      & ( ! [Z] :
            ( ndr1_0
           => ( ! [X1] :
                  ( ndr1_1(Z)
                 => ( ~ c4_2(Z,X1)
                    | ~ c1_2(Z,X1)
                    | ~ c3_2(Z,X1) ) )
              | c1_1(Z)
              | c2_1(Z) ) )
        | ~ c3_0
        | c1_0 )
      & ( c5_0
        | ~ c4_0 )
      & ( c3_0
        | c5_0
        | ! [X2] :
            ( ndr1_0
           => ( ( ndr1_1(X2)
                & c5_2(X2,a647)
                & ~ c2_2(X2,a647)
                & ~ c1_2(X2,a647) )
              | c1_1(X2)
              | ~ c2_1(X2) ) ) )
      & ( c4_0
        | ! [X3] :
            ( ndr1_0
           => ( ! [X4] :
                  ( ndr1_1(X3)
                 => ( ~ c1_2(X3,X4)
                    | c4_2(X3,X4) ) )
              | c1_1(X3)
              | ! [X5] :
                  ( ndr1_1(X3)
                 => ( c3_2(X3,X5)
                    | ~ c1_2(X3,X5)
                    | c5_2(X3,X5) ) ) ) )
        | ( ndr1_0
          & ~ c3_1(a648)
          & ! [X6] :
              ( ndr1_1(a648)
             => ( ~ c1_2(a648,X6)
                | ~ c3_2(a648,X6) ) )
          & ! [X7] :
              ( ndr1_1(a648)
             => ( ~ c5_2(a648,X7)
                | c4_2(a648,X7)
                | ~ c2_2(a648,X7) ) ) ) )
      & ( ! [X8] :
            ( ndr1_0
           => ( ~ c4_1(X8)
              | ( ndr1_1(X8)
                & c4_2(X8,a649)
                & c1_2(X8,a649)
                & ~ c5_2(X8,a649) )
              | ( ndr1_1(X8)
                & c5_2(X8,a650)
                & ~ c3_2(X8,a650)
                & c4_2(X8,a650) ) ) )
        | c3_0 )
      & ( ( ndr1_0
          & ndr1_1(a651)
          & ~ c5_2(a651,a652)
          & c1_2(a651,a652)
          & ~ c2_2(a651,a652)
          & ! [X9] :
              ( ndr1_1(a651)
             => ( ~ c1_2(a651,X9)
                | c5_2(a651,X9)
                | c3_2(a651,X9) ) ) )
        | ~ c5_0
        | ~ c1_0 )
      & ( ! [X10] :
            ( ndr1_0
           => ( c5_1(X10)
              | c1_1(X10) ) )
        | ( ndr1_0
          & ! [X11] :
              ( ndr1_1(a653)
             => ( c3_2(a653,X11)
                | c1_2(a653,X11) ) )
          & ~ c4_1(a653)
          & ~ c1_1(a653) )
        | ~ c4_0 )
      & ( ( ndr1_0
          & ndr1_1(a654)
          & c5_2(a654,a655)
          & ~ c4_2(a654,a655)
          & c3_2(a654,a655)
          & ~ c1_1(a654)
          & ~ c5_1(a654) )
        | ! [X12] :
            ( ndr1_0
           => ! [X13] :
                ( ndr1_1(X12)
               => ( c5_2(X12,X13)
                  | ~ c4_2(X12,X13)
                  | c1_2(X12,X13) ) ) )
        | ~ c2_0 )
      & ( ~ c1_0
        | ! [X14] :
            ( ndr1_0
           => ( ~ c3_1(X14)
              | ! [X15] :
                  ( ndr1_1(X14)
                 => ( ~ c4_2(X14,X15)
                    | ~ c1_2(X14,X15)
                    | c3_2(X14,X15) ) ) ) )
        | ~ c4_0 )
      & ( c5_0
        | ! [X16] :
            ( ndr1_0
           => ( c5_1(X16)
              | ~ c2_1(X16)
              | ( ndr1_1(X16)
                & ~ c2_2(X16,a656)
                & ~ c1_2(X16,a656)
                & ~ c3_2(X16,a656) ) ) ) )
      & ( ! [X17] :
            ( ndr1_0
           => ( c2_1(X17)
              | ( ndr1_1(X17)
                & ~ c4_2(X17,a657)
                & ~ c1_2(X17,a657)
                & ~ c5_2(X17,a657) ) ) )
        | ! [X18] :
            ( ndr1_0
           => ( c4_1(X18)
              | ( ndr1_1(X18)
                & c4_2(X18,a658)
                & c5_2(X18,a658) )
              | ! [X19] :
                  ( ndr1_1(X18)
                 => ( c5_2(X18,X19)
                    | ~ c2_2(X18,X19)
                    | c1_2(X18,X19) ) ) ) )
        | c3_0 )
      & ( ( ndr1_0
          & ! [X20] :
              ( ndr1_1(a659)
             => ( c5_2(a659,X20)
                | ~ c1_2(a659,X20)
                | ~ c3_2(a659,X20) ) )
          & ~ c1_1(a659)
          & c2_1(a659) )
        | c5_0 )
      & ( ( ndr1_0
          & ~ c4_1(a660)
          & ndr1_1(a660)
          & ~ c4_2(a660,a661)
          & c2_2(a660,a661)
          & ~ c3_2(a660,a661)
          & ndr1_1(a660)
          & ~ c4_2(a660,a662)
          & ~ c5_2(a660,a662)
          & ~ c2_2(a660,a662) )
        | c4_0
        | c2_0 )
      & ( c5_0
        | ( ndr1_0
          & ! [X21] :
              ( ndr1_1(a663)
             => ( c4_2(a663,X21)
                | c1_2(a663,X21)
                | c2_2(a663,X21) ) )
          & c4_1(a663)
          & ndr1_1(a663)
          & ~ c5_2(a663,a664)
          & c1_2(a663,a664) )
        | ~ c3_0 )
      & ( ( ndr1_0
          & ~ c5_1(a665)
          & c3_1(a665)
          & ! [X22] :
              ( ndr1_1(a665)
             => ( c5_2(a665,X22)
                | ~ c1_2(a665,X22) ) ) )
        | c2_0
        | c4_0 )
      & ( c2_0
        | ( ndr1_0
          & ~ c1_1(a666)
          & c3_1(a666)
          & ! [X23] :
              ( ndr1_1(a666)
             => ( c3_2(a666,X23)
                | ~ c5_2(a666,X23) ) ) )
        | ( ndr1_0
          & ~ c4_1(a667)
          & ndr1_1(a667)
          & ~ c4_2(a667,a668)
          & ~ c1_2(a667,a668) ) )
      & ( ( ndr1_0
          & ! [X24] :
              ( ndr1_1(a669)
             => ( c3_2(a669,X24)
                | ~ c4_2(a669,X24)
                | c2_2(a669,X24) ) )
          & ~ c1_1(a669)
          & ndr1_1(a669)
          & ~ c5_2(a669,a670)
          & c1_2(a669,a670)
          & ~ c2_2(a669,a670) )
        | ~ c5_0 )
      & ~ c3_0
      & ( c5_0
        | c1_0
        | ( ndr1_0
          & ! [X25] :
              ( ndr1_1(a671)
             => ( c5_2(a671,X25)
                | ~ c2_2(a671,X25) ) )
          & ~ c5_1(a671)
          & ! [X26] :
              ( ndr1_1(a671)
             => ( ~ c4_2(a671,X26)
                | c5_2(a671,X26)
                | ~ c1_2(a671,X26) ) ) ) )
      & ( c4_0
        | ( ndr1_0
          & ~ c5_1(a672)
          & ! [X27] :
              ( ndr1_1(a672)
             => ( c1_2(a672,X27)
                | c4_2(a672,X27)
                | ~ c5_2(a672,X27) ) )
          & ~ c1_1(a672) )
        | ! [X28] :
            ( ndr1_0
           => ( c2_1(X28)
              | ( ndr1_1(X28)
                & ~ c5_2(X28,a673)
                & ~ c4_2(X28,a673)
                & ~ c1_2(X28,a673) )
              | ~ c3_1(X28) ) ) )
      & ( ~ c2_0
        | ( ndr1_0
          & c4_1(a674)
          & c2_1(a674) ) )
      & c1_0
      & ( ( ndr1_0
          & c3_1(a675)
          & c5_1(a675) )
        | ! [X29] :
            ( ndr1_0
           => ( c5_1(X29)
              | ! [X30] :
                  ( ndr1_1(X29)
                 => ( ~ c2_2(X29,X30)
                    | c1_2(X29,X30)
                    | ~ c4_2(X29,X30) ) )
              | ~ c1_1(X29) ) )
        | ~ c5_0 )
      & ( ~ c2_0
        | ~ c5_0
        | ( ndr1_0
          & ndr1_1(a676)
          & ~ c4_2(a676,a677)
          & ~ c2_2(a676,a677)
          & ~ c3_2(a676,a677)
          & c3_1(a676)
          & c4_1(a676) ) )
      & ( ( ndr1_0
          & ~ c2_1(a678)
          & ~ c4_1(a678) )
        | ( ndr1_0
          & ~ c4_1(a679)
          & ! [X31] :
              ( ndr1_1(a679)
             => ( c1_2(a679,X31)
                | c5_2(a679,X31)
                | c3_2(a679,X31) ) )
          & ~ c5_1(a679) )
        | ( ndr1_0
          & ! [X32] :
              ( ndr1_1(a680)
             => ( ~ c1_2(a680,X32)
                | c2_2(a680,X32) ) )
          & ~ c3_1(a680) ) ) ) ).

%--------------------------------------------------------------------------
