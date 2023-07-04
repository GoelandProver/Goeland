%--------------------------------------------------------------------------
% File     : SYN490+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=8, K=3, D=1, P=0, Index=003
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-8-3-1-003.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  121 (   0 equ)
%            Maximal formula atoms :  121 ( 121 avg)
%            Number of connectives :  166 (  46   ~;  48   |;  63   &)
%                                         (   0 <=>;   9  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   29 (  29 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   19 (  19 usr;  15 prp; 0-1 aty)
%            Number of functors    :   14 (  14 usr;  14 con; 0-0 aty)
%            Number of variables   :    9 (   9   !;   0   ?)
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
          & ~ c3_1(a2)
          & c0_1(a2)
          & ~ c1_1(a2) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & ~ c3_1(a4)
          & c1_1(a4)
          & ~ c2_1(a4) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & c1_1(a5)
          & c0_1(a5)
          & ~ c2_1(a5) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & c1_1(a8)
          & c3_1(a8)
          & ~ c0_1(a8) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & c1_1(a11)
          & c2_1(a11)
          & ~ c0_1(a11) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & ~ c1_1(a12)
          & ~ c0_1(a12)
          & ~ c2_1(a12) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & ~ c0_1(a14)
          & c1_1(a14)
          & ~ c2_1(a14) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & c3_1(a1)
          & c0_1(a1)
          & c1_1(a1) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & ~ c3_1(a3)
          & ~ c1_1(a3)
          & c2_1(a3) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & c1_1(a6)
          & c3_1(a6)
          & c2_1(a6) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & ~ c2_1(a7)
          & ~ c1_1(a7)
          & c3_1(a7) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & c1_1(a9)
          & c2_1(a9)
          & c3_1(a9) ) )
      & ( ~ hskp12
        | ( ndr1_0
          & ~ c1_1(a10)
          & ~ c2_1(a10)
          & c3_1(a10) ) )
      & ( ~ hskp13
        | ( ndr1_0
          & c3_1(a15)
          & c1_1(a15)
          & c2_1(a15) ) )
      & ( hskp7
        | hskp0
        | hskp8 )
      & ( ! [U] :
            ( ndr1_0
           => ( ~ c1_1(U)
              | c0_1(U)
              | ~ c2_1(U) ) )
        | hskp1
        | ! [V] :
            ( ndr1_0
           => ( ~ c2_1(V)
              | c1_1(V)
              | c3_1(V) ) ) )
      & ( ! [W] :
            ( ndr1_0
           => ( ~ c3_1(W)
              | ~ c2_1(W)
              | c1_1(W) ) )
        | hskp2
        | hskp9 )
      & ( hskp10
        | hskp3
        | hskp11 )
      & ( ! [X] :
            ( ndr1_0
           => ( ~ c3_1(X)
              | ~ c1_1(X)
              | ~ c2_1(X) ) )
        | hskp12
        | ! [Y] :
            ( ndr1_0
           => ( c2_1(Y)
              | ~ c3_1(Y)
              | c0_1(Y) ) ) )
      & ( hskp4
        | ! [Z] :
            ( ndr1_0
           => ( ~ c0_1(Z)
              | ~ c1_1(Z)
              | c2_1(Z) ) )
        | ! [X1] :
            ( ndr1_0
           => ( ~ c0_1(X1)
              | c1_1(X1)
              | ~ c3_1(X1) ) ) )
      & ( hskp5
        | ! [X2] :
            ( ndr1_0
           => ( c2_1(X2)
              | c0_1(X2)
              | c1_1(X2) ) )
        | hskp3 )
      & ( ! [X3] :
            ( ndr1_0
           => ( c0_1(X3)
              | c2_1(X3)
              | c3_1(X3) ) )
        | hskp6
        | hskp13 ) ) ).

%--------------------------------------------------------------------------
