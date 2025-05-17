%--------------------------------------------------------------------------
% File     : SYN540+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=40, K=3, D=2, P=0, Index=084
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-40-3-2-084.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.10 v5.4.0, 0.00 v4.1.0, 0.50 v4.0.1, 0.33 v3.7.0, 0.00 v3.5.0, 0.25 v3.4.0, 0.00 v3.2.0, 0.25 v3.1.0, 0.67 v2.6.0, 0.50 v2.5.0, 0.33 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  319 (   0 equ)
%            Maximal formula atoms :  319 ( 319 avg)
%            Number of connectives :  439 ( 121   ~; 124   |; 148   &)
%                                         (   0 <=>;  46  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   45 (  45 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   44 (  44 usr;  44 con; 0-0 aty)
%            Number of variables   :   46 (  46   !;   0   ?)
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
    ~ ( ( ! [U] :
            ( ndr1_0
           => ( c2_1(U)
              | ( ndr1_1(U)
                & c5_2(U,a681)
                & ~ c1_2(U,a681)
                & c4_2(U,a681) )
              | ! [V] :
                  ( ndr1_1(U)
                 => ( c2_2(U,V)
                    | ~ c4_2(U,V)
                    | c1_2(U,V) ) ) ) )
        | c1_0
        | c4_0 )
      & ( ! [W] :
            ( ndr1_0
           => ( ! [X] :
                  ( ndr1_1(W)
                 => ( ~ c2_2(W,X)
                    | c5_2(W,X) ) )
              | ( ndr1_1(W)
                & c1_2(W,a682)
                & ~ c4_2(W,a682) )
              | ! [Y] :
                  ( ndr1_1(W)
                 => ( ~ c4_2(W,Y)
                    | ~ c2_2(W,Y)
                    | c3_2(W,Y) ) ) ) )
        | ! [Z] :
            ( ndr1_0
           => ( ~ c4_1(Z)
              | c5_1(Z) ) )
        | c4_0 )
      & ( ! [X1] :
            ( ndr1_0
           => ( ( ndr1_1(X1)
                & c4_2(X1,a683)
                & c1_2(X1,a683) )
              | ( ndr1_1(X1)
                & c1_2(X1,a684)
                & ~ c2_2(X1,a684) ) ) )
        | c3_0
        | ( ndr1_0
          & ~ c1_1(a685)
          & ndr1_1(a685)
          & ~ c3_2(a685,a686)
          & ~ c5_2(a685,a686)
          & ~ c4_2(a685,a686)
          & ! [X2] :
              ( ndr1_1(a685)
             => ( c1_2(a685,X2)
                | ~ c2_2(a685,X2) ) ) ) )
      & ( ( ndr1_0
          & ! [X3] :
              ( ndr1_1(a687)
             => ( ~ c2_2(a687,X3)
                | ~ c1_2(a687,X3)
                | ~ c4_2(a687,X3) ) )
          & ~ c1_1(a687)
          & ndr1_1(a687)
          & c4_2(a687,a688)
          & c2_2(a687,a688)
          & ~ c5_2(a687,a688) )
        | c4_0
        | ( ndr1_0
          & ndr1_1(a689)
          & ~ c1_2(a689,a690)
          & c2_2(a689,a690)
          & c3_2(a689,a690)
          & ! [X4] :
              ( ndr1_1(a689)
             => ( c3_2(a689,X4)
                | ~ c5_2(a689,X4)
                | ~ c4_2(a689,X4) ) )
          & ndr1_1(a689)
          & c5_2(a689,a691)
          & ~ c4_2(a689,a691)
          & c1_2(a689,a691) ) )
      & ( ( ndr1_0
          & ~ c1_1(a692)
          & ~ c4_1(a692)
          & ! [X5] :
              ( ndr1_1(a692)
             => ( c4_2(a692,X5)
                | ~ c3_2(a692,X5)
                | c2_2(a692,X5) ) ) )
        | ( ndr1_0
          & c2_1(a693)
          & ~ c5_1(a693)
          & ! [X6] :
              ( ndr1_1(a693)
             => ( c2_2(a693,X6)
                | ~ c1_2(a693,X6) ) ) )
        | c3_0 )
      & ( ~ c1_0
        | c2_0 )
      & ( c2_0
        | c5_0
        | ! [X7] :
            ( ndr1_0
           => ( ~ c5_1(X7)
              | c2_1(X7)
              | c1_1(X7) ) ) )
      & ( c2_0
        | c3_0
        | ~ c5_0 )
      & ( c4_0
        | ( ndr1_0
          & ~ c3_1(a694)
          & ~ c1_1(a694)
          & ! [X8] :
              ( ndr1_1(a694)
             => ( c2_2(a694,X8)
                | c4_2(a694,X8)
                | c3_2(a694,X8) ) ) ) )
      & ( c1_0
        | ~ c2_0
        | ~ c4_0 )
      & ( ~ c3_0
        | ! [X9] :
            ( ndr1_0
           => ( ~ c5_1(X9)
              | ~ c3_1(X9)
              | c4_1(X9) ) ) )
      & ( ! [X10] :
            ( ndr1_0
           => ( ! [X11] :
                  ( ndr1_1(X10)
                 => ( ~ c1_2(X10,X11)
                    | ~ c2_2(X10,X11) ) )
              | ( ndr1_1(X10)
                & c3_2(X10,a695)
                & c2_2(X10,a695) )
              | ! [X12] :
                  ( ndr1_1(X10)
                 => ( ~ c2_2(X10,X12)
                    | c3_2(X10,X12)
                    | ~ c4_2(X10,X12) ) ) ) )
        | c2_0 )
      & ( ! [X13] :
            ( ndr1_0
           => ( ! [X14] :
                  ( ndr1_1(X13)
                 => ( ~ c3_2(X13,X14)
                    | c1_2(X13,X14) ) )
              | c4_1(X13) ) )
        | ~ c1_0
        | ( ndr1_0
          & c2_1(a696)
          & c5_1(a696) ) )
      & ( ~ c4_0
        | ( ndr1_0
          & c5_1(a697)
          & ~ c2_1(a697)
          & ~ c4_1(a697) ) )
      & ( c5_0
        | ( ndr1_0
          & c3_1(a698)
          & ndr1_1(a698)
          & ~ c4_2(a698,a699)
          & ~ c1_2(a698,a699)
          & ! [X15] :
              ( ndr1_1(a698)
             => ( c5_2(a698,X15)
                | c1_2(a698,X15)
                | c4_2(a698,X15) ) ) ) )
      & ( c4_0
        | ( ndr1_0
          & ~ c5_1(a700)
          & ndr1_1(a700)
          & ~ c1_2(a700,a701)
          & ~ c4_2(a700,a701)
          & ~ c2_2(a700,a701)
          & ~ c3_1(a700) )
        | ~ c1_0 )
      & ( ( ndr1_0
          & ! [X16] :
              ( ndr1_1(a702)
             => ( c4_2(a702,X16)
                | ~ c1_2(a702,X16) ) )
          & ! [X17] :
              ( ndr1_1(a702)
             => ( ~ c5_2(a702,X17)
                | c1_2(a702,X17) ) )
          & ! [X18] :
              ( ndr1_1(a702)
             => ( ~ c5_2(a702,X18)
                | c1_2(a702,X18)
                | ~ c2_2(a702,X18) ) ) )
        | c1_0 )
      & ( c3_0
        | ! [X19] :
            ( ndr1_0
           => ( c5_1(X19)
              | ( ndr1_1(X19)
                & ~ c1_2(X19,a703)
                & ~ c3_2(X19,a703) ) ) )
        | ~ c5_0 )
      & ( ! [X20] :
            ( ndr1_0
           => ( ! [X21] :
                  ( ndr1_1(X20)
                 => ( c1_2(X20,X21)
                    | ~ c2_2(X20,X21) ) )
              | c1_1(X20) ) )
        | c4_0 )
      & ( c2_0
        | ~ c4_0 )
      & ( ~ c5_0
        | ~ c1_0
        | c4_0 )
      & ( ~ c2_0
        | ~ c1_0 )
      & ( ! [X22] :
            ( ndr1_0
           => ( ! [X23] :
                  ( ndr1_1(X22)
                 => ( ~ c3_2(X22,X23)
                    | ~ c2_2(X22,X23) ) )
              | c3_1(X22) ) )
        | ( ndr1_0
          & ndr1_1(a704)
          & c3_2(a704,a705)
          & c4_2(a704,a705)
          & c1_2(a704,a705)
          & ~ c4_1(a704)
          & ~ c5_1(a704) )
        | ~ c2_0 )
      & ( ~ c3_0
        | ( ndr1_0
          & ~ c4_1(a706)
          & ndr1_1(a706)
          & ~ c1_2(a706,a707)
          & ~ c5_2(a706,a707)
          & ! [X24] :
              ( ndr1_1(a706)
             => ( ~ c5_2(a706,X24)
                | c2_2(a706,X24)
                | ~ c3_2(a706,X24) ) ) )
        | ! [X25] :
            ( ndr1_0
           => ( ( ndr1_1(X25)
                & c2_2(X25,a708)
                & ~ c5_2(X25,a708)
                & c1_2(X25,a708) )
              | c5_1(X25)
              | ~ c4_1(X25) ) ) )
      & ( c4_0
        | ! [X26] :
            ( ndr1_0
           => ( ( ndr1_1(X26)
                & ~ c1_2(X26,a709)
                & c2_2(X26,a709)
                & c4_2(X26,a709) )
              | ~ c2_1(X26) ) )
        | c5_0 )
      & ( ( ndr1_0
          & c1_1(a710)
          & ! [X27] :
              ( ndr1_1(a710)
             => ( ~ c3_2(a710,X27)
                | ~ c5_2(a710,X27)
                | c4_2(a710,X27) ) ) )
        | c3_0
        | ! [X28] :
            ( ndr1_0
           => ( ( ndr1_1(X28)
                & c4_2(X28,a711)
                & ~ c2_2(X28,a711) )
              | ! [X29] :
                  ( ndr1_1(X28)
                 => ( c2_2(X28,X29)
                    | c1_2(X28,X29) ) )
              | ~ c4_1(X28) ) ) )
      & ( ~ c5_0
        | ! [X30] :
            ( ndr1_0
           => ( ( ndr1_1(X30)
                & c3_2(X30,a712)
                & ~ c5_2(X30,a712)
                & c1_2(X30,a712) )
              | ! [X31] :
                  ( ndr1_1(X30)
                 => ( ~ c1_2(X30,X31)
                    | c4_2(X30,X31)
                    | ~ c3_2(X30,X31) ) )
              | ~ c4_1(X30) ) )
        | ~ c4_0 )
      & ( ~ c3_0
        | c1_0
        | ( ndr1_0
          & ~ c3_1(a713)
          & ! [X32] :
              ( ndr1_1(a713)
             => c2_2(a713,X32) )
          & ndr1_1(a713)
          & ~ c1_2(a713,a714)
          & ~ c2_2(a713,a714)
          & ~ c3_2(a713,a714) ) )
      & ( ~ c3_0
        | ( ndr1_0
          & ~ c3_1(a715)
          & ndr1_1(a715)
          & ~ c5_2(a715,a716)
          & ~ c4_2(a715,a716)
          & ~ c2_2(a715,a716) )
        | ! [X33] :
            ( ndr1_0
           => ( ! [X34] :
                  ( ndr1_1(X33)
                 => ( c2_2(X33,X34)
                    | ~ c3_2(X33,X34) ) )
              | c2_1(X33)
              | ! [X35] :
                  ( ndr1_1(X33)
                 => ( c3_2(X33,X35)
                    | ~ c2_2(X33,X35) ) ) ) ) )
      & ( ( ndr1_0
          & c4_1(a717)
          & ndr1_1(a717)
          & c5_2(a717,a718)
          & c1_2(a717,a718) )
        | ~ c3_0
        | ( ndr1_0
          & ndr1_1(a719)
          & c4_2(a719,a720)
          & c2_2(a719,a720)
          & ~ c2_1(a719)
          & ndr1_1(a719)
          & c4_2(a719,a721)
          & ~ c5_2(a719,a721)
          & c1_2(a719,a721) ) )
      & ( ( ndr1_0
          & ! [X36] :
              ( ndr1_1(a722)
             => ( ~ c1_2(a722,X36)
                | ~ c5_2(a722,X36)
                | ~ c4_2(a722,X36) ) )
          & ! [X37] :
              ( ndr1_1(a722)
             => ( c1_2(a722,X37)
                | ~ c2_2(a722,X37)
                | ~ c3_2(a722,X37) ) )
          & c3_1(a722) )
        | c1_0
        | ( ndr1_0
          & ndr1_1(a723)
          & c4_2(a723,a724)
          & c2_2(a723,a724)
          & ~ c5_2(a723,a724)
          & ! [X38] :
              ( ndr1_1(a723)
             => ( ~ c4_2(a723,X38)
                | ~ c5_2(a723,X38)
                | ~ c2_2(a723,X38) ) ) ) )
      & ( ! [X39] :
            ( ndr1_0
           => ( ! [X40] :
                  ( ndr1_1(X39)
                 => ( ~ c1_2(X39,X40)
                    | c5_2(X39,X40)
                    | ~ c4_2(X39,X40) ) )
              | c4_1(X39)
              | ~ c1_1(X39) ) )
        | ~ c3_0 ) ) ).

%--------------------------------------------------------------------------
