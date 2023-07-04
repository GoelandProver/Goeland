%--------------------------------------------------------------------------
% File     : SYN536+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=25, K=3, D=2, P=0, Index=096
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-25-3-2-096.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  209 (   0 equ)
%            Maximal formula atoms :  209 ( 209 avg)
%            Number of connectives :  275 (  67   ~;  89   |;  86   &)
%                                         (   0 <=>;  33  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   30 (  30 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   26 (  26 usr;  26 con; 0-0 aty)
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
    ~ ( ( ! [U] :
            ( ndr1_0
           => ( c5_1(U)
              | ! [V] :
                  ( ndr1_1(U)
                 => ( c3_2(U,V)
                    | ~ c2_2(U,V) ) ) ) )
        | ~ c4_0
        | c2_0 )
      & ( ( ndr1_0
          & ~ c5_1(a520)
          & ! [W] :
              ( ndr1_1(a520)
             => ( ~ c1_2(a520,W)
                | ~ c5_2(a520,W)
                | ~ c3_2(a520,W) ) )
          & c1_1(a520) )
        | c5_0
        | c3_0 )
      & ( ( ndr1_0
          & ~ c2_1(a521)
          & ! [X] :
              ( ndr1_1(a521)
             => ( c1_2(a521,X)
                | ~ c2_2(a521,X)
                | ~ c5_2(a521,X) ) )
          & ~ c1_1(a521) )
        | ! [Y] :
            ( ndr1_0
           => ( ( ndr1_1(Y)
                & c5_2(Y,a522)
                & c2_2(Y,a522) )
              | ~ c3_1(Y)
              | c5_1(Y) ) ) )
      & ( ! [Z] :
            ( ndr1_0
           => ( ( ndr1_1(Z)
                & ~ c3_2(Z,a523)
                & ~ c1_2(Z,a523) )
              | ! [X1] :
                  ( ndr1_1(Z)
                 => ( c1_2(Z,X1)
                    | c2_2(Z,X1)
                    | c3_2(Z,X1) ) )
              | c4_1(Z) ) )
        | ! [X2] :
            ( ndr1_0
           => ( ! [X3] :
                  ( ndr1_1(X2)
                 => ( ~ c1_2(X2,X3)
                    | ~ c2_2(X2,X3)
                    | ~ c3_2(X2,X3) ) )
              | ( ndr1_1(X2)
                & c1_2(X2,a524)
                & c5_2(X2,a524)
                & ~ c4_2(X2,a524) )
              | c4_1(X2) ) )
        | ~ c3_0 )
      & ( c4_0
        | c1_0
        | c5_0 )
      & ( ~ c2_0
        | ( ndr1_0
          & ~ c2_1(a525)
          & ndr1_1(a525)
          & ~ c1_2(a525,a526)
          & c2_2(a525,a526)
          & c4_2(a525,a526)
          & c3_1(a525) ) )
      & ( ( ndr1_0
          & c5_1(a527)
          & ndr1_1(a527)
          & ~ c3_2(a527,a528)
          & c1_2(a527,a528)
          & ~ c3_1(a527) )
        | ( ndr1_0
          & c4_1(a529)
          & ndr1_1(a529)
          & c5_2(a529,a530)
          & c4_2(a529,a530)
          & c1_2(a529,a530)
          & ndr1_1(a529)
          & c1_2(a529,a531)
          & c5_2(a529,a531) )
        | ~ c4_0 )
      & ( c2_0
        | ~ c5_0 )
      & ( ! [X4] :
            ( ndr1_0
           => ( ! [X5] :
                  ( ndr1_1(X4)
                 => ( c2_2(X4,X5)
                    | c4_2(X4,X5)
                    | ~ c3_2(X4,X5) ) )
              | ! [X6] :
                  ( ndr1_1(X4)
                 => ( ~ c1_2(X4,X6)
                    | c4_2(X4,X6) ) )
              | ! [X7] :
                  ( ndr1_1(X4)
                 => ( ~ c3_2(X4,X7)
                    | ~ c5_2(X4,X7)
                    | c4_2(X4,X7) ) ) ) )
        | ! [X8] :
            ( ndr1_0
           => ( c2_1(X8)
              | ~ c5_1(X8) ) )
        | c1_0 )
      & ( ! [X9] :
            ( ndr1_0
           => ( ( ndr1_1(X9)
                & c4_2(X9,a532)
                & ~ c3_2(X9,a532)
                & ~ c5_2(X9,a532) )
              | c1_1(X9) ) )
        | ( ndr1_0
          & ! [X10] :
              ( ndr1_1(a533)
             => ( c4_2(a533,X10)
                | c5_2(a533,X10)
                | ~ c3_2(a533,X10) ) )
          & ~ c3_1(a533) )
        | ~ c2_0 )
      & ( c5_0
        | ! [X11] :
            ( ndr1_0
           => ( c1_1(X11)
              | c5_1(X11)
              | c4_1(X11) ) )
        | ! [X12] :
            ( ndr1_0
           => ( ! [X13] :
                  ( ndr1_1(X12)
                 => ( c3_2(X12,X13)
                    | c1_2(X12,X13)
                    | c4_2(X12,X13) ) )
              | ( ndr1_1(X12)
                & c4_2(X12,a534)
                & ~ c3_2(X12,a534) )
              | c3_1(X12) ) ) )
      & ( ~ c1_0
        | ~ c3_0
        | ! [X14] :
            ( ndr1_0
           => ( ! [X15] :
                  ( ndr1_1(X14)
                 => ( c3_2(X14,X15)
                    | c2_2(X14,X15) ) )
              | c5_1(X14) ) ) )
      & ( c5_0
        | ~ c3_0 )
      & ( ~ c4_0
        | ! [X16] :
            ( ndr1_0
           => ( c1_1(X16)
              | ( ndr1_1(X16)
                & ~ c4_2(X16,a535)
                & ~ c3_2(X16,a535) )
              | c4_1(X16) ) )
        | ! [X17] :
            ( ndr1_0
           => ( ! [X18] :
                  ( ndr1_1(X17)
                 => ( c4_2(X17,X18)
                    | c1_2(X17,X18)
                    | ~ c3_2(X17,X18) ) )
              | c5_1(X17) ) ) )
      & ( ( ndr1_0
          & ! [X19] :
              ( ndr1_1(a536)
             => ( c4_2(a536,X19)
                | c2_2(a536,X19) ) )
          & ~ c5_1(a536)
          & ~ c1_1(a536) )
        | c2_0
        | ~ c3_0 )
      & ( ~ c2_0
        | ( ndr1_0
          & ndr1_1(a537)
          & c2_2(a537,a538)
          & c3_2(a537,a538)
          & ~ c5_1(a537) )
        | ! [X20] :
            ( ndr1_0
           => ( c4_1(X20)
              | ! [X21] :
                  ( ndr1_1(X20)
                 => ( ~ c1_2(X20,X21)
                    | c3_2(X20,X21)
                    | ~ c5_2(X20,X21) ) )
              | ( ndr1_1(X20)
                & c2_2(X20,a539)
                & c1_2(X20,a539)
                & c5_2(X20,a539) ) ) ) )
      & ( ( ndr1_0
          & c3_1(a540)
          & ~ c4_1(a540)
          & ! [X22] :
              ( ndr1_1(a540)
             => ( ~ c3_2(a540,X22)
                | ~ c1_2(a540,X22)
                | c2_2(a540,X22) ) ) )
        | c5_0
        | ( ndr1_0
          & ! [X23] :
              ( ndr1_1(a541)
             => ( c2_2(a541,X23)
                | ~ c4_2(a541,X23)
                | c3_2(a541,X23) ) )
          & ! [X24] :
              ( ndr1_1(a541)
             => ( c2_2(a541,X24)
                | ~ c5_2(a541,X24)
                | c3_2(a541,X24) ) ) ) )
      & ( ~ c1_0
        | ~ c5_0
        | ! [X25] :
            ( ndr1_0
           => ( ~ c2_1(X25)
              | ! [X26] :
                  ( ndr1_1(X25)
                 => ( ~ c1_2(X25,X26)
                    | c4_2(X25,X26) ) )
              | ( ndr1_1(X25)
                & ~ c2_2(X25,a542)
                & ~ c4_2(X25,a542)
                & ~ c5_2(X25,a542) ) ) ) )
      & ( c1_0
        | ! [X27] :
            ( ndr1_0
           => ( ( ndr1_1(X27)
                & c2_2(X27,a543)
                & ~ c5_2(X27,a543)
                & ~ c1_2(X27,a543) )
              | c1_1(X27) ) )
        | ( ndr1_0
          & c4_1(a544)
          & c1_1(a544)
          & ndr1_1(a544)
          & c3_2(a544,a545)
          & ~ c1_2(a544,a545)
          & ~ c5_2(a544,a545) ) ) ) ).

%--------------------------------------------------------------------------
