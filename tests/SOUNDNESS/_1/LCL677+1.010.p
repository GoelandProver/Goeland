%------------------------------------------------------------------------------
% File     : LCL677+1.010 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In S4, A5 is not provable with instances of Grz1, size 10
% Version  : Especial.
% English  :

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : s4_grz_n [BHS00]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.4.0, 0.33 v7.3.0, 0.00 v7.0.0, 0.33 v6.4.0, 0.00 v6.2.0, 0.33 v6.1.0, 0.20 v6.0.0, 0.14 v5.5.0, 0.29 v5.4.0, 0.80 v5.3.0, 0.85 v5.2.0, 0.62 v5.0.0, 0.67 v4.1.0, 0.50 v4.0.1, 0.67 v4.0.0
% Syntax   : Number of formulae    :    3 (   1 unt;   0 def)
%            Number of atoms       :  416 (   0 equ)
%            Maximal formula atoms :  412 ( 138 avg)
%            Number of connectives :  630 ( 217   ~; 397   |;  15   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   42 (  17 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   5 usr;   1 prp; 0-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :  155 ( 154   !;   1   ?)
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
              | ~ ! [X] :
                    ( ~ r1(Y,X)
                    | p3(X) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | p3(Y) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | ~ ! [X] :
                    ( ~ r1(Y,X)
                    | p2(X) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | p2(Y) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | ~ ! [X] :
                    ( ~ r1(Y,X)
                    | p1(X) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | p1(Y) )
          | ~ ( ( ! [Y] :
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
              & ( ! [Y] :
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
              & ( ! [Y] :
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
              & ( ! [Y] :
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
              & ( ! [Y] :
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
              & ( ! [Y] :
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
              & ( ! [Y] :
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
              & ( ! [Y] :
                    ( ~ r1(X,Y)
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
              & ( ! [Y] :
                    ( ~ r1(X,Y)
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
              & ( ! [Y] :
                    ( ~ r1(X,Y)
                    | p1(Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | $false ) )
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
                  | ! [X] :
                      ( ~ r1(Y,X)
                      | p2(X) )
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