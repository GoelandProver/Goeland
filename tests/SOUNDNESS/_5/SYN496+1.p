%--------------------------------------------------------------------------
% File     : SYN496+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=8, K=3, D=1, P=0, Index=078
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-8-3-1-078.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.1.0, 0.17 v6.0.0, 0.00 v5.5.0, 0.20 v5.4.0, 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  115 (   0 equ)
%            Maximal formula atoms :  115 ( 115 avg)
%            Number of connectives :  157 (  43   ~;  51   |;  51   &)
%                                         (   0 <=>;  12  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   26 (  26 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   16 (  16 usr;  12 prp; 0-1 aty)
%            Number of functors    :   11 (  11 usr;  11 con; 0-0 aty)
%            Number of variables   :   12 (  12   !;   0   ?)
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
          & ~ c1_1(a81)
          & ~ c3_1(a81)
          & ~ c0_1(a81) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & ~ c3_1(a83)
          & c2_1(a83)
          & ~ c1_1(a83) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & c1_1(a85)
          & ~ c0_1(a85)
          & ~ c3_1(a85) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & c1_1(a87)
          & c2_1(a87)
          & ~ c3_1(a87) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & ~ c2_1(a88)
          & ~ c0_1(a88)
          & ~ c1_1(a88) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & c3_1(a79)
          & c1_1(a79)
          & c2_1(a79) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & c3_1(a80)
          & c0_1(a80)
          & c1_1(a80) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & ~ c3_1(a82)
          & c1_1(a82)
          & c2_1(a82) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & ~ c2_1(a84)
          & c3_1(a84)
          & c1_1(a84) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & ~ c3_1(a86)
          & c0_1(a86)
          & c2_1(a86) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & ~ c0_1(a89)
          & ~ c2_1(a89)
          & c1_1(a89) ) )
      & ( ! [U] :
            ( ndr1_0
           => ( ~ c0_1(U)
              | ~ c2_1(U)
              | c3_1(U) ) )
        | ! [V] :
            ( ndr1_0
           => ( c2_1(V)
              | c1_1(V)
              | c3_1(V) ) )
        | hskp5 )
      & ( hskp6
        | hskp0
        | hskp7 )
      & ( hskp1
        | hskp8
        | ! [W] :
            ( ndr1_0
           => ( c0_1(W)
              | c3_1(W)
              | ~ c2_1(W) ) ) )
      & ( ! [X] :
            ( ndr1_0
           => ( c2_1(X)
              | c1_1(X)
              | c3_1(X) ) )
        | ! [Y] :
            ( ndr1_0
           => ( c3_1(Y)
              | ~ c1_1(Y)
              | ~ c2_1(Y) ) )
        | ! [Z] :
            ( ndr1_0
           => ( ~ c3_1(Z)
              | c1_1(Z)
              | ~ c0_1(Z) ) ) )
      & ( hskp2
        | ! [X1] :
            ( ndr1_0
           => ( c1_1(X1)
              | c2_1(X1)
              | c0_1(X1) ) )
        | ! [X2] :
            ( ndr1_0
           => ( ~ c1_1(X2)
              | ~ c2_1(X2)
              | c0_1(X2) ) ) )
      & ( ! [X3] :
            ( ndr1_0
           => ( ~ c0_1(X3)
              | ~ c1_1(X3)
              | ~ c2_1(X3) ) )
        | ! [X4] :
            ( ndr1_0
           => ( ~ c1_1(X4)
              | ~ c0_1(X4)
              | c3_1(X4) ) )
        | hskp9 )
      & ( ! [X5] :
            ( ndr1_0
           => ( ~ c2_1(X5)
              | c3_1(X5)
              | c1_1(X5) ) )
        | hskp3
        | ! [X6] :
            ( ndr1_0
           => ( c2_1(X6)
              | c0_1(X6)
              | c3_1(X6) ) ) )
      & ( hskp4
        | hskp10
        | hskp1 ) ) ).

%--------------------------------------------------------------------------
