%--------------------------------------------------------------------------
% File     : SYN527+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=25, K=3, D=2, P=0, Index=025
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-25-3-2-025.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  164 (   0 equ)
%            Maximal formula atoms :  164 ( 164 avg)
%            Number of connectives :  218 (  55   ~;  62   |;  85   &)
%                                         (   0 <=>;  16  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   30 (  30 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   26 (  26 usr;  26 con; 0-0 aty)
%            Number of variables   :   16 (  16   !;   0   ?)
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
    ~ ( ( c2_0
        | ( ndr1_0
          & ! [U] :
              ( ndr1_1(a251)
             => ( c2_2(a251,U)
                | c4_2(a251,U) ) )
          & c5_1(a251) )
        | ( ndr1_0
          & ndr1_1(a252)
          & c4_2(a252,a253)
          & c1_2(a252,a253)
          & c5_2(a252,a253) ) )
      & ( c3_0
        | ! [V] :
            ( ndr1_0
           => ( ~ c2_1(V)
              | ( ndr1_1(V)
                & c5_2(V,a254)
                & ~ c2_2(V,a254) )
              | ( ndr1_1(V)
                & ~ c1_2(V,a255)
                & ~ c5_2(V,a255)
                & c4_2(V,a255) ) ) )
        | c2_0 )
      & ( ~ c3_0
        | ~ c5_0
        | ~ c2_0 )
      & ( c4_0
        | ( ndr1_0
          & ~ c4_1(a256)
          & ! [W] :
              ( ndr1_1(a256)
             => ( c1_2(a256,W)
                | c4_2(a256,W)
                | c3_2(a256,W) ) )
          & ndr1_1(a256)
          & c1_2(a256,a257)
          & ~ c4_2(a256,a257)
          & ~ c3_2(a256,a257) )
        | c2_0 )
      & ( c1_0
        | ! [X] :
            ( ndr1_0
           => ( ~ c1_1(X)
              | ~ c4_1(X)
              | ! [Y] :
                  ( ndr1_1(X)
                 => ( ~ c4_2(X,Y)
                    | ~ c5_2(X,Y)
                    | ~ c2_2(X,Y) ) ) ) )
        | c4_0 )
      & ( ~ c1_0
        | c2_0 )
      & ( ( ndr1_0
          & ndr1_1(a258)
          & c3_2(a258,a259)
          & c5_2(a258,a259)
          & ! [Z] :
              ( ndr1_1(a258)
             => ( c1_2(a258,Z)
                | c3_2(a258,Z) ) )
          & ~ c2_1(a258) )
        | ~ c2_0 )
      & ( ( ndr1_0
          & c1_1(a260)
          & ~ c2_1(a260) )
        | c1_0
        | ~ c2_0 )
      & ( ~ c2_0
        | ~ c1_0
        | ~ c4_0 )
      & ( ! [X1] :
            ( ndr1_0
           => ( ( ndr1_1(X1)
                & c4_2(X1,a261)
                & c1_2(X1,a261)
                & c3_2(X1,a261) )
              | c1_1(X1) ) )
        | c2_0 )
      & ( ( ndr1_0
          & c4_1(a262)
          & ndr1_1(a262)
          & c2_2(a262,a263)
          & ~ c5_2(a262,a263)
          & ~ c3_2(a262,a263)
          & ~ c5_1(a262) )
        | ~ c1_0 )
      & ( ( ndr1_0
          & ~ c2_1(a264)
          & ~ c5_1(a264)
          & c4_1(a264) )
        | c5_0
        | c3_0 )
      & ( ~ c3_0
        | ~ c4_0
        | ( ndr1_0
          & ndr1_1(a265)
          & c1_2(a265,a266)
          & c5_2(a265,a266)
          & ! [X2] :
              ( ndr1_1(a265)
             => ( c4_2(a265,X2)
                | ~ c2_2(a265,X2)
                | c3_2(a265,X2) ) ) ) )
      & ( ~ c5_0
        | ~ c1_0
        | ( ndr1_0
          & c5_1(a267)
          & ndr1_1(a267)
          & c1_2(a267,a268)
          & ~ c4_2(a267,a268)
          & c3_2(a267,a268) ) )
      & ( c3_0
        | ! [X3] :
            ( ndr1_0
           => ( c2_1(X3)
              | ~ c4_1(X3) ) ) )
      & ( ! [X4] :
            ( ndr1_0
           => ( ~ c1_1(X4)
              | ( ndr1_1(X4)
                & c5_2(X4,a269)
                & ~ c3_2(X4,a269) )
              | c4_1(X4) ) )
        | ( ndr1_0
          & c4_1(a270)
          & ~ c5_1(a270)
          & ndr1_1(a270)
          & c3_2(a270,a271)
          & c5_2(a270,a271)
          & ~ c2_2(a270,a271) )
        | ! [X5] :
            ( ndr1_0
           => ( ~ c5_1(X5)
              | c2_1(X5)
              | ~ c3_1(X5) ) ) )
      & ( ~ c3_0
        | ! [X6] :
            ( ndr1_0
           => ( ! [X7] :
                  ( ndr1_1(X6)
                 => ( c1_2(X6,X7)
                    | ~ c3_2(X6,X7)
                    | ~ c2_2(X6,X7) ) )
              | ( ndr1_1(X6)
                & ~ c1_2(X6,a272)
                & ~ c2_2(X6,a272) )
              | ( ndr1_1(X6)
                & c2_2(X6,a273)
                & ~ c5_2(X6,a273) ) ) ) )
      & ( c4_0
        | c5_0
        | c2_0 )
      & ( ( ndr1_0
          & ~ c5_1(a274)
          & c1_1(a274)
          & c4_1(a274) )
        | ~ c1_0
        | ~ c5_0 )
      & ( c4_0
        | ( ndr1_0
          & ! [X8] :
              ( ndr1_1(a275)
             => ( c1_2(a275,X8)
                | c2_2(a275,X8) ) )
          & ndr1_1(a275)
          & c1_2(a275,a276)
          & c4_2(a275,a276)
          & ~ c5_2(a275,a276) )
        | ! [X9] :
            ( ndr1_0
           => ( ~ c2_1(X9)
              | c4_1(X9)
              | c3_1(X9) ) ) )
      & ( c1_0
        | ! [X10] :
            ( ndr1_0
           => ( c3_1(X10)
              | c4_1(X10) ) )
        | ~ c3_0 ) ) ).

%--------------------------------------------------------------------------
