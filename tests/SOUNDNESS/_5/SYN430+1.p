%--------------------------------------------------------------------------
% File     : SYN430+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=16, K=3, D=1, P=0, Index=037
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-16-3-1-037.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.1.0, 0.17 v2.6.0, 0.00 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  236 (   0 equ)
%            Maximal formula atoms :  236 ( 236 avg)
%            Number of connectives :  340 ( 105   ~;  99   |; 115   &)
%                                         (   0 <=>;  21  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   49 (  49 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   30 (  30 usr;  26 prp; 0-1 aty)
%            Number of functors    :   25 (  25 usr;  25 con; 0-0 aty)
%            Number of variables   :   21 (  21   !;   0   ?)
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
          & c3_1(a105)
          & ~ c1_1(a105)
          & ~ c2_1(a105) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & ~ c3_1(a107)
          & ~ c1_1(a107)
          & ~ c0_1(a107) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & c3_1(a108)
          & ~ c2_1(a108)
          & ~ c1_1(a108) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & ~ c2_1(a109)
          & c3_1(a109)
          & ~ c1_1(a109) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & ~ c3_1(a110)
          & ~ c1_1(a110)
          & ~ c2_1(a110) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & c2_1(a111)
          & c0_1(a111)
          & ~ c1_1(a111) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & ~ c1_1(a112)
          & ~ c0_1(a112)
          & ~ c2_1(a112) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & c1_1(a114)
          & c2_1(a114)
          & ~ c0_1(a114) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & ~ c2_1(a118)
          & ~ c1_1(a118)
          & ~ c0_1(a118) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & ~ c1_1(a120)
          & ~ c2_1(a120)
          & ~ c0_1(a120) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & c2_1(a122)
          & ~ c1_1(a122)
          & ~ c3_1(a122) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & c3_1(a123)
          & ~ c0_1(a123)
          & ~ c1_1(a123) ) )
      & ( ~ hskp12
        | ( ndr1_0
          & c1_1(a126)
          & c0_1(a126)
          & ~ c3_1(a126) ) )
      & ( ~ hskp13
        | ( ndr1_0
          & ~ c2_1(a127)
          & ~ c3_1(a127)
          & ~ c1_1(a127) ) )
      & ( ~ hskp14
        | ( ndr1_0
          & c3_1(a128)
          & ~ c2_1(a128)
          & ~ c0_1(a128) ) )
      & ( ~ hskp15
        | ( ndr1_0
          & ~ c0_1(a106)
          & ~ c2_1(a106)
          & c3_1(a106) ) )
      & ( ~ hskp16
        | ( ndr1_0
          & ~ c3_1(a113)
          & ~ c1_1(a113)
          & c0_1(a113) ) )
      & ( ~ hskp17
        | ( ndr1_0
          & ~ c0_1(a115)
          & c2_1(a115)
          & c1_1(a115) ) )
      & ( ~ hskp18
        | ( ndr1_0
          & c1_1(a116)
          & ~ c3_1(a116)
          & c0_1(a116) ) )
      & ( ~ hskp19
        | ( ndr1_0
          & ~ c2_1(a117)
          & ~ c1_1(a117)
          & c0_1(a117) ) )
      & ( ~ hskp20
        | ( ndr1_0
          & ~ c0_1(a119)
          & c1_1(a119)
          & c2_1(a119) ) )
      & ( ~ hskp21
        | ( ndr1_0
          & c3_1(a121)
          & c1_1(a121)
          & c2_1(a121) ) )
      & ( ~ hskp22
        | ( ndr1_0
          & ~ c0_1(a129)
          & ~ c3_1(a129)
          & c1_1(a129) ) )
      & ( ~ hskp23
        | ( ndr1_0
          & ~ c2_1(a130)
          & ~ c1_1(a130)
          & c3_1(a130) ) )
      & ( ~ hskp24
        | ( ndr1_0
          & ~ c1_1(a131)
          & c0_1(a131)
          & c3_1(a131) ) )
      & ( hskp0
        | ! [U] :
            ( ndr1_0
           => ( ~ c1_1(U)
              | ~ c2_1(U)
              | c3_1(U) ) )
        | hskp15 )
      & ( hskp1
        | ! [V] :
            ( ndr1_0
           => ( c3_1(V)
              | c0_1(V)
              | ~ c1_1(V) ) )
        | hskp2 )
      & ( hskp3
        | hskp4
        | ! [W] :
            ( ndr1_0
           => ( ~ c2_1(W)
              | c3_1(W)
              | ~ c0_1(W) ) ) )
      & ( ! [X] :
            ( ndr1_0
           => ( ~ c0_1(X)
              | c2_1(X)
              | c3_1(X) ) )
        | hskp5
        | ! [Y] :
            ( ndr1_0
           => ( ~ c1_1(Y)
              | c3_1(Y)
              | ~ c2_1(Y) ) ) )
      & ( hskp6
        | hskp16
        | ! [Z] :
            ( ndr1_0
           => ( c3_1(Z)
              | c0_1(Z)
              | c1_1(Z) ) ) )
      & ( hskp7
        | hskp17
        | hskp18 )
      & ( ! [X1] :
            ( ndr1_0
           => ( c0_1(X1)
              | c2_1(X1)
              | ~ c1_1(X1) ) )
        | ! [X2] :
            ( ndr1_0
           => ( c1_1(X2)
              | ~ c2_1(X2)
              | c0_1(X2) ) )
        | ! [X3] :
            ( ndr1_0
           => ( ~ c2_1(X3)
              | ~ c0_1(X3)
              | ~ c1_1(X3) ) ) )
      & ( ! [X4] :
            ( ndr1_0
           => ( c2_1(X4)
              | ~ c3_1(X4)
              | c0_1(X4) ) )
        | hskp19
        | ! [X5] :
            ( ndr1_0
           => ( ~ c1_1(X5)
              | c3_1(X5)
              | c2_1(X5) ) ) )
      & ( ! [X6] :
            ( ndr1_0
           => ( ~ c1_1(X6)
              | ~ c0_1(X6)
              | ~ c3_1(X6) ) )
        | ! [X7] :
            ( ndr1_0
           => ( ~ c3_1(X7)
              | ~ c1_1(X7)
              | ~ c0_1(X7) ) )
        | ! [X8] :
            ( ndr1_0
           => ( c2_1(X8)
              | c0_1(X8)
              | ~ c3_1(X8) ) ) )
      & ( hskp8
        | hskp20
        | hskp9 )
      & ( ! [X9] :
            ( ndr1_0
           => ( c0_1(X9)
              | ~ c3_1(X9)
              | c1_1(X9) ) )
        | hskp21
        | hskp10 )
      & ( ! [X10] :
            ( ndr1_0
           => ( c2_1(X10)
              | ~ c0_1(X10)
              | ~ c1_1(X10) ) )
        | ! [X11] :
            ( ndr1_0
           => ( c1_1(X11)
              | c2_1(X11)
              | c0_1(X11) ) )
        | ! [X12] :
            ( ndr1_0
           => ( ~ c3_1(X12)
              | c0_1(X12)
              | ~ c1_1(X12) ) ) )
      & ( hskp11
        | hskp7
        | hskp6 )
      & ( ! [X13] :
            ( ndr1_0
           => ( ~ c1_1(X13)
              | c0_1(X13)
              | ~ c2_1(X13) ) )
        | hskp12
        | hskp13 )
      & ( hskp14
        | hskp22
        | ! [X14] :
            ( ndr1_0
           => ( c3_1(X14)
              | ~ c2_1(X14)
              | ~ c1_1(X14) ) ) )
      & ( hskp23
        | hskp24
        | ! [X15] :
            ( ndr1_0
           => ( c3_1(X15)
              | ~ c1_1(X15)
              | c2_1(X15) ) ) ) ) ).

%--------------------------------------------------------------------------
