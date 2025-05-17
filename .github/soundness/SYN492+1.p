%--------------------------------------------------------------------------
% File     : SYN492+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=8, K=3, D=1, P=0, Index=008
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-8-3-1-008.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.4.0, 0.20 v5.3.0, 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.1.0, 0.17 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  122 (   0 equ)
%            Maximal formula atoms :  122 ( 122 avg)
%            Number of connectives :  172 (  51   ~;  51   |;  59   &)
%                                         (   0 <=>;  11  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   28 (  28 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   18 (  18 usr;  14 prp; 0-1 aty)
%            Number of functors    :   13 (  13 usr;  13 con; 0-0 aty)
%            Number of variables   :   11 (  11   !;   0   ?)
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
          & ~ c0_1(a27)
          & c3_1(a27)
          & ~ c2_1(a27) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & ~ c2_1(a28)
          & c1_1(a28)
          & ~ c0_1(a28) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & ~ c3_1(a29)
          & c1_1(a29)
          & ~ c2_1(a29) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & ~ c1_1(a31)
          & c2_1(a31)
          & ~ c3_1(a31) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & c1_1(a33)
          & ~ c2_1(a33)
          & ~ c0_1(a33) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & c0_1(a34)
          & ~ c3_1(a34)
          & ~ c2_1(a34) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & ~ c3_1(a35)
          & ~ c0_1(a35)
          & ~ c2_1(a35) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & ~ c3_1(a36)
          & ~ c2_1(a36)
          & ~ c0_1(a36) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & c2_1(a37)
          & c3_1(a37)
          & ~ c1_1(a37) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & c1_1(a25)
          & ~ c3_1(a25)
          & c0_1(a25) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & ~ c3_1(a26)
          & c1_1(a26)
          & c0_1(a26) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & c3_1(a30)
          & c0_1(a30)
          & c2_1(a30) ) )
      & ( ~ hskp12
        | ( ndr1_0
          & ~ c0_1(a32)
          & c1_1(a32)
          & c3_1(a32) ) )
      & ( ! [U] :
            ( ndr1_0
           => ( c3_1(U)
              | ~ c0_1(U)
              | ~ c1_1(U) ) )
        | hskp9
        | hskp10 )
      & ( hskp0
        | ! [V] :
            ( ndr1_0
           => ( ~ c3_1(V)
              | c1_1(V)
              | c2_1(V) ) )
        | hskp1 )
      & ( ! [W] :
            ( ndr1_0
           => ( c3_1(W)
              | c2_1(W)
              | c0_1(W) ) )
        | hskp2
        | ! [X] :
            ( ndr1_0
           => ( ~ c1_1(X)
              | c0_1(X)
              | ~ c2_1(X) ) ) )
      & ( hskp11
        | hskp3
        | hskp12 )
      & ( ! [Y] :
            ( ndr1_0
           => ( c1_1(Y)
              | c0_1(Y)
              | ~ c2_1(Y) ) )
        | ! [Z] :
            ( ndr1_0
           => ( ~ c3_1(Z)
              | c0_1(Z)
              | ~ c1_1(Z) ) )
        | hskp4 )
      & ( ! [X1] :
            ( ndr1_0
           => ( ~ c0_1(X1)
              | c1_1(X1)
              | ~ c2_1(X1) ) )
        | ! [X2] :
            ( ndr1_0
           => ( c3_1(X2)
              | c0_1(X2)
              | c1_1(X2) ) )
        | hskp5 )
      & ( ! [X3] :
            ( ndr1_0
           => ( ~ c3_1(X3)
              | ~ c2_1(X3)
              | ~ c0_1(X3) ) )
        | hskp6
        | ! [X4] :
            ( ndr1_0
           => ( ~ c3_1(X4)
              | c1_1(X4)
              | c0_1(X4) ) ) )
      & ( hskp7
        | ! [X5] :
            ( ndr1_0
           => ( ~ c1_1(X5)
              | c2_1(X5)
              | c0_1(X5) ) )
        | hskp8 ) ) ).

%--------------------------------------------------------------------------
