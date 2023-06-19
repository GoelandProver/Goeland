%--------------------------------------------------------------------------
% File     : SYN516+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=15, K=3, D=2, P=0, Index=047
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-15-3-2-047.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  119 (   0 equ)
%            Maximal formula atoms :  119 ( 119 avg)
%            Number of connectives :  161 (  43   ~;  38   |;  68   &)
%                                         (   0 <=>;  12  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   22 (  22 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   23 (  23 usr;  23 con; 0-0 aty)
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
    ~ ( ( c4_0
        | c5_0
        | ! [U] :
            ( ndr1_0
           => ( ! [V] :
                  ( ndr1_1(U)
                 => ( c3_2(U,V)
                    | ~ c4_2(U,V)
                    | c5_2(U,V) ) )
              | ( ndr1_1(U)
                & ~ c1_2(U,a27)
                & ~ c5_2(U,a27)
                & c4_2(U,a27) ) ) ) )
      & ( c1_0
        | ! [W] :
            ( ndr1_0
           => ( ! [X] :
                  ( ndr1_1(W)
                 => ( c2_2(W,X)
                    | ~ c5_2(W,X)
                    | c4_2(W,X) ) )
              | ~ c4_1(W) ) ) )
      & ( ! [Y] :
            ( ndr1_0
           => ( c2_1(Y)
              | ( ndr1_1(Y)
                & ~ c5_2(Y,a28)
                & ~ c3_2(Y,a28) ) ) )
        | ! [Z] :
            ( ndr1_0
           => ( c3_1(Z)
              | ( ndr1_1(Z)
                & ~ c1_2(Z,a29)
                & c2_2(Z,a29) )
              | ! [X1] :
                  ( ndr1_1(Z)
                 => ( ~ c3_2(Z,X1)
                    | ~ c5_2(Z,X1)
                    | ~ c1_2(Z,X1) ) ) ) ) )
      & ( ( ndr1_0
          & ~ c1_1(a30)
          & c3_1(a30) )
        | ( ndr1_0
          & ndr1_1(a31)
          & c3_2(a31,a32)
          & ~ c4_2(a31,a32)
          & c5_2(a31,a32)
          & ndr1_1(a31)
          & ~ c4_2(a31,a33)
          & ~ c5_2(a31,a33)
          & c2_2(a31,a33)
          & c1_1(a31) )
        | c5_0 )
      & ( ( ndr1_0
          & ndr1_1(a34)
          & c1_2(a34,a35)
          & ~ c5_2(a34,a35)
          & ~ c4_2(a34,a35)
          & ~ c2_1(a34)
          & ~ c1_1(a34) )
        | ~ c4_0
        | ~ c1_0 )
      & ( ! [X2] :
            ( ndr1_0
           => ( ( ndr1_1(X2)
                & ~ c5_2(X2,a36)
                & ~ c1_2(X2,a36)
                & c3_2(X2,a36) )
              | ! [X3] :
                  ( ndr1_1(X2)
                 => ( c3_2(X2,X3)
                    | c2_2(X2,X3) ) )
              | c5_1(X2) ) )
        | ! [X4] :
            ( ndr1_0
           => ( c5_1(X4)
              | ( ndr1_1(X4)
                & c4_2(X4,a37)
                & c3_2(X4,a37)
                & ~ c2_2(X4,a37) )
              | c4_1(X4) ) ) )
      & ( ~ c4_0
        | ~ c2_0
        | c5_0 )
      & ( ~ c3_0
        | ! [X5] :
            ( ndr1_0
           => ( ~ c5_1(X5)
              | ( ndr1_1(X5)
                & ~ c5_2(X5,a38)
                & c1_2(X5,a38)
                & c3_2(X5,a38) )
              | c4_1(X5) ) ) )
      & ( c3_0
        | ( ndr1_0
          & ndr1_1(a39)
          & c1_2(a39,a40)
          & c2_2(a39,a40)
          & c2_1(a39)
          & ! [X6] :
              ( ndr1_1(a39)
             => ( ~ c5_2(a39,X6)
                | c1_2(a39,X6) ) ) )
        | ( ndr1_0
          & ndr1_1(a41)
          & c5_2(a41,a42)
          & ~ c3_2(a41,a42)
          & c4_2(a41,a42)
          & ~ c2_1(a41) ) )
      & ( ~ c5_0
        | ( ndr1_0
          & ~ c5_1(a43)
          & ~ c2_1(a43) )
        | ( ndr1_0
          & ndr1_1(a44)
          & c1_2(a44,a45)
          & ~ c4_2(a44,a45)
          & ~ c2_2(a44,a45)
          & c3_1(a44)
          & c4_1(a44) ) )
      & ( ~ c2_0
        | ( ndr1_0
          & ~ c3_1(a46) ) )
      & ( ( ndr1_0
          & ~ c3_1(a47) )
        | ( ndr1_0
          & c4_1(a48)
          & ndr1_1(a48)
          & ~ c1_2(a48,a49)
          & ~ c5_2(a48,a49) )
        | c1_0 ) ) ).

%--------------------------------------------------------------------------
