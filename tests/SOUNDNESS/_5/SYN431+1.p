%--------------------------------------------------------------------------
% File     : SYN431+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=16, K=3, D=1, P=0, Index=042
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-16-3-1-042.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.50 v4.0.1, 0.33 v3.7.0, 0.00 v3.5.0, 0.25 v3.4.0, 0.00 v3.1.0, 0.50 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  243 (   0 equ)
%            Maximal formula atoms :  243 ( 243 avg)
%            Number of connectives :  344 ( 102   ~;  94   |; 131   &)
%                                         (   0 <=>;  17  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   53 (  53 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   34 (  34 usr;  30 prp; 0-1 aty)
%            Number of functors    :   29 (  29 usr;  29 con; 0-0 aty)
%            Number of variables   :   17 (  17   !;   0   ?)
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
          & ~ c1_1(a132)
          & ~ c0_1(a132)
          & ~ c3_1(a132) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & c2_1(a133)
          & ~ c1_1(a133)
          & ~ c0_1(a133) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & c1_1(a135)
          & ~ c2_1(a135)
          & ~ c0_1(a135) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & c2_1(a136)
          & ~ c0_1(a136)
          & ~ c3_1(a136) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & c1_1(a137)
          & c3_1(a137)
          & ~ c2_1(a137) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & c2_1(a139)
          & c0_1(a139)
          & ~ c1_1(a139) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & c1_1(a140)
          & c0_1(a140)
          & ~ c3_1(a140) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & c2_1(a141)
          & c3_1(a141)
          & ~ c1_1(a141) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & c3_1(a142)
          & c1_1(a142)
          & ~ c0_1(a142) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & ~ c2_1(a145)
          & ~ c0_1(a145)
          & ~ c3_1(a145) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & c0_1(a146)
          & ~ c2_1(a146)
          & ~ c1_1(a146) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & c1_1(a151)
          & ~ c3_1(a151)
          & ~ c0_1(a151) ) )
      & ( ~ hskp12
        | ( ndr1_0
          & ~ c2_1(a154)
          & ~ c3_1(a154)
          & ~ c1_1(a154) ) )
      & ( ~ hskp13
        | ( ndr1_0
          & ~ c3_1(a156)
          & c1_1(a156)
          & ~ c0_1(a156) ) )
      & ( ~ hskp14
        | ( ndr1_0
          & c1_1(a159)
          & c2_1(a159)
          & ~ c3_1(a159) ) )
      & ( ~ hskp15
        | ( ndr1_0
          & ~ c1_1(a160)
          & ~ c2_1(a160)
          & ~ c3_1(a160) ) )
      & ( ~ hskp16
        | ( ndr1_0
          & c0_1(a161)
          & c2_1(a161)
          & ~ c1_1(a161) ) )
      & ( ~ hskp17
        | ( ndr1_0
          & c2_1(a134)
          & ~ c3_1(a134)
          & c0_1(a134) ) )
      & ( ~ hskp18
        | ( ndr1_0
          & ~ c2_1(a138)
          & c0_1(a138)
          & c3_1(a138) ) )
      & ( ~ hskp19
        | ( ndr1_0
          & c2_1(a143)
          & c0_1(a143)
          & c1_1(a143) ) )
      & ( ~ hskp20
        | ( ndr1_0
          & ~ c0_1(a144)
          & c2_1(a144)
          & c3_1(a144) ) )
      & ( ~ hskp21
        | ( ndr1_0
          & c2_1(a147)
          & ~ c0_1(a147)
          & c3_1(a147) ) )
      & ( ~ hskp22
        | ( ndr1_0
          & ~ c3_1(a148)
          & c1_1(a148)
          & c2_1(a148) ) )
      & ( ~ hskp23
        | ( ndr1_0
          & ~ c3_1(a149)
          & c1_1(a149)
          & c0_1(a149) ) )
      & ( ~ hskp24
        | ( ndr1_0
          & ~ c2_1(a150)
          & c1_1(a150)
          & c0_1(a150) ) )
      & ( ~ hskp25
        | ( ndr1_0
          & c3_1(a152)
          & ~ c0_1(a152)
          & c2_1(a152) ) )
      & ( ~ hskp26
        | ( ndr1_0
          & ~ c0_1(a153)
          & ~ c3_1(a153)
          & c1_1(a153) ) )
      & ( ~ hskp27
        | ( ndr1_0
          & ~ c1_1(a157)
          & c3_1(a157)
          & c2_1(a157) ) )
      & ( ~ hskp28
        | ( ndr1_0
          & c1_1(a158)
          & ~ c0_1(a158)
          & c2_1(a158) ) )
      & ( ! [U] :
            ( ndr1_0
           => ( ~ c3_1(U)
              | c2_1(U)
              | c0_1(U) ) )
        | hskp0
        | hskp1 )
      & ( ! [V] :
            ( ndr1_0
           => ( ~ c3_1(V)
              | c1_1(V)
              | ~ c0_1(V) ) )
        | hskp17
        | hskp2 )
      & ( hskp3
        | hskp4
        | ! [W] :
            ( ndr1_0
           => ( ~ c3_1(W)
              | ~ c0_1(W)
              | ~ c2_1(W) ) ) )
      & ( hskp18
        | hskp5
        | hskp6 )
      & ( ! [X] :
            ( ndr1_0
           => ( c0_1(X)
              | c2_1(X)
              | ~ c1_1(X) ) )
        | ! [Y] :
            ( ndr1_0
           => ( ~ c1_1(Y)
              | ~ c0_1(Y)
              | c2_1(Y) ) )
        | ! [Z] :
            ( ndr1_0
           => ( ~ c1_1(Z)
              | ~ c2_1(Z)
              | c0_1(Z) ) ) )
      & ( hskp7
        | ! [X1] :
            ( ndr1_0
           => ( ~ c1_1(X1)
              | ~ c2_1(X1)
              | c3_1(X1) ) )
        | hskp8 )
      & ( hskp19
        | hskp20
        | ! [X2] :
            ( ndr1_0
           => ( c1_1(X2)
              | ~ c2_1(X2)
              | c0_1(X2) ) ) )
      & ( ! [X3] :
            ( ndr1_0
           => ( ~ c2_1(X3)
              | ~ c1_1(X3)
              | c3_1(X3) ) )
        | hskp9
        | hskp10 )
      & ( ! [X4] :
            ( ndr1_0
           => ( c3_1(X4)
              | ~ c2_1(X4)
              | ~ c1_1(X4) ) )
        | ! [X5] :
            ( ndr1_0
           => ( c1_1(X5)
              | ~ c3_1(X5)
              | ~ c2_1(X5) ) ) )
      & ( ! [X6] :
            ( ndr1_0
           => ( c1_1(X6)
              | ~ c2_1(X6)
              | c3_1(X6) ) )
        | ! [X7] :
            ( ndr1_0
           => ( c0_1(X7)
              | ~ c1_1(X7)
              | c2_1(X7) ) )
        | hskp21 )
      & ( hskp22
        | hskp23
        | hskp24 )
      & ( hskp11
        | hskp25
        | hskp26 )
      & ( ! [X8] :
            ( ndr1_0
           => ( ~ c0_1(X8)
              | ~ c2_1(X8)
              | c3_1(X8) ) )
        | ! [X9] :
            ( ndr1_0
           => ( ~ c1_1(X9)
              | c2_1(X9)
              | ~ c3_1(X9) ) )
        | hskp12 )
      & ( hskp3
        | hskp13
        | hskp27 )
      & ( hskp28
        | hskp14
        | ! [X10] :
            ( ndr1_0
           => ( c3_1(X10)
              | c0_1(X10)
              | ~ c1_1(X10) ) ) )
      & ( ! [X11] :
            ( ndr1_0
           => ( ~ c3_1(X11)
              | ~ c2_1(X11)
              | c0_1(X11) ) )
        | hskp15
        | hskp16 ) ) ).

%--------------------------------------------------------------------------
