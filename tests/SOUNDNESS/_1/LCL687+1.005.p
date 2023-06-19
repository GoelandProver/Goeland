%------------------------------------------------------------------------------
% File     : LCL687+1.005 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In S4, formula not provable in S5 embedding, size 5
% Version  : Especial.
% English  :

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : s4_s5_n [BHS00]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.4.0, 0.33 v7.3.0, 0.00 v7.0.0, 0.33 v6.4.0, 0.00 v6.2.0, 0.33 v6.1.0, 0.20 v6.0.0, 0.00 v5.5.0, 0.29 v5.4.0, 0.60 v5.3.0, 0.62 v5.2.0, 0.38 v5.0.0, 0.56 v4.1.0, 0.33 v4.0.1, 0.67 v4.0.0
% Syntax   : Number of formulae    :    3 (   1 unt;   0 def)
%            Number of atoms       :  157 (   0 equ)
%            Maximal formula atoms :  153 (  52 avg)
%            Number of connectives :  309 ( 155   ~; 104   |;  49   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   88 (  32 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   28 (  27 usr;   1 prp; 0-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   58 (  57   !;   1   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
fof(reflexivity,axiom,
    ! [X] : r1(X,X) ).

fof(transitivity,axiom,
    ! [X,Y,Z] :
      ( ( r1(X,Y)
        & r1(Y,Z) )
     => r1(X,Z) ) ).

fof(main,conjecture,
    ~ ? [X] :
        ~ ( ! [Y] :
              ( ~ r1(X,Y)
              | ~ p30(Y)
              | ! [X] :
                  ( ~ r1(Y,X)
                  | ~ p1(X) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | ~ ! [X] :
                    ( ~ r1(Y,X)
                    | ~ ( ! [Y] :
                            ( ~ r1(X,Y)
                            | ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ! [X] :
                                                ( ~ r1(Y,X)
                                                | ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ! [X] :
                                                                                                                ( ~ r1(Y,X)
                                                                                                                | ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ! [X] :
                                                                                                                        ( ~ r1(Y,X)
                                                                                                                        | $false )
                                                                                                                    | ~ ! [X] :
                                                                                                                          ( ~ r1(Y,X)
                                                                                                                          | ~ ( ( p25(X)
                                                                                                                                & ~ p24(X) )
                                                                                                                              | ( ~ p25(X)
                                                                                                                                & p24(X) ) ) ) )
                                                                                                                | ~ ! [Y] :
                                                                                                                      ( ~ r1(X,Y)
                                                                                                                      | ~ ( ( p24(Y)
                                                                                                                            & ~ p23(Y) )
                                                                                                                          | ( ~ p24(Y)
                                                                                                                            & p23(Y) ) ) ) )
                                                                                                            | ~ ! [X] :
                                                                                                                  ( ~ r1(Y,X)
                                                                                                                  | ~ ( ( p23(X)
                                                                                                                        & ~ p22(X) )
                                                                                                                      | ( ~ p23(X)
                                                                                                                        & p22(X) ) ) ) )
                                                                                                        | ~ ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ( p22(Y)
                                                                                                                    & ~ p21(Y) )
                                                                                                                  | ( ~ p22(Y)
                                                                                                                    & p21(Y) ) ) ) )
                                                                                                    | ~ ! [X] :
                                                                                                          ( ~ r1(Y,X)
                                                                                                          | ~ ( ( p21(X)
                                                                                                                & ~ p20(X) )
                                                                                                              | ( ~ p21(X)
                                                                                                                & p20(X) ) ) ) )
                                                                                                | ~ ! [Y] :
                                                                                                      ( ~ r1(X,Y)
                                                                                                      | ~ ( ( p20(Y)
                                                                                                            & ~ p19(Y) )
                                                                                                          | ( ~ p20(Y)
                                                                                                            & p19(Y) ) ) ) )
                                                                                            | ~ ! [X] :
                                                                                                  ( ~ r1(Y,X)
                                                                                                  | ~ ( ( p19(X)
                                                                                                        & ~ p18(X) )
                                                                                                      | ( ~ p19(X)
                                                                                                        & p18(X) ) ) ) )
                                                                                        | ~ ! [Y] :
                                                                                              ( ~ r1(X,Y)
                                                                                              | ~ ( ( p18(Y)
                                                                                                    & ~ p17(Y) )
                                                                                                  | ( ~ p18(Y)
                                                                                                    & p17(Y) ) ) ) )
                                                                                    | ~ ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( ( p17(X)
                                                                                                & ~ p16(X) )
                                                                                              | ( ~ p17(X)
                                                                                                & p16(X) ) ) ) )
                                                                                | ~ ! [Y] :
                                                                                      ( ~ r1(X,Y)
                                                                                      | ~ ( ( p16(Y)
                                                                                            & ~ p15(Y) )
                                                                                          | ( ~ p16(Y)
                                                                                            & p15(Y) ) ) ) )
                                                                            | ~ ! [X] :
                                                                                  ( ~ r1(Y,X)
                                                                                  | ~ ( ( p15(X)
                                                                                        & ~ p14(X) )
                                                                                      | ( ~ p15(X)
                                                                                        & p14(X) ) ) ) )
                                                                        | ~ ! [Y] :
                                                                              ( ~ r1(X,Y)
                                                                              | ~ ( ( p14(Y)
                                                                                    & ~ p13(Y) )
                                                                                  | ( ~ p14(Y)
                                                                                    & p13(Y) ) ) ) )
                                                                    | ~ ! [X] :
                                                                          ( ~ r1(Y,X)
                                                                          | ~ ( ( p13(X)
                                                                                & ~ p12(X) )
                                                                              | ( ~ p13(X)
                                                                                & p12(X) ) ) ) )
                                                                | ~ ! [Y] :
                                                                      ( ~ r1(X,Y)
                                                                      | ~ ( ( p12(Y)
                                                                            & ~ p11(Y) )
                                                                          | ( ~ p12(Y)
                                                                            & p11(Y) ) ) ) )
                                                            | ~ ! [X] :
                                                                  ( ~ r1(Y,X)
                                                                  | ~ ( ( p11(X)
                                                                        & ~ p10(X) )
                                                                      | ( ~ p11(X)
                                                                        & p10(X) ) ) ) )
                                                        | ~ ! [Y] :
                                                              ( ~ r1(X,Y)
                                                              | ~ ( ( p10(Y)
                                                                    & ~ p9(Y) )
                                                                  | ( ~ p10(Y)
                                                                    & p9(Y) ) ) ) )
                                                    | ~ ! [X] :
                                                          ( ~ r1(Y,X)
                                                          | ~ ( ( p9(X)
                                                                & ~ p8(X) )
                                                              | ( ~ p9(X)
                                                                & p8(X) ) ) ) )
                                                | ~ ! [Y] :
                                                      ( ~ r1(X,Y)
                                                      | ~ ( ( p8(Y)
                                                            & ~ p7(Y) )
                                                          | ( ~ p8(Y)
                                                            & p7(Y) ) ) ) )
                                            | ~ ! [X] :
                                                  ( ~ r1(Y,X)
                                                  | ~ ( ( p7(X)
                                                        & ~ p6(X) )
                                                      | ( ~ p7(X)
                                                        & p6(X) ) ) ) )
                                        | ~ ! [Y] :
                                              ( ~ r1(X,Y)
                                              | ~ ( ( p6(Y)
                                                    & ~ p5(Y) )
                                                  | ( ~ p6(Y)
                                                    & p5(Y) ) ) ) )
                                    | ~ ! [X] :
                                          ( ~ r1(Y,X)
                                          | ~ ( ( p5(X)
                                                & ~ p4(X) )
                                              | ( ~ p5(X)
                                                & p4(X) ) ) ) )
                                | ~ ! [Y] :
                                      ( ~ r1(X,Y)
                                      | ~ ( ( p4(Y)
                                            & ~ p3(Y) )
                                          | ( ~ p4(Y)
                                            & p3(Y) ) ) ) )
                            | ~ ! [X] :
                                  ( ~ r1(Y,X)
                                  | ~ ( ( p3(X)
                                        & ~ p2(X) )
                                      | ( ~ p3(X)
                                        & p2(X) ) ) ) )
                        | ~ ! [Y] :
                              ( ~ r1(X,Y)
                              | ~ ( ( p2(Y)
                                    & ~ p1(Y) )
                                  | ( ~ p2(Y)
                                    & p1(Y) ) ) )
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | p30(Y) ) ) ) ) ) ).

%------------------------------------------------------------------------------
