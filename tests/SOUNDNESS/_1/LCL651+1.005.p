%------------------------------------------------------------------------------
% File     : LCL651+1.005 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In K, black and white polygon with even vertices, size 5
% Version  : Especial.
% English  : If we have a polygon with n vertices, and all the vertices are
%            either black or white, then two adjacent vertices have the same
%            colour.

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : k_poly_n [BHS00]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.33 v7.4.0, 0.00 v7.1.0, 0.33 v6.4.0, 0.00 v6.2.0, 0.44 v6.1.0, 0.40 v6.0.0, 0.29 v5.5.0, 0.14 v5.4.0, 0.47 v5.3.0, 0.54 v5.2.0, 0.38 v5.0.0, 0.67 v4.1.0, 0.50 v4.0.1, 0.67 v4.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  316 (   0 equ)
%            Maximal formula atoms :  316 ( 316 avg)
%            Number of connectives :  632 ( 317   ~; 251   |;  64   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :  108 ( 108 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   27 (  27 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :  203 ( 202   !;   1   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
fof(main,conjecture,
    ~ ? [X] :
        ~ ( ! [Y] :
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
                                                                              | ( ~ p34(Y)
                                                                                & ~ p32(Y)
                                                                                & ~ p30(Y)
                                                                                & ~ p28(Y)
                                                                                & ~ p26(Y)
                                                                                & ~ p24(Y)
                                                                                & ~ p22(Y)
                                                                                & ~ p20(Y)
                                                                                & ~ p18(Y)
                                                                                & ~ p16(Y)
                                                                                & ~ p14(Y)
                                                                                & ~ p12(Y)
                                                                                & ~ p10(Y)
                                                                                & ~ p8(Y)
                                                                                & ~ p6(Y)
                                                                                & ~ p4(Y)
                                                                                & ~ p2(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | p18(Y) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ~ ! [X] :
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
                                                                                      | ~ ( ( ~ p16(Y)
                                                                                            & ~ p1(Y) )
                                                                                          | ( p1(Y)
                                                                                            & p16(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | p17(X) )
                    | ~ ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ( ~ ! [Y] :
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
                                                                                            | ~ ( ( ~ p15(Y)
                                                                                                  & ~ p16(Y) )
                                                                                                | ( p16(Y)
                                                                                                  & p15(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                              | ! [Y] :
                                  ( ~ r1(X,Y)
                                  | p16(Y) )
                              | ~ ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ~ ( ~ ! [X] :
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
                                                                                                  | ~ ( ( ~ p14(Y)
                                                                                                        & ~ p15(Y) )
                                                                                                      | ( p15(Y)
                                                                                                        & p14(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | p15(X) )
                                        | ~ ! [X] :
                                              ( ~ r1(Y,X)
                                              | ~ ( ~ ! [Y] :
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
                                                                                                        | ~ ( ( ~ p13(Y)
                                                                                                              & ~ p14(Y) )
                                                                                                            | ( p14(Y)
                                                                                                              & p13(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                  | ! [Y] :
                                                      ( ~ r1(X,Y)
                                                      | p14(Y) )
                                                  | ~ ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ~ ( ~ ! [X] :
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
                                                                                                              | ~ ( ( ~ p12(Y)
                                                                                                                    & ~ p13(Y) )
                                                                                                                  | ( p13(Y)
                                                                                                                    & p12(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                            | ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | p13(X) )
                                                            | ~ ! [X] :
                                                                  ( ~ r1(Y,X)
                                                                  | ~ ( ~ ! [Y] :
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
                                                                                                                    | ~ ( ( ~ p11(Y)
                                                                                                                          & ~ p12(Y) )
                                                                                                                        | ( p12(Y)
                                                                                                                          & p11(Y) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                                      | ! [Y] :
                                                                          ( ~ r1(X,Y)
                                                                          | p12(Y) )
                                                                      | ~ ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ~ ( ~ ! [X] :
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
                                                                                                                          | ~ ( ( ~ p10(Y)
                                                                                                                                & ~ p11(Y) )
                                                                                                                              | ( p11(Y)
                                                                                                                                & p10(Y) ) ) ) ) ) ) ) ) ) ) ) )
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
                                                                                    | p11(X) )
                                                                                | ~ ! [X] :
                                                                                      ( ~ r1(Y,X)
                                                                                      | ~ ( ~ ! [Y] :
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
                                                                                                                                | ~ ( ( ~ p9(Y)
                                                                                                                                      & ~ p10(Y) )
                                                                                                                                    | ( p10(Y)
                                                                                                                                      & p9(Y) ) ) ) ) ) ) ) ) ) ) )
                                                                                          | ! [Y] :
                                                                                              ( ~ r1(X,Y)
                                                                                              | p10(Y) )
                                                                                          | ~ ! [Y] :
                                                                                                ( ~ r1(X,Y)
                                                                                                | ~ ( ~ ! [X] :
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
                                                                                                                                      | ~ ( ( ~ p8(Y)
                                                                                                                                            & ~ p9(Y) )
                                                                                                                                          | ( p9(Y)
                                                                                                                                            & p8(Y) ) ) ) ) ) ) ) ) ) )
                                                                                                    | ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | p9(X) )
                                                                                                    | ~ ! [X] :
                                                                                                          ( ~ r1(Y,X)
                                                                                                          | ~ ( ~ ! [Y] :
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
                                                                                                                                            | ~ ( ( ~ p7(Y)
                                                                                                                                                  & ~ p8(Y) )
                                                                                                                                                | ( p8(Y)
                                                                                                                                                  & p7(Y) ) ) ) ) ) ) ) ) )
                                                                                                              | ! [Y] :
                                                                                                                  ( ~ r1(X,Y)
                                                                                                                  | p8(Y) )
                                                                                                              | ~ ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ~ ( ~ ! [X] :
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
                                                                                                                                                  | ~ ( ( ~ p6(Y)
                                                                                                                                                        & ~ p7(Y) )
                                                                                                                                                      | ( p7(Y)
                                                                                                                                                        & p6(Y) ) ) ) ) ) ) ) )
                                                                                                                        | ! [X] :
                                                                                                                            ( ~ r1(Y,X)
                                                                                                                            | p7(X) )
                                                                                                                        | ~ ! [X] :
                                                                                                                              ( ~ r1(Y,X)
                                                                                                                              | ~ ( ~ ! [Y] :
                                                                                                                                        ( ~ r1(X,Y)
                                                                                                                                        | ! [X] :
                                                                                                                                            ( ~ r1(Y,X)
                                                                                                                                            | ! [Y] :
                                                                                                                                                ( ~ r1(X,Y)
                                                                                                                                                | ! [X] :
                                                                                                                                                    ( ~ r1(Y,X)
                                                                                                                                                    | ! [Y] :
                                                                                                                                                        ( ~ r1(X,Y)
                                                                                                                                                        | ~ ( ( ~ p5(Y)
                                                                                                                                                              & ~ p6(Y) )
                                                                                                                                                            | ( p6(Y)
                                                                                                                                                              & p5(Y) ) ) ) ) ) ) )
                                                                                                                                  | ! [Y] :
                                                                                                                                      ( ~ r1(X,Y)
                                                                                                                                      | p6(Y) )
                                                                                                                                  | ~ ! [Y] :
                                                                                                                                        ( ~ r1(X,Y)
                                                                                                                                        | ~ ( ~ ! [X] :
                                                                                                                                                  ( ~ r1(Y,X)
                                                                                                                                                  | ! [Y] :
                                                                                                                                                      ( ~ r1(X,Y)
                                                                                                                                                      | ! [X] :
                                                                                                                                                          ( ~ r1(Y,X)
                                                                                                                                                          | ! [Y] :
                                                                                                                                                              ( ~ r1(X,Y)
                                                                                                                                                              | ~ ( ( ~ p4(Y)
                                                                                                                                                                    & ~ p5(Y) )
                                                                                                                                                                  | ( p5(Y)
                                                                                                                                                                    & p4(Y) ) ) ) ) ) )
                                                                                                                                            | ! [X] :
                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                | p5(X) )
                                                                                                                                            | ~ ! [X] :
                                                                                                                                                  ( ~ r1(Y,X)
                                                                                                                                                  | ~ ( ~ ! [Y] :
                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                            | ! [X] :
                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                | ! [Y] :
                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                    | ~ ( ( ~ p3(Y)
                                                                                                                                                                          & ~ p4(Y) )
                                                                                                                                                                        | ( p4(Y)
                                                                                                                                                                          & p3(Y) ) ) ) ) )
                                                                                                                                                      | ! [Y] :
                                                                                                                                                          ( ~ r1(X,Y)
                                                                                                                                                          | p4(Y) )
                                                                                                                                                      | ~ ! [Y] :
                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                            | ~ ( ~ ! [X] :
                                                                                                                                                                      ( ~ r1(Y,X)
                                                                                                                                                                      | ! [Y] :
                                                                                                                                                                          ( ~ r1(X,Y)
                                                                                                                                                                          | ~ ( ( ~ p2(Y)
                                                                                                                                                                                & ~ p3(Y) )
                                                                                                                                                                              | ( p3(Y)
                                                                                                                                                                                & p2(Y) ) ) ) )
                                                                                                                                                                | ! [X] :
                                                                                                                                                                    ( ~ r1(Y,X)
                                                                                                                                                                    | p3(X) )
                                                                                                                                                                | ~ ! [X] :
                                                                                                                                                                      ( ~ r1(Y,X)
                                                                                                                                                                      | ~ ~ ! [Y] :
                                                                                                                                                                              ( ~ r1(X,Y)
                                                                                                                                                                              | ~ ( ( ~ p1(Y)
                                                                                                                                                                                    & ~ p2(Y) )
                                                                                                                                                                                  | ( p2(Y)
                                                                                                                                                                                    & p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                              | ( p17(Y)
                                                                                & p16(Y)
                                                                                & p15(Y)
                                                                                & p14(Y)
                                                                                & p13(Y)
                                                                                & p12(Y)
                                                                                & p11(Y)
                                                                                & p10(Y)
                                                                                & p9(Y)
                                                                                & p8(Y)
                                                                                & p7(Y)
                                                                                & p6(Y)
                                                                                & p5(Y)
                                                                                & p4(Y)
                                                                                & p3(Y)
                                                                                & p2(Y)
                                                                                & p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
