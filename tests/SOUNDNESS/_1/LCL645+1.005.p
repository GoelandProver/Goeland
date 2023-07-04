%------------------------------------------------------------------------------
% File     : LCL645+1.005 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In K, L+ is not provable with instances of L, size 5
% Version  : Especial.
% English  :

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : k_lin_n [BHS00]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.4.0, 0.07 v5.3.0, 0.08 v5.2.0, 0.00 v5.0.0, 0.11 v4.1.0, 0.00 v4.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  443 (   0 equ)
%            Maximal formula atoms :  443 ( 443 avg)
%            Number of connectives :  885 ( 443   ~; 382   |;  60   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   48 (  48 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   18 (  18 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :  215 ( 214   !;   1   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
fof(main,conjecture,
    ~ ? [X] :
        ~ ( ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ! [X] :
                      ( ~ r1(Y,X)
                      | p17(X) )
                  | ~ p16(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p17(X) )
                      & p17(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p17(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p17(Y) )
                          | ~ p16(X) )
                      & ( ! [X] :
                            ( ~ r1(Y,X)
                            | p17(X) )
                        | ~ p16(Y) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p16(X) )
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p17(X) )
                      & p17(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p17(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p16(Y) ) )
                      & ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ~ p16(X) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ! [X] :
                      ( ~ r1(Y,X)
                      | p16(X) )
                  | ~ p15(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p16(X) )
                      & p16(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p16(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p16(Y) )
                          | ~ p15(X) )
                      & ( ! [X] :
                            ( ~ r1(Y,X)
                            | p16(X) )
                        | ~ p15(Y) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p15(X) )
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p16(X) )
                      & p16(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p16(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p15(Y) ) )
                      & ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ~ p15(X) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ! [X] :
                      ( ~ r1(Y,X)
                      | p15(X) )
                  | ~ p14(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p15(X) )
                      & p15(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p15(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p15(Y) )
                          | ~ p14(X) )
                      & ( ! [X] :
                            ( ~ r1(Y,X)
                            | p15(X) )
                        | ~ p14(Y) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p14(X) )
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p15(X) )
                      & p15(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p15(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p14(Y) ) )
                      & ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ~ p14(X) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ! [X] :
                      ( ~ r1(Y,X)
                      | p14(X) )
                  | ~ p13(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p14(X) )
                      & p14(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p14(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p14(Y) )
                          | ~ p13(X) )
                      & ( ! [X] :
                            ( ~ r1(Y,X)
                            | p14(X) )
                        | ~ p13(Y) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p13(X) )
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p14(X) )
                      & p14(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p14(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p13(Y) ) )
                      & ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ~ p13(X) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ! [X] :
                      ( ~ r1(Y,X)
                      | p13(X) )
                  | ~ p12(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p13(X) )
                      & p13(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p13(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p13(Y) )
                          | ~ p12(X) )
                      & ( ! [X] :
                            ( ~ r1(Y,X)
                            | p13(X) )
                        | ~ p12(Y) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p12(X) )
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p13(X) )
                      & p13(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p13(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p12(Y) ) )
                      & ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ~ p12(X) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ! [X] :
                      ( ~ r1(Y,X)
                      | p12(X) )
                  | ~ p11(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p12(X) )
                      & p12(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p12(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p12(Y) )
                          | ~ p11(X) )
                      & ( ! [X] :
                            ( ~ r1(Y,X)
                            | p12(X) )
                        | ~ p11(Y) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p11(X) )
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p12(X) )
                      & p12(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p12(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p11(Y) ) )
                      & ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ~ p11(X) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ! [X] :
                      ( ~ r1(Y,X)
                      | p11(X) )
                  | ~ p10(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p11(X) )
                      & p11(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p11(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p11(Y) )
                          | ~ p10(X) )
                      & ( ! [X] :
                            ( ~ r1(Y,X)
                            | p11(X) )
                        | ~ p10(Y) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p10(X) )
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p11(X) )
                      & p11(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p11(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p10(Y) ) )
                      & ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ~ p10(X) ) ) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | p5(Y)
              | ~ ! [X] :
                    ( ~ r1(Y,X)
                    | p5(X) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | p5(Y)
              | ~ ! [X] :
                    ( ~ r1(Y,X)
                    | p5(X) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ! [X] :
                      ( ~ r1(Y,X)
                      | p9(X) )
                  | ~ p8(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p9(X) )
                      & p9(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p9(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p9(Y) )
                          | ~ p8(X) )
                      & ( ! [X] :
                            ( ~ r1(Y,X)
                            | p9(X) )
                        | ~ p8(Y) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p8(X) )
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p9(X) )
                      & p9(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p9(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p8(Y) ) )
                      & ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ~ p8(X) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ! [X] :
                      ( ~ r1(Y,X)
                      | p8(X) )
                  | ~ p7(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p8(X) )
                      & p8(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p8(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p8(Y) )
                          | ~ p7(X) )
                      & ( ! [X] :
                            ( ~ r1(Y,X)
                            | p8(X) )
                        | ~ p7(Y) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p7(X) )
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p8(X) )
                      & p8(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p8(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p7(Y) ) )
                      & ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ~ p7(X) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ! [X] :
                      ( ~ r1(Y,X)
                      | p7(X) )
                  | ~ p6(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p7(X) )
                      & p7(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p7(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p7(Y) )
                          | ~ p6(X) )
                      & ( ! [X] :
                            ( ~ r1(Y,X)
                            | p7(X) )
                        | ~ p6(Y) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p6(X) )
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p7(X) )
                      & p7(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p7(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p6(Y) ) )
                      & ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ~ p6(X) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ! [X] :
                      ( ~ r1(Y,X)
                      | p6(X) )
                  | ~ p5(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p6(X) )
                      & p6(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p6(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p6(Y) )
                          | ~ p5(X) )
                      & ( ! [X] :
                            ( ~ r1(Y,X)
                            | p6(X) )
                        | ~ p5(Y) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p5(X) )
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p6(X) )
                      & p6(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p6(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p5(Y) ) )
                      & ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ~ p5(X) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ! [X] :
                      ( ~ r1(Y,X)
                      | p5(X) )
                  | ~ p4(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p5(X) )
                      & p5(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p5(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p5(Y) )
                          | ~ p4(X) )
                      & ( ! [X] :
                            ( ~ r1(Y,X)
                            | p5(X) )
                        | ~ p4(Y) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p4(X) )
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p5(X) )
                      & p5(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p5(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p4(Y) ) )
                      & ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ~ p4(X) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ! [X] :
                      ( ~ r1(Y,X)
                      | p4(X) )
                  | ~ p3(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p4(X) )
                      & p4(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p4(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p4(Y) )
                          | ~ p3(X) )
                      & ( ! [X] :
                            ( ~ r1(Y,X)
                            | p4(X) )
                        | ~ p3(Y) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p3(X) )
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p4(X) )
                      & p4(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p4(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p3(Y) ) )
                      & ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ~ p3(X) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ! [X] :
                      ( ~ r1(Y,X)
                      | p3(X) )
                  | ~ p2(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p3(X) )
                      & p3(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p3(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p3(Y) )
                          | ~ p2(X) )
                      & ( ! [X] :
                            ( ~ r1(Y,X)
                            | p3(X) )
                        | ~ p2(Y) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p2(X) )
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p3(X) )
                      & p3(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p3(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p2(Y) ) )
                      & ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ~ p2(X) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ! [X] :
                      ( ~ r1(Y,X)
                      | p2(X) )
                  | ~ p1(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p2(X) )
                      & p2(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p2(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p2(Y) )
                          | ~ p1(X) )
                      & ( ! [X] :
                            ( ~ r1(Y,X)
                            | p2(X) )
                        | ~ p1(Y) ) ) ) )
          | ~ ( ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p1(X) )
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | p2(X) )
                      & p2(Y) ) )
              | ! [Y] :
                  ( ~ r1(X,Y)
                  | p2(Y)
                  | ~ ( ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p1(Y) ) )
                      & ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ~ p1(X) ) ) ) ) ) ).

%------------------------------------------------------------------------------