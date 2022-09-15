%------------------------------------------------------------------------------
% File     : LCL662+1.005 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In KT, in backward search find a way through box and dia, size 5
% Version  : Especial.
% English  :

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : kt_md_p [BHS00]

% Status   : Theorem
% Rating   : 0.80 v8.1.0, 0.64 v7.5.0, 0.90 v7.4.0, 0.88 v7.3.0, 0.71 v7.2.0, 0.67 v7.1.0, 0.50 v7.0.0, 0.86 v6.4.0, 0.93 v6.3.0, 0.92 v6.2.0, 0.82 v6.1.0, 1.00 v6.0.0, 0.75 v5.5.0, 1.00 v5.2.0, 0.93 v5.0.0, 0.95 v4.1.0, 0.94 v4.0.1, 0.95 v4.0.0
% Syntax   : Number of formulae    :    2 (   1 unt;   0 def)
%            Number of atoms       :  209 (   0 equ)
%            Maximal formula atoms :  208 ( 104 avg)
%            Number of connectives :  514 ( 307   ~; 195   |;  12   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   63 (  33 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    3 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :  184 ( 183   !;   1   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
fof(reflexivity,axiom,
    ! [X] : r1(X,X) ).

fof(main,conjecture,
    ~ ? [X] :
        ~ ( ~ ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ~ ! [Y] :
                                  ( ~ r1(X,Y)
                                  | ~ ! [X] :
                                        ( ~ r1(Y,X)
                                        | ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ! [X] :
                                                ( ~ r1(Y,X)
                                                | ~ ! [Y] :
                                                      ( ~ r1(X,Y)
                                                      | ~ ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ~ ! [Y] :
                                                                          ( ~ r1(X,Y)
                                                                          | ~ ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ~ ! [Y] :
                                                                                              ( ~ r1(X,Y)
                                                                                              | ~ ! [X] :
                                                                                                    ( ~ r1(Y,X)
                                                                                                    | ! [Y] :
                                                                                                        ( ~ r1(X,Y)
                                                                                                        | ! [X] :
                                                                                                            ( ~ r1(Y,X)
                                                                                                            | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ~ ! [X] :
                              ( ~ r1(Y,X)
                              | ~ ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ~ ! [X] :
                                                  ( ~ r1(Y,X)
                                                  | ~ ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ~ ! [X] :
                                                                      ( ~ r1(Y,X)
                                                                      | ~ ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ~ ( ~ ! [X] :
                                                                                              ( ~ r1(Y,X)
                                                                                              | ~ ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | ~ ! [X] :
                                                                                                          ( ~ r1(Y,X)
                                                                                                          | ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ! [X] :
                                                                                                                  ( ~ r1(Y,X)
                                                                                                                  | ! [Y] :
                                                                                                                      ( ~ r1(X,Y)
                                                                                                                      | ~ p1(Y) ) ) ) ) ) )
                                                                                        & ~ p2(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ~ ! [X] :
                              ( ~ r1(Y,X)
                              | ~ ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ~ ! [X] :
                                                  ( ~ r1(Y,X)
                                                  | ~ ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ~ ! [X] :
                                                                      ( ~ r1(Y,X)
                                                                      | ~ ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ~ ( ~ ! [X] :
                                                                                              ( ~ r1(Y,X)
                                                                                              | ~ ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | ~ ! [X] :
                                                                                                          ( ~ r1(Y,X)
                                                                                                          | ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ! [X] :
                                                                                                                  ( ~ r1(Y,X)
                                                                                                                  | ! [Y] :
                                                                                                                      ( ~ r1(X,Y)
                                                                                                                      | ~ p1(Y) ) ) ) ) ) )
                                                                                        & ~ p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ~ ! [X] :
                              ( ~ r1(Y,X)
                              | ~ ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ~ ! [X] :
                                                  ( ~ r1(Y,X)
                                                  | ~ ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ~ ! [X] :
                                                                      ( ~ r1(Y,X)
                                                                      | ~ ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ~ ( ~ ! [X] :
                                                                                              ( ~ r1(Y,X)
                                                                                              | ~ ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | ~ ! [X] :
                                                                                                          ( ~ r1(Y,X)
                                                                                                          | ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ! [X] :
                                                                                                                  ( ~ r1(Y,X)
                                                                                                                  | ! [Y] :
                                                                                                                      ( ~ r1(X,Y)
                                                                                                                      | ~ p2(Y) ) ) ) ) ) )
                                                                                        & ~ p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ~ ! [Y] :
                          ( ~ r1(X,Y)
                          | ~ ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ ! [Y] :
                                              ( ~ r1(X,Y)
                                              | ~ ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ~ ( ~ ! [Y] :
                                                                      ( ~ r1(X,Y)
                                                                      | ~ ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ~ ! [Y] :
                                                                                  ( ~ r1(X,Y)
                                                                                  | ! [X] :
                                                                                      ( ~ r1(Y,X)
                                                                                      | ! [Y] :
                                                                                          ( ~ r1(X,Y)
                                                                                          | ! [X] :
                                                                                              ( ~ r1(Y,X)
                                                                                              | ~ p1(X) ) ) ) ) ) )
                                                                & ~ p2(X) ) ) ) ) ) ) ) ) ) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ~ ! [Y] :
                          ( ~ r1(X,Y)
                          | ~ ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ ! [Y] :
                                              ( ~ r1(X,Y)
                                              | ~ ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ~ ( ~ ! [Y] :
                                                                      ( ~ r1(X,Y)
                                                                      | ~ ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ~ ! [Y] :
                                                                                  ( ~ r1(X,Y)
                                                                                  | ! [X] :
                                                                                      ( ~ r1(Y,X)
                                                                                      | ! [Y] :
                                                                                          ( ~ r1(X,Y)
                                                                                          | ! [X] :
                                                                                              ( ~ r1(Y,X)
                                                                                              | ~ p1(X) ) ) ) ) ) )
                                                                & ~ p1(X) ) ) ) ) ) ) ) ) ) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ~ ! [Y] :
                          ( ~ r1(X,Y)
                          | ~ ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ ! [Y] :
                                              ( ~ r1(X,Y)
                                              | ~ ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ~ ( ~ ! [Y] :
                                                                      ( ~ r1(X,Y)
                                                                      | ~ ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ~ ! [Y] :
                                                                                  ( ~ r1(X,Y)
                                                                                  | ! [X] :
                                                                                      ( ~ r1(Y,X)
                                                                                      | ! [Y] :
                                                                                          ( ~ r1(X,Y)
                                                                                          | ! [X] :
                                                                                              ( ~ r1(Y,X)
                                                                                              | ~ p2(X) ) ) ) ) ) )
                                                                & ~ p1(X) ) ) ) ) ) ) ) ) ) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ! [X] :
                      ( ~ r1(Y,X)
                      | ~ ! [Y] :
                            ( ~ r1(X,Y)
                            | ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ~ ( ~ ! [X] :
                                              ( ~ r1(Y,X)
                                              | ~ ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | ~ ! [X] :
                                                          ( ~ r1(Y,X)
                                                          | ! [Y] :
                                                              ( ~ r1(X,Y)
                                                              | ! [X] :
                                                                  ( ~ r1(Y,X)
                                                                  | ! [Y] :
                                                                      ( ~ r1(X,Y)
                                                                      | ~ p1(Y) ) ) ) ) ) )
                                        & ~ p2(Y) ) ) ) ) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ! [X] :
                      ( ~ r1(Y,X)
                      | ~ ! [Y] :
                            ( ~ r1(X,Y)
                            | ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ~ ( ~ ! [X] :
                                              ( ~ r1(Y,X)
                                              | ~ ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | ~ ! [X] :
                                                          ( ~ r1(Y,X)
                                                          | ! [Y] :
                                                              ( ~ r1(X,Y)
                                                              | ! [X] :
                                                                  ( ~ r1(Y,X)
                                                                  | ! [Y] :
                                                                      ( ~ r1(X,Y)
                                                                      | ~ p1(Y) ) ) ) ) ) )
                                        & ~ p1(Y) ) ) ) ) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ! [X] :
                      ( ~ r1(Y,X)
                      | ~ ! [Y] :
                            ( ~ r1(X,Y)
                            | ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ~ ( ~ ! [X] :
                                              ( ~ r1(Y,X)
                                              | ~ ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | ~ ! [X] :
                                                          ( ~ r1(Y,X)
                                                          | ! [Y] :
                                                              ( ~ r1(X,Y)
                                                              | ! [X] :
                                                                  ( ~ r1(Y,X)
                                                                  | ! [Y] :
                                                                      ( ~ r1(X,Y)
                                                                      | ~ p2(Y) ) ) ) ) ) )
                                        & ~ p1(Y) ) ) ) ) ) )
          | ( ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ! [Y] :
                              ( ~ r1(X,Y)
                              | ! [X] :
                                  ( ~ r1(Y,X)
                                  | ! [Y] :
                                      ( ~ r1(X,Y)
                                      | ! [X] :
                                          ( ~ r1(Y,X)
                                          | ~ p1(X) ) ) ) ) ) )
            & ~ p2(X) )
          | ( ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ! [Y] :
                              ( ~ r1(X,Y)
                              | ! [X] :
                                  ( ~ r1(Y,X)
                                  | ! [Y] :
                                      ( ~ r1(X,Y)
                                      | ! [X] :
                                          ( ~ r1(Y,X)
                                          | ~ p1(X) ) ) ) ) ) )
            & ~ p1(X) )
          | ( ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ! [Y] :
                              ( ~ r1(X,Y)
                              | ! [X] :
                                  ( ~ r1(Y,X)
                                  | ! [Y] :
                                      ( ~ r1(X,Y)
                                      | ! [X] :
                                          ( ~ r1(Y,X)
                                          | ~ p2(X) ) ) ) ) ) )
            & ~ p1(X) )
          | p1(X) ) ).

%------------------------------------------------------------------------------
