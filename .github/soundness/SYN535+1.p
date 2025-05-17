%--------------------------------------------------------------------------
% File     : SYN535+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=5, R=1, L=25, K=3, D=2, P=0, Index=094
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-5-1-25-3-2-094.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  195 (   0 equ)
%            Maximal formula atoms :  195 ( 195 avg)
%            Number of connectives :  269 (  75   ~;  74   |;  96   &)
%                                         (   0 <=>;  24  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   32 (  32 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   6 prp; 0-2 aty)
%            Number of functors    :   28 (  28 usr;  28 con; 0-0 aty)
%            Number of variables   :   24 (  24   !;   0   ?)
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
        | c1_0 )
      & ( ~ c3_0
        | ! [U] :
            ( ndr1_0
           => ( c4_1(U)
              | c5_1(U) ) )
        | c5_0 )
      & ( c1_0
        | ( ndr1_0
          & ~ c2_1(a492)
          & ndr1_1(a492)
          & ~ c5_2(a492,a493)
          & ~ c3_2(a492,a493)
          & ~ c2_2(a492,a493)
          & c5_1(a492) )
        | ( ndr1_0
          & ~ c3_1(a494)
          & ~ c4_1(a494)
          & ! [V] :
              ( ndr1_1(a494)
             => ( c3_2(a494,V)
                | c1_2(a494,V)
                | ~ c4_2(a494,V) ) ) ) )
      & ( c3_0
        | ( ndr1_0
          & ndr1_1(a495)
          & c4_2(a495,a496)
          & ~ c5_2(a495,a496)
          & c2_2(a495,a496)
          & c2_1(a495)
          & ! [W] :
              ( ndr1_1(a495)
             => ( ~ c5_2(a495,W)
                | ~ c3_2(a495,W) ) ) ) )
      & ( c3_0
        | ~ c5_0
        | c1_0 )
      & ( ! [X] :
            ( ndr1_0
           => ( ! [Y] :
                  ( ndr1_1(X)
                 => ( c2_2(X,Y)
                    | c1_2(X,Y) ) )
              | ( ndr1_1(X)
                & c5_2(X,a497)
                & c1_2(X,a497)
                & c3_2(X,a497) )
              | c3_1(X) ) )
        | c3_0
        | ( ndr1_0
          & ! [Z] :
              ( ndr1_1(a498)
             => ( ~ c4_2(a498,Z)
                | c3_2(a498,Z) ) )
          & c4_1(a498) ) )
      & ( c1_0
        | ( ndr1_0
          & ~ c4_1(a499) ) )
      & ( c3_0
        | ~ c4_0
        | ~ c1_0 )
      & ( ~ c2_0
        | ( ndr1_0
          & ~ c2_1(a500)
          & ndr1_1(a500)
          & c1_2(a500,a501)
          & ~ c2_2(a500,a501)
          & ~ c3_2(a500,a501)
          & c3_1(a500) )
        | ! [X1] :
            ( ndr1_0
           => ( c5_1(X1)
              | ! [X2] :
                  ( ndr1_1(X1)
                 => ( c3_2(X1,X2)
                    | c1_2(X1,X2)
                    | ~ c4_2(X1,X2) ) )
              | ( ndr1_1(X1)
                & ~ c2_2(X1,a502)
                & ~ c3_2(X1,a502)
                & c5_2(X1,a502) ) ) ) )
      & ( ! [X3] :
            ( ndr1_0
           => ( ~ c3_1(X3)
              | c2_1(X3)
              | ~ c1_1(X3) ) )
        | c2_0
        | ( ndr1_0
          & ndr1_1(a503)
          & c4_2(a503,a504)
          & ~ c2_2(a503,a504)
          & ~ c5_2(a503,a504)
          & ! [X4] :
              ( ndr1_1(a503)
             => ( ~ c3_2(a503,X4)
                | c1_2(a503,X4)
                | ~ c5_2(a503,X4) ) )
          & ndr1_1(a503)
          & ~ c3_2(a503,a505)
          & ~ c5_2(a503,a505)
          & ~ c2_2(a503,a505) ) )
      & ( ! [X5] :
            ( ndr1_0
           => ( c4_1(X5)
              | ( ndr1_1(X5)
                & c4_2(X5,a506)
                & c5_2(X5,a506)
                & ~ c3_2(X5,a506) )
              | ~ c5_1(X5) ) )
        | ( ndr1_0
          & ! [X6] :
              ( ndr1_1(a507)
             => ( ~ c2_2(a507,X6)
                | ~ c3_2(a507,X6)
                | ~ c5_2(a507,X6) ) )
          & ~ c4_1(a507)
          & c3_1(a507) )
        | ( ndr1_0
          & c5_1(a508)
          & c1_1(a508) ) )
      & ( c3_0
        | c4_0
        | ~ c5_0 )
      & ( ( ndr1_0
          & ! [X7] :
              ( ndr1_1(a509)
             => ( c4_2(a509,X7)
                | ~ c2_2(a509,X7)
                | c5_2(a509,X7) ) )
          & ~ c2_1(a509) )
        | ! [X8] :
            ( ndr1_0
           => ( ( ndr1_1(X8)
                & ~ c2_2(X8,a510)
                & ~ c3_2(X8,a510) )
              | ~ c3_1(X8)
              | c2_1(X8) ) )
        | ! [X9] :
            ( ndr1_0
           => ( c3_1(X9)
              | ! [X10] :
                  ( ndr1_1(X9)
                 => ( ~ c4_2(X9,X10)
                    | ~ c3_2(X9,X10) ) ) ) ) )
      & ( ( ndr1_0
          & ! [X11] :
              ( ndr1_1(a511)
             => ( c2_2(a511,X11)
                | c4_2(a511,X11)
                | ~ c3_2(a511,X11) ) )
          & ~ c3_1(a511)
          & ~ c2_1(a511) )
        | ~ c4_0
        | ( ndr1_0
          & c4_1(a512)
          & ~ c3_1(a512)
          & c1_1(a512) ) )
      & ( ~ c2_0
        | ~ c5_0 )
      & ( ~ c4_0
        | ! [X12] :
            ( ndr1_0
           => ( ~ c4_1(X12)
              | ~ c3_1(X12)
              | ! [X13] :
                  ( ndr1_1(X12)
                 => ( ~ c4_2(X12,X13)
                    | ~ c5_2(X12,X13) ) ) ) )
        | ~ c5_0 )
      & ( ( ndr1_0
          & ~ c4_1(a513)
          & c1_1(a513)
          & c3_1(a513) )
        | c2_0
        | ( ndr1_0
          & c1_1(a514)
          & ndr1_1(a514)
          & ~ c5_2(a514,a515)
          & c3_2(a514,a515)
          & c2_2(a514,a515)
          & ! [X14] :
              ( ndr1_1(a514)
             => ( ~ c4_2(a514,X14)
                | c5_2(a514,X14)
                | c3_2(a514,X14) ) ) ) )
      & ( ~ c1_0
        | ( ndr1_0
          & c3_1(a516)
          & ! [X15] :
              ( ndr1_1(a516)
             => ( ~ c4_2(a516,X15)
                | c3_2(a516,X15)
                | c5_2(a516,X15) ) )
          & ~ c1_1(a516) ) )
      & ( ~ c2_0
        | ! [X16] :
            ( ndr1_0
           => c5_1(X16) )
        | ! [X17] :
            ( ndr1_0
           => ( ~ c4_1(X17)
              | ~ c1_1(X17)
              | ! [X18] :
                  ( ndr1_1(X17)
                 => ( ~ c3_2(X17,X18)
                    | c5_2(X17,X18)
                    | ~ c1_2(X17,X18) ) ) ) ) )
      & ( ( ndr1_0
          & ~ c2_1(a517)
          & c4_1(a517)
          & ndr1_1(a517)
          & c3_2(a517,a518)
          & ~ c4_2(a517,a518)
          & c5_2(a517,a518) )
        | ( ndr1_0
          & ~ c2_1(a519)
          & c1_1(a519) )
        | ~ c2_0 ) ) ).

%--------------------------------------------------------------------------
