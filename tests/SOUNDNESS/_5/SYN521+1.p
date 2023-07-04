%--------------------------------------------------------------------------
% File     : SYN521+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=20, K=3, D=2, P=0, Index=049
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-20-3-2-049.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.1.0, 0.17 v2.6.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  182 (   0 equ)
%            Maximal formula atoms :  182 ( 182 avg)
%            Number of connectives :  254 (  73   ~;  57   |; 105   &)
%                                         (   0 <=>;  19  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   29 (  29 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   34 (  34 usr;  34 con; 0-0 aty)
%            Number of variables   :   19 (  19   !;   0   ?)
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
          & ndr1_1(a70)
          & c4_2(a70,a71)
          & ~ c2_2(a70,a71)
          & c1_2(a70,a71)
          & ndr1_1(a70)
          & ~ c5_2(a70,a72)
          & ~ c2_2(a70,a72)
          & ~ c3_2(a70,a72)
          & ndr1_1(a70)
          & ~ c5_2(a70,a73)
          & ~ c4_2(a70,a73) )
        | ~ c4_0 )
      & ( ~ c5_0
        | ~ c2_0 )
      & ( c3_0
        | ( ndr1_0
          & ndr1_1(a74)
          & ~ c2_2(a74,a75)
          & c5_2(a74,a75)
          & ~ c1_2(a74,a75)
          & ~ c2_1(a74) ) )
      & ( ( ndr1_0
          & c1_1(a76)
          & c3_1(a76) )
        | ~ c4_0
        | c1_0 )
      & ( ! [U] :
            ( ndr1_0
           => ( c4_1(U)
              | c2_1(U)
              | ! [V] :
                  ( ndr1_1(U)
                 => ( ~ c1_2(U,V)
                    | ~ c3_2(U,V)
                    | ~ c5_2(U,V) ) ) ) )
        | c5_0 )
      & ( ! [W] :
            ( ndr1_0
           => ( ! [X] :
                  ( ndr1_1(W)
                 => ( c4_2(W,X)
                    | c1_2(W,X) ) )
              | ~ c1_1(W) ) )
        | ( ndr1_0
          & ~ c3_1(a77)
          & ndr1_1(a77)
          & ~ c5_2(a77,a78)
          & ~ c3_2(a77,a78)
          & ndr1_1(a77)
          & ~ c5_2(a77,a79)
          & ~ c2_2(a77,a79)
          & c3_2(a77,a79) )
        | c3_0 )
      & ( ( ndr1_0
          & ~ c2_1(a80)
          & c4_1(a80)
          & ~ c3_1(a80) )
        | ! [Y] :
            ( ndr1_0
           => ( ! [Z] :
                  ( ndr1_1(Y)
                 => ( c4_2(Y,Z)
                    | c2_2(Y,Z) ) )
              | c1_1(Y)
              | ( ndr1_1(Y)
                & c4_2(Y,a81)
                & c1_2(Y,a81)
                & ~ c5_2(Y,a81) ) ) )
        | ~ c1_0 )
      & ( ~ c3_0
        | ( ndr1_0
          & ndr1_1(a82)
          & c4_2(a82,a83)
          & ~ c5_2(a82,a83)
          & ndr1_1(a82)
          & ~ c2_2(a82,a84)
          & ~ c4_2(a82,a84)
          & ~ c5_2(a82,a84)
          & c1_1(a82) ) )
      & ( ! [X1] :
            ( ndr1_0
           => ( ! [X2] :
                  ( ndr1_1(X1)
                 => ( ~ c3_2(X1,X2)
                    | ~ c5_2(X1,X2)
                    | c1_2(X1,X2) ) )
              | ~ c1_1(X1)
              | c4_1(X1) ) )
        | c2_0
        | ~ c4_0 )
      & ( c4_0
        | ~ c2_0
        | ( ndr1_0
          & ndr1_1(a85)
          & ~ c3_2(a85,a86)
          & ~ c1_2(a85,a86)
          & ndr1_1(a85)
          & ~ c3_2(a85,a87)
          & c4_2(a85,a87)
          & c5_2(a85,a87)
          & c5_1(a85) ) )
      & ( ( ndr1_0
          & c1_1(a88)
          & ! [X3] :
              ( ndr1_1(a88)
             => ( c5_2(a88,X3)
                | c2_2(a88,X3) ) )
          & ndr1_1(a88)
          & ~ c2_2(a88,a89)
          & ~ c5_2(a88,a89)
          & c4_2(a88,a89) )
        | ( ndr1_0
          & ~ c4_1(a90)
          & ~ c3_1(a90)
          & ~ c2_1(a90) )
        | ! [X4] :
            ( ndr1_0
           => ( ! [X5] :
                  ( ndr1_1(X4)
                 => ( ~ c3_2(X4,X5)
                    | c5_2(X4,X5)
                    | ~ c1_2(X4,X5) ) )
              | ( ndr1_1(X4)
                & ~ c2_2(X4,a91)
                & ~ c4_2(X4,a91)
                & ~ c1_2(X4,a91) )
              | ( ndr1_1(X4)
                & c1_2(X4,a92)
                & c5_2(X4,a92) ) ) ) )
      & ( c4_0
        | ( ndr1_0
          & ndr1_1(a93)
          & ~ c1_2(a93,a94)
          & c2_2(a93,a94)
          & ~ c4_2(a93,a94)
          & c4_1(a93)
          & c3_1(a93) )
        | ( ndr1_0
          & ndr1_1(a95)
          & ~ c4_2(a95,a96)
          & c1_2(a95,a96)
          & c5_2(a95,a96)
          & ! [X6] :
              ( ndr1_1(a95)
             => ( c5_2(a95,X6)
                | ~ c1_2(a95,X6)
                | ~ c3_2(a95,X6) ) ) ) )
      & ( ~ c5_0
        | ( ndr1_0
          & ndr1_1(a97)
          & c5_2(a97,a98)
          & ~ c2_2(a97,a98)
          & ndr1_1(a97)
          & ~ c2_2(a97,a99)
          & ~ c1_2(a97,a99)
          & c5_2(a97,a99)
          & ! [X7] :
              ( ndr1_1(a97)
             => ( c3_2(a97,X7)
                | c2_2(a97,X7)
                | c1_2(a97,X7) ) ) )
        | ( ndr1_0
          & ! [X8] :
              ( ndr1_1(a100)
             => ( ~ c4_2(a100,X8)
                | ~ c3_2(a100,X8)
                | ~ c2_2(a100,X8) ) )
          & c4_1(a100)
          & c2_1(a100) ) )
      & ( ( ndr1_0
          & ! [X9] :
              ( ndr1_1(a101)
             => ( ~ c2_2(a101,X9)
                | ~ c5_2(a101,X9) ) )
          & ! [X10] :
              ( ndr1_1(a101)
             => ( ~ c1_2(a101,X10)
                | c3_2(a101,X10)
                | ~ c5_2(a101,X10) ) ) )
        | c3_0
        | ( ndr1_0
          & c2_1(a102)
          & ndr1_1(a102)
          & c1_2(a102,a103)
          & ~ c5_2(a102,a103)
          & ! [X11] :
              ( ndr1_1(a102)
             => ( ~ c1_2(a102,X11)
                | ~ c5_2(a102,X11)
                | ~ c3_2(a102,X11) ) ) ) )
      & ( ~ c1_0
        | ! [X12] :
            ( ndr1_0
           => ( ! [X13] :
                  ( ndr1_1(X12)
                 => ( c4_2(X12,X13)
                    | c3_2(X12,X13)
                    | ~ c5_2(X12,X13) ) )
              | ~ c4_1(X12) ) )
        | c3_0 ) ) ).

%--------------------------------------------------------------------------
