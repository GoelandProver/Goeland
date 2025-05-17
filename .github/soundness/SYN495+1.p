%--------------------------------------------------------------------------
% File     : SYN495+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=8, K=3, D=1, P=0, Index=065
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-8-3-1-065.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.1.0, 0.17 v2.6.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  127 (   0 equ)
%            Maximal formula atoms :  127 ( 127 avg)
%            Number of connectives :  174 (  48   ~;  45   |;  75   &)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   33 (  33 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   22 (  22 usr;  18 prp; 0-1 aty)
%            Number of functors    :   17 (  17 usr;  17 con; 0-0 aty)
%            Number of variables   :    6 (   6   !;   0   ?)
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
          & c3_1(a61)
          & c1_1(a61)
          & ~ c2_1(a61) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & c0_1(a66)
          & c1_1(a66)
          & ~ c3_1(a66) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & ~ c0_1(a69)
          & c3_1(a69)
          & ~ c2_1(a69) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & c0_1(a71)
          & c3_1(a71)
          & ~ c1_1(a71) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & c1_1(a73)
          & c0_1(a73)
          & ~ c2_1(a73) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & ~ c0_1(a75)
          & c2_1(a75)
          & ~ c1_1(a75) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & c0_1(a76)
          & c1_1(a76)
          & ~ c2_1(a76) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & ~ c2_1(a77)
          & c3_1(a77)
          & ~ c0_1(a77) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & ~ c1_1(a62)
          & c3_1(a62)
          & c0_1(a62) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & c2_1(a63)
          & ~ c1_1(a63)
          & c3_1(a63) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & ~ c3_1(a64)
          & ~ c2_1(a64)
          & c0_1(a64) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & ~ c1_1(a65)
          & ~ c0_1(a65)
          & c2_1(a65) ) )
      & ( ~ hskp12
        | ( ndr1_0
          & ~ c3_1(a67)
          & ~ c2_1(a67)
          & c1_1(a67) ) )
      & ( ~ hskp13
        | ( ndr1_0
          & ~ c1_1(a68)
          & c2_1(a68)
          & c0_1(a68) ) )
      & ( ~ hskp14
        | ( ndr1_0
          & ~ c0_1(a70)
          & c3_1(a70)
          & c1_1(a70) ) )
      & ( ~ hskp15
        | ( ndr1_0
          & c1_1(a72)
          & c3_1(a72)
          & c0_1(a72) ) )
      & ( ~ hskp16
        | ( ndr1_0
          & ~ c1_1(a74)
          & c2_1(a74)
          & c3_1(a74) ) )
      & ( hskp0
        | ! [U] :
            ( ndr1_0
           => ( c2_1(U)
              | c1_1(U)
              | c3_1(U) ) )
        | hskp8 )
      & ( hskp9
        | ! [V] :
            ( ndr1_0
           => ( c3_1(V)
              | ~ c0_1(V)
              | ~ c1_1(V) ) )
        | hskp10 )
      & ( hskp11
        | hskp1
        | hskp12 )
      & ( hskp13
        | hskp2
        | hskp14 )
      & ( hskp3
        | ! [W] :
            ( ndr1_0
           => ( c0_1(W)
              | ~ c1_1(W)
              | ~ c3_1(W) ) )
        | hskp15 )
      & ( hskp4
        | ! [X] :
            ( ndr1_0
           => ( c1_1(X)
              | c0_1(X)
              | ~ c3_1(X) ) )
        | ! [Y] :
            ( ndr1_0
           => ( c1_1(Y)
              | ~ c0_1(Y)
              | ~ c2_1(Y) ) ) )
      & ( hskp16
        | hskp5
        | hskp6 )
      & ( hskp7
        | ! [Z] :
            ( ndr1_0
           => ( c0_1(Z)
              | ~ c3_1(Z)
              | c1_1(Z) ) )
        | hskp12 ) ) ).

%--------------------------------------------------------------------------
