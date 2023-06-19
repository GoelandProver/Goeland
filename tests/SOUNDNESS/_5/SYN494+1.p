%--------------------------------------------------------------------------
% File     : SYN494+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=8, K=3, D=1, P=0, Index=024
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-8-3-1-024.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.1.0, 0.17 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  120 (   0 equ)
%            Maximal formula atoms :  120 ( 120 avg)
%            Number of connectives :  162 (  43   ~;  52   |;  55   &)
%                                         (   0 <=>;  12  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   27 (  27 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;  13 prp; 0-1 aty)
%            Number of functors    :   12 (  12 usr;  12 con; 0-0 aty)
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
          & c3_1(a49)
          & c2_1(a49)
          & ~ c1_1(a49) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & ~ c3_1(a53)
          & c1_1(a53)
          & ~ c0_1(a53) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & c1_1(a58)
          & c3_1(a58)
          & ~ c0_1(a58) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & c1_1(a50)
          & ~ c2_1(a50)
          & c0_1(a50) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & c0_1(a51)
          & ~ c2_1(a51)
          & c1_1(a51) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & ~ c3_1(a52)
          & c2_1(a52)
          & c1_1(a52) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & ~ c3_1(a54)
          & ~ c2_1(a54)
          & c1_1(a54) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & ~ c1_1(a55)
          & c3_1(a55)
          & c2_1(a55) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & c3_1(a56)
          & ~ c0_1(a56)
          & c2_1(a56) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & ~ c2_1(a57)
          & ~ c1_1(a57)
          & c3_1(a57) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & c2_1(a59)
          & ~ c1_1(a59)
          & c3_1(a59) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & c2_1(a60)
          & c0_1(a60)
          & c3_1(a60) ) )
      & ( ! [U] :
            ( ndr1_0
           => ( ~ c2_1(U)
              | c3_1(U)
              | ~ c1_1(U) ) )
        | ! [V] :
            ( ndr1_0
           => ( c3_1(V)
              | c0_1(V)
              | ~ c1_1(V) ) )
        | hskp0 )
      & ( hskp3
        | ! [W] :
            ( ndr1_0
           => ( c3_1(W)
              | ~ c2_1(W)
              | c1_1(W) ) )
        | ! [X] :
            ( ndr1_0
           => ( c2_1(X)
              | ~ c1_1(X)
              | ~ c3_1(X) ) ) )
      & ( ! [Y] :
            ( ndr1_0
           => ( ~ c3_1(Y)
              | c0_1(Y)
              | ~ c2_1(Y) ) )
        | ! [Z] :
            ( ndr1_0
           => ( c0_1(Z)
              | c1_1(Z)
              | c2_1(Z) ) )
        | hskp4 )
      & ( hskp5
        | hskp1
        | ! [X1] :
            ( ndr1_0
           => ( c3_1(X1)
              | ~ c2_1(X1)
              | c0_1(X1) ) ) )
      & ( ! [X2] :
            ( ndr1_0
           => ( c3_1(X2)
              | c2_1(X2)
              | c0_1(X2) ) )
        | ! [X3] :
            ( ndr1_0
           => ( c0_1(X3)
              | ~ c1_1(X3)
              | c2_1(X3) ) )
        | ! [X4] :
            ( ndr1_0
           => ( ~ c0_1(X4)
              | ~ c3_1(X4)
              | ~ c2_1(X4) ) ) )
      & ( hskp6
        | hskp7
        | ! [X5] :
            ( ndr1_0
           => ( ~ c3_1(X5)
              | c0_1(X5)
              | ~ c1_1(X5) ) ) )
      & ( hskp8
        | hskp9
        | hskp2 )
      & ( hskp10
        | ! [X6] :
            ( ndr1_0
           => ( ~ c1_1(X6)
              | c2_1(X6)
              | c0_1(X6) ) )
        | hskp11 ) ) ).

%--------------------------------------------------------------------------
