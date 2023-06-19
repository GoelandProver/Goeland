%--------------------------------------------------------------------------
% File     : SYN497+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=8, K=3, D=1, P=0, Index=090
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-8-3-1-090.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  124 (   0 equ)
%            Maximal formula atoms :  124 ( 124 avg)
%            Number of connectives :  172 (  49   ~;  50   |;  63   &)
%                                         (   0 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   29 (  29 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   19 (  19 usr;  15 prp; 0-1 aty)
%            Number of functors    :   14 (  14 usr;  14 con; 0-0 aty)
%            Number of variables   :   10 (  10   !;   0   ?)
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
    ~ ( ( ~ hskp0
        | ( ndr1_0
          & ~ c2_1(a93)
          & c3_1(a93)
          & ~ c1_1(a93) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & c2_1(a94)
          & c1_1(a94)
          & ~ c0_1(a94) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & c1_1(a96)
          & c3_1(a96)
          & ~ c2_1(a96) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & ~ c1_1(a97)
          & c3_1(a97)
          & ~ c0_1(a97) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & c0_1(a102)
          & ~ c3_1(a102)
          & ~ c1_1(a102) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & c1_1(a104)
          & c0_1(a104)
          & ~ c2_1(a104) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & ~ c2_1(a91)
          & ~ c3_1(a91)
          & c1_1(a91) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & c0_1(a92)
          & c1_1(a92)
          & c2_1(a92) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & ~ c3_1(a95)
          & c0_1(a95)
          & c2_1(a95) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & ~ c0_1(a98)
          & ~ c2_1(a98)
          & c1_1(a98) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & c1_1(a99)
          & c0_1(a99)
          & c3_1(a99) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & ~ c0_1(a100)
          & c3_1(a100)
          & c2_1(a100) ) )
      & ( ~ hskp12
        | ( ndr1_0
          & ~ c3_1(a101)
          & c1_1(a101)
          & c0_1(a101) ) )
      & ( ~ hskp13
        | ( ndr1_0
          & c2_1(a103)
          & c1_1(a103)
          & c3_1(a103) ) )
      & ( ! [U] :
            ( ndr1_0
           => ( c2_1(U)
              | c3_1(U)
              | ~ c0_1(U) ) )
        | hskp6
        | hskp7 )
      & ( ! [V] :
            ( ndr1_0
           => ( ~ c0_1(V)
              | c3_1(V)
              | ~ c2_1(V) ) )
        | hskp0
        | ! [W] :
            ( ndr1_0
           => ( ~ c1_1(W)
              | ~ c0_1(W)
              | c3_1(W) ) ) )
      & ( hskp1
        | hskp8
        | hskp2 )
      & ( hskp3
        | ! [X] :
            ( ndr1_0
           => ( ~ c1_1(X)
              | ~ c3_1(X)
              | c2_1(X) ) )
        | hskp9 )
      & ( ! [Y] :
            ( ndr1_0
           => ( c3_1(Y)
              | ~ c0_1(Y)
              | ~ c2_1(Y) ) )
        | hskp10
        | ! [Z] :
            ( ndr1_0
           => ( ~ c2_1(Z)
              | ~ c0_1(Z)
              | ~ c1_1(Z) ) ) )
      & ( ! [X1] :
            ( ndr1_0
           => ( ~ c2_1(X1)
              | c1_1(X1)
              | c0_1(X1) ) )
        | ! [X2] :
            ( ndr1_0
           => ( ~ c1_1(X2)
              | c2_1(X2)
              | ~ c0_1(X2) ) )
        | ! [X3] :
            ( ndr1_0
           => ( ~ c2_1(X3)
              | c3_1(X3)
              | ~ c0_1(X3) ) ) )
      & ( ! [X4] :
            ( ndr1_0
           => ( c0_1(X4)
              | ~ c1_1(X4)
              | c2_1(X4) ) )
        | hskp11
        | hskp12 )
      & ( hskp4
        | hskp13
        | hskp5 ) ) ).

%--------------------------------------------------------------------------
