%------------------------------------------------------------------------------
% File     : LCL642+1.010 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In K, box Grz & Grz{C() & A4{C()/p0}/p0} -> Grz1, size 10
% Version  : Especial.
% English  :

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : k_grz_p [BHS00]

% Status   : Theorem
% Rating   : 0.33 v8.1.0, 0.36 v7.5.0, 0.38 v7.4.0, 0.25 v7.3.0, 0.29 v7.2.0, 0.33 v7.1.0, 0.25 v7.0.0, 0.29 v6.3.0, 0.23 v6.2.0, 0.36 v6.1.0, 0.52 v6.0.0, 0.00 v5.5.0, 0.58 v5.4.0, 0.57 v5.3.0, 0.65 v5.2.0, 0.43 v5.1.0, 0.50 v5.0.0, 0.75 v4.1.0, 0.67 v4.0.1, 0.58 v4.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  410 (   0 equ)
%            Maximal formula atoms :  410 ( 410 avg)
%            Number of connectives :  624 ( 215   ~; 395   |;  14   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   46 (  46 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   5 usr;   1 prp; 0-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :  143 ( 142   !;   1   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
fof(main,conjecture,
    ~ ? [X] :
        ~ ( ! [Y] :
              ( ~ r1(X,Y)
              | p3(Y) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | p3(Y)
                | ~ ! [X] :
                      ( ~ r1(Y,X)
                      | ! [Y] :
                          ( ~ r1(X,Y)
                          | p3(Y) )
                      | ~ p3(X) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | p2(Y) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | p2(Y)
                | ~ ! [X] :
                      ( ~ r1(Y,X)
                      | ! [Y] :
                          ( ~ r1(X,Y)
                          | p2(Y) )
                      | ~ p2(X) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | p1(Y) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | p1(Y)
                | ~ ! [X] :
                      ( ~ r1(Y,X)
                      | ! [Y] :
                          ( ~ r1(X,Y)
                          | p1(Y) )
                      | ~ p1(X) ) )
          | ~ ( ( ( ( ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | p2(X)
                            | ~ ! [Y] :
                                  ( ~ r1(X,Y)
                                  | ! [X] :
                                      ( ~ r1(Y,X)
                                      | p2(X) )
                                  | ~ p2(Y) ) ) )
                    | ~ ! [Y] :
                          ( ~ r1(X,Y)
                          | p2(Y)
                          | ~ ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | p2(Y) )
                                | ~ p2(X) ) ) )
                  & ( p2(X)
                    | ~ ! [Y] :
                          ( ~ r1(X,Y)
                          | ! [X] :
                              ( ~ r1(Y,X)
                              | p2(X) )
                          | ~ p2(Y) ) ) )
                | ~ ! [Y] :
                      ( ~ r1(X,Y)
                      | ( ( ! [X] :
                              ( ~ r1(Y,X)
                              | ! [Y] :
                                  ( ~ r1(X,Y)
                                  | p2(Y)
                                  | ~ ! [X] :
                                        ( ~ r1(Y,X)
                                        | ! [Y] :
                                            ( ~ r1(X,Y)
                                            | p2(Y) )
                                        | ~ p2(X) ) ) )
                          | ~ ! [X] :
                                ( ~ r1(Y,X)
                                | p2(X)
                                | ~ ! [Y] :
                                      ( ~ r1(X,Y)
                                      | ! [X] :
                                          ( ~ r1(Y,X)
                                          | p2(X) )
                                      | ~ p2(Y) ) ) )
                        & ( p2(Y)
                          | ~ ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | p2(Y) )
                                | ~ p2(X) ) ) )
                      | ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ( ( ! [X] :
                                        ( ~ r1(Y,X)
                                        | ! [Y] :
                                            ( ~ r1(X,Y)
                                            | p2(Y)
                                            | ~ ! [X] :
                                                  ( ~ r1(Y,X)
                                                  | ! [Y] :
                                                      ( ~ r1(X,Y)
                                                      | p2(Y) )
                                                  | ~ p2(X) ) ) )
                                    | ~ ! [X] :
                                          ( ~ r1(Y,X)
                                          | p2(X)
                                          | ~ ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | p2(X) )
                                                | ~ p2(Y) ) ) )
                                  & ( p2(Y)
                                    | ~ ! [X] :
                                          ( ~ r1(Y,X)
                                          | ! [Y] :
                                              ( ~ r1(X,Y)
                                              | p2(Y) )
                                          | ~ p2(X) ) ) ) )
                            | ~ ( ( ! [Y] :
                                      ( ~ r1(X,Y)
                                      | ! [X] :
                                          ( ~ r1(Y,X)
                                          | p2(X)
                                          | ~ ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | p2(X) )
                                                | ~ p2(Y) ) ) )
                                  | ~ ! [Y] :
                                        ( ~ r1(X,Y)
                                        | p2(Y)
                                        | ~ ! [X] :
                                              ( ~ r1(Y,X)
                                              | ! [Y] :
                                                  ( ~ r1(X,Y)
                                                  | p2(Y) )
                                              | ~ p2(X) ) ) )
                                & ( p2(X)
                                  | ~ ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | p2(X) )
                                        | ~ p2(Y) ) ) ) ) ) )
              & ( p1(X)
                | ! [Y] :
                    ( ~ r1(X,Y)
                    | p4(Y)
                    | p3(Y)
                    | p2(Y)
                    | p1(Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | p4(X)
                        | p3(X)
                        | p2(X)
                        | p1(X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | $false ) ) )
                | ~ ! [Y] :
                      ( ~ r1(X,Y)
                      | p1(Y)
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | p4(X)
                          | p3(X)
                          | p2(X)
                          | p1(X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p4(Y)
                              | p3(Y)
                              | p2(Y)
                              | p1(Y)
                              | ! [X] :
                                  ( ~ r1(Y,X)
                                  | $false ) ) )
                      | ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | p1(Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | p4(X)
                                    | p3(X)
                                    | p2(X)
                                    | p1(X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | p4(Y)
                                        | p3(Y)
                                        | p2(Y)
                                        | p1(Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | $false ) ) ) )
                            | ~ ( p1(X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | p4(Y)
                                    | p3(Y)
                                    | p2(Y)
                                    | p1(Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | p4(X)
                                        | p3(X)
                                        | p2(X)
                                        | p1(X)
                                        | ! [Y] :
                                            ( ~ r1(X,Y)
                                            | $false ) ) ) ) ) ) )
              & ( p4(X)
                | p3(X)
                | p2(X)
                | p1(X)
                | ! [Y] :
                    ( ~ r1(X,Y)
                    | p4(Y)
                    | p3(Y)
                    | p2(Y)
                    | p1(Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | $false ) )
                | ~ ! [Y] :
                      ( ~ r1(X,Y)
                      | p4(Y)
                      | p3(Y)
                      | p2(Y)
                      | p1(Y)
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | p4(X)
                          | p3(X)
                          | p2(X)
                          | p1(X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | $false ) )
                      | ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | p4(Y)
                                | p3(Y)
                                | p2(Y)
                                | p1(Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | p4(X)
                                    | p3(X)
                                    | p2(X)
                                    | p1(X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | $false ) ) )
                            | ~ ( p4(X)
                                | p3(X)
                                | p2(X)
                                | p1(X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | p4(Y)
                                    | p3(Y)
                                    | p2(Y)
                                    | p1(Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | $false ) ) ) ) ) )
              & ( p3(X)
                | p2(X)
                | p1(X)
                | ! [Y] :
                    ( ~ r1(X,Y)
                    | p4(Y)
                    | p3(Y)
                    | p2(Y)
                    | p1(Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | $false ) )
                | ~ ! [Y] :
                      ( ~ r1(X,Y)
                      | p3(Y)
                      | p2(Y)
                      | p1(Y)
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | p4(X)
                          | p3(X)
                          | p2(X)
                          | p1(X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | $false ) )
                      | ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | p3(Y)
                                | p2(Y)
                                | p1(Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | p4(X)
                                    | p3(X)
                                    | p2(X)
                                    | p1(X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | $false ) ) )
                            | ~ ( p3(X)
                                | p2(X)
                                | p1(X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | p4(Y)
                                    | p3(Y)
                                    | p2(Y)
                                    | p1(Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | $false ) ) ) ) ) )
              & ( p2(X)
                | p1(X)
                | ! [Y] :
                    ( ~ r1(X,Y)
                    | p4(Y)
                    | p3(Y)
                    | p2(Y)
                    | p1(Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | $false ) )
                | ~ ! [Y] :
                      ( ~ r1(X,Y)
                      | p2(Y)
                      | p1(Y)
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | p4(X)
                          | p3(X)
                          | p2(X)
                          | p1(X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | $false ) )
                      | ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | p2(Y)
                                | p1(Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | p4(X)
                                    | p3(X)
                                    | p2(X)
                                    | p1(X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | $false ) ) )
                            | ~ ( p2(X)
                                | p1(X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | p4(Y)
                                    | p3(Y)
                                    | p2(Y)
                                    | p1(Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | $false ) ) ) ) ) )
              & ( p1(X)
                | ! [Y] :
                    ( ~ r1(X,Y)
                    | p4(Y)
                    | p3(Y)
                    | p2(Y)
                    | p1(Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | $false ) )
                | ~ ! [Y] :
                      ( ~ r1(X,Y)
                      | p1(Y)
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | p4(X)
                          | p3(X)
                          | p2(X)
                          | p1(X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | $false ) )
                      | ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | p1(Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | p4(X)
                                    | p3(X)
                                    | p2(X)
                                    | p1(X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | $false ) ) )
                            | ~ ( p1(X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | p4(Y)
                                    | p3(Y)
                                    | p2(Y)
                                    | p1(Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | $false ) ) ) ) ) )
              & ( p4(X)
                | p3(X)
                | p2(X)
                | p1(X)
                | ! [Y] :
                    ( ~ r1(X,Y)
                    | $false )
                | ~ ! [Y] :
                      ( ~ r1(X,Y)
                      | p4(Y)
                      | p3(Y)
                      | p2(Y)
                      | p1(Y)
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | $false )
                      | ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | p4(Y)
                                | p3(Y)
                                | p2(Y)
                                | p1(Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | $false ) )
                            | ~ ( p4(X)
                                | p3(X)
                                | p2(X)
                                | p1(X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | $false ) ) ) ) )
              & ( p3(X)
                | p2(X)
                | p1(X)
                | ! [Y] :
                    ( ~ r1(X,Y)
                    | $false )
                | ~ ! [Y] :
                      ( ~ r1(X,Y)
                      | p3(Y)
                      | p2(Y)
                      | p1(Y)
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | $false )
                      | ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | p3(Y)
                                | p2(Y)
                                | p1(Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | $false ) )
                            | ~ ( p3(X)
                                | p2(X)
                                | p1(X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | $false ) ) ) ) )
              & ( p2(X)
                | p1(X)
                | ! [Y] :
                    ( ~ r1(X,Y)
                    | $false )
                | ~ ! [Y] :
                      ( ~ r1(X,Y)
                      | p2(Y)
                      | p1(Y)
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | $false )
                      | ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | p2(Y)
                                | p1(Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | $false ) )
                            | ~ ( p2(X)
                                | p1(X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | $false ) ) ) ) )
              & ( p1(X)
                | ! [Y] :
                    ( ~ r1(X,Y)
                    | $false )
                | ~ ! [Y] :
                      ( ~ r1(X,Y)
                      | p1(Y)
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | $false )
                      | ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | p1(Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | $false ) )
                            | ~ ( p1(X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | $false ) ) ) ) )
              & ! [Y] :
                  ( ~ r1(X,Y)
                  | p2(Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | p2(X)
                        | ~ ! [Y] :
                              ( ~ r1(X,Y)
                              | ! [X] :
                                  ( ~ r1(Y,X)
                                  | p2(X) )
                              | ~ p2(Y) ) ) ) ) ) ).

%------------------------------------------------------------------------------
