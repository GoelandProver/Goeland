%--------------------------------------------------------------------------
% File     : SYN523+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=20, K=3, D=2, P=0, Index=059
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-20-3-2-059.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  103 (   0 equ)
%            Maximal formula atoms :  103 ( 103 avg)
%            Number of connectives :  143 (  41   ~;  39   |;  51   &)
%                                         (   0 <=>;  12  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   26 (  26 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   16 (  16 usr;  16 con; 0-0 aty)
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
    ~ ( ( ! [U] :
            ( ndr1_0
           => ( ( ndr1_1(U)
                & ~ c2_2(U,a141)
                & ~ c5_2(U,a141)
                & ~ c1_2(U,a141) )
              | ( ndr1_1(U)
                & c3_2(U,a142)
                & ~ c4_2(U,a142) )
              | ~ c1_1(U) ) )
        | ( ndr1_0
          & ~ c1_1(a143) )
        | ~ c2_0 )
      & ( c5_0
        | c2_0
        | c1_0 )
      & ( ~ c4_0
        | ( ndr1_0
          & ! [V] :
              ( ndr1_1(a144)
             => ( c3_2(a144,V)
                | c4_2(a144,V)
                | ~ c5_2(a144,V) ) )
          & c5_1(a144)
          & ~ c4_1(a144) ) )
      & ( ~ c1_0
        | ! [W] :
            ( ndr1_0
           => ( ~ c5_1(W)
              | ~ c3_1(W)
              | ! [X] :
                  ( ndr1_1(W)
                 => ( c4_2(W,X)
                    | c1_2(W,X) ) ) ) ) )
      & ( ( ndr1_0
          & ! [Y] :
              ( ndr1_1(a145)
             => ( ~ c2_2(a145,Y)
                | ~ c5_2(a145,Y)
                | ~ c1_2(a145,Y) ) )
          & c3_1(a145)
          & ~ c5_1(a145) )
        | c2_0 )
      & ( ( ndr1_0
          & ~ c3_1(a146)
          & c4_1(a146) )
        | c4_0
        | ! [Z] :
            ( ndr1_0
           => ( c5_1(Z)
              | ( ndr1_1(Z)
                & c3_2(Z,a147)
                & ~ c1_2(Z,a147)
                & ~ c5_2(Z,a147) ) ) ) )
      & ( ~ c5_0
        | ~ c1_0
        | ( ndr1_0
          & c5_1(a148)
          & ~ c3_1(a148)
          & ~ c2_1(a148) ) )
      & ( ! [X1] :
            ( ndr1_0
           => ( ( ndr1_1(X1)
                & c5_2(X1,a149)
                & c4_2(X1,a149) )
              | c4_1(X1)
              | c3_1(X1) ) )
        | ( ndr1_0
          & ! [X2] :
              ( ndr1_1(a150)
             => ( c5_2(a150,X2)
                | ~ c4_2(a150,X2) ) )
          & ~ c4_1(a150) )
        | c3_0 )
      & ( ~ c3_0
        | ( ndr1_0
          & ~ c2_1(a151)
          & ~ c3_1(a151) ) )
      & ( ( ndr1_0
          & ~ c4_1(a152)
          & ~ c1_1(a152)
          & c3_1(a152) )
        | c2_0
        | ! [X3] :
            ( ndr1_0
           => ( c5_1(X3)
              | c4_1(X3) ) ) )
      & ( ( ndr1_0
          & ~ c1_1(a153)
          & ~ c5_1(a153) )
        | ( ndr1_0
          & ~ c5_1(a154)
          & c1_1(a154)
          & ! [X4] :
              ( ndr1_1(a154)
             => ( ~ c5_2(a154,X4)
                | ~ c1_2(a154,X4) ) ) )
        | c3_0 )
      & ( ~ c4_0
        | ! [X5] :
            ( ndr1_0
           => ( c4_1(X5)
              | c5_1(X5)
              | c1_1(X5) ) )
        | ( ndr1_0
          & ~ c4_1(a155)
          & ndr1_1(a155)
          & c1_2(a155,a156)
          & c5_2(a155,a156)
          & c2_2(a155,a156)
          & ! [X6] :
              ( ndr1_1(a155)
             => ( ~ c4_2(a155,X6)
                | ~ c2_2(a155,X6)
                | c5_2(a155,X6) ) ) ) ) ) ).

%--------------------------------------------------------------------------
