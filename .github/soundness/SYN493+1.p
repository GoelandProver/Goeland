%--------------------------------------------------------------------------
% File     : SYN493+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=8, K=3, D=1, P=0, Index=021
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-8-3-1-021.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  118 (   0 equ)
%            Maximal formula atoms :  118 ( 118 avg)
%            Number of connectives :  165 (  48   ~;  53   |;  51   &)
%                                         (   0 <=>;  13  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   27 (  27 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   16 (  16 usr;  12 prp; 0-1 aty)
%            Number of functors    :   11 (  11 usr;  11 con; 0-0 aty)
%            Number of variables   :   13 (  13   !;   0   ?)
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
          & ~ c0_1(a39)
          & ~ c1_1(a39)
          & ~ c2_1(a39) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & c3_1(a41)
          & ~ c2_1(a41)
          & ~ c0_1(a41) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & ~ c0_1(a43)
          & c3_1(a43)
          & ~ c1_1(a43) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & c3_1(a48)
          & c0_1(a48)
          & ~ c1_1(a48) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & ~ c0_1(a38)
          & ~ c1_1(a38)
          & c2_1(a38) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & ~ c0_1(a40)
          & ~ c2_1(a40)
          & c1_1(a40) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & c3_1(a42)
          & ~ c0_1(a42)
          & c2_1(a42) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & c1_1(a44)
          & c0_1(a44)
          & c3_1(a44) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & c3_1(a45)
          & c2_1(a45)
          & c1_1(a45) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & c0_1(a46)
          & c1_1(a46)
          & c3_1(a46) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & c3_1(a47)
          & ~ c0_1(a47)
          & c1_1(a47) ) )
      & ( hskp4
        | hskp0
        | ! [U] :
            ( ndr1_0
           => ( c1_1(U)
              | ~ c2_1(U)
              | c0_1(U) ) ) )
      & ( hskp5
        | hskp1
        | ! [V] :
            ( ndr1_0
           => ( c0_1(V)
              | c2_1(V)
              | c3_1(V) ) ) )
      & ( hskp6
        | hskp2
        | hskp7 )
      & ( ! [W] :
            ( ndr1_0
           => ( ~ c0_1(W)
              | ~ c1_1(W)
              | ~ c3_1(W) ) )
        | ! [X] :
            ( ndr1_0
           => ( c0_1(X)
              | c2_1(X)
              | c1_1(X) ) )
        | hskp8 )
      & ( ! [Y] :
            ( ndr1_0
           => ( c1_1(Y)
              | c2_1(Y)
              | ~ c3_1(Y) ) )
        | ! [Z] :
            ( ndr1_0
           => ( ~ c3_1(Z)
              | c0_1(Z)
              | c1_1(Z) ) )
        | ! [X1] :
            ( ndr1_0
           => ( ~ c2_1(X1)
              | ~ c0_1(X1)
              | ~ c1_1(X1) ) ) )
      & ( ! [X2] :
            ( ndr1_0
           => ( c0_1(X2)
              | ~ c1_1(X2)
              | c3_1(X2) ) )
        | hskp9
        | ! [X3] :
            ( ndr1_0
           => ( ~ c2_1(X3)
              | ~ c1_1(X3)
              | ~ c0_1(X3) ) ) )
      & ( hskp10
        | ! [X4] :
            ( ndr1_0
           => ( ~ c2_1(X4)
              | ~ c3_1(X4)
              | c0_1(X4) ) )
        | ! [X5] :
            ( ndr1_0
           => ( ~ c3_1(X5)
              | ~ c1_1(X5)
              | c2_1(X5) ) ) )
      & ( ! [X6] :
            ( ndr1_0
           => ( ~ c2_1(X6)
              | ~ c1_1(X6)
              | c0_1(X6) ) )
        | hskp3
        | ! [X7] :
            ( ndr1_0
           => ( ~ c2_1(X7)
              | ~ c1_1(X7)
              | ~ c0_1(X7) ) ) ) ) ).

%--------------------------------------------------------------------------
