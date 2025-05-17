%--------------------------------------------------------------------------
% File     : SYN491+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=8, K=3, D=1, P=0, Index=007
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-8-3-1-007.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.10 v5.4.0, 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  114 (   0 equ)
%            Maximal formula atoms :  114 ( 114 avg)
%            Number of connectives :  148 (  35   ~;  55   |;  43   &)
%                                         (   0 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   25 (  25 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   14 (  14 usr;  10 prp; 0-1 aty)
%            Number of functors    :    9 (   9 usr;   9 con; 0-0 aty)
%            Number of variables   :   15 (  15   !;   0   ?)
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
          & c2_1(a21)
          & c0_1(a21)
          & ~ c1_1(a21) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & ~ c2_1(a22)
          & c1_1(a22)
          & ~ c3_1(a22) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & ~ c1_1(a23)
          & ~ c2_1(a23)
          & ~ c0_1(a23) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & ~ c3_1(a16)
          & ~ c1_1(a16)
          & c0_1(a16) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & c2_1(a17)
          & c0_1(a17)
          & c1_1(a17) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & c1_1(a18)
          & ~ c2_1(a18)
          & c0_1(a18) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & c1_1(a19)
          & c2_1(a19)
          & c0_1(a19) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & ~ c0_1(a20)
          & c2_1(a20)
          & c1_1(a20) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & c1_1(a24)
          & c3_1(a24)
          & c0_1(a24) ) )
      & ( ! [U] :
            ( ndr1_0
           => ( c1_1(U)
              | ~ c0_1(U)
              | c3_1(U) ) )
        | ! [V] :
            ( ndr1_0
           => ( ~ c2_1(V)
              | c0_1(V)
              | ~ c3_1(V) ) )
        | ! [W] :
            ( ndr1_0
           => ( ~ c3_1(W)
              | c0_1(W)
              | c1_1(W) ) ) )
      & ( ! [X] :
            ( ndr1_0
           => ( ~ c1_1(X)
              | c2_1(X)
              | ~ c3_1(X) ) )
        | hskp3
        | ! [Y] :
            ( ndr1_0
           => ( c0_1(Y)
              | c2_1(Y)
              | c3_1(Y) ) ) )
      & ( ! [Z] :
            ( ndr1_0
           => ( c1_1(Z)
              | c3_1(Z)
              | c0_1(Z) ) )
        | ! [X1] :
            ( ndr1_0
           => ( c2_1(X1)
              | c1_1(X1)
              | c3_1(X1) ) )
        | hskp4 )
      & ( hskp5
        | hskp6
        | hskp7 )
      & ( ! [X2] :
            ( ndr1_0
           => ( c1_1(X2)
              | c0_1(X2)
              | c2_1(X2) ) )
        | ! [X3] :
            ( ndr1_0
           => ( ~ c2_1(X3)
              | c1_1(X3)
              | ~ c3_1(X3) ) )
        | ! [X4] :
            ( ndr1_0
           => ( c2_1(X4)
              | c1_1(X4)
              | c0_1(X4) ) ) )
      & ( ! [X5] :
            ( ndr1_0
           => ( c1_1(X5)
              | c2_1(X5)
              | c0_1(X5) ) )
        | ! [X6] :
            ( ndr1_0
           => ( c1_1(X6)
              | c0_1(X6)
              | c2_1(X6) ) )
        | ! [X7] :
            ( ndr1_0
           => ( ~ c2_1(X7)
              | ~ c3_1(X7)
              | ~ c1_1(X7) ) ) )
      & ( ! [X8] :
            ( ndr1_0
           => ( c0_1(X8)
              | ~ c1_1(X8)
              | ~ c2_1(X8) ) )
        | ! [X9] :
            ( ndr1_0
           => ( c3_1(X9)
              | ~ c2_1(X9)
              | ~ c0_1(X9) ) )
        | hskp0 )
      & ( hskp1
        | hskp2
        | hskp8 ) ) ).

%--------------------------------------------------------------------------
