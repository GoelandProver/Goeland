%------------------------------------------------------------------------------
% File     : LCL653+1.001 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In K, dia box p0 not provable, size 1
% Version  : Especial.
% English  : dia box p0 not provable with instances of T, A4, and
%            box(dia box dia p0 -> (p0 -> box p0)).

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : k_t4p_n [BHS00]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.0.0, 0.33 v6.4.0, 0.00 v5.5.0, 0.14 v5.4.0, 0.20 v5.3.0, 0.15 v5.2.0, 0.12 v5.0.0, 0.33 v4.1.0, 0.17 v4.0.1, 0.00 v4.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :   69 (   0 equ)
%            Maximal formula atoms :   69 (  69 avg)
%            Number of connectives :  161 (  93   ~;  61   |;   7   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   31 (  31 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   5 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   47 (  46   !;   1   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
fof(main,conjecture,
    ~ ? [X] :
        ~ ( ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ p4(Y) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ~ ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | ~ ! [X] :
                                    ( ~ r1(Y,X)
                                    | ~ p1(X) ) ) )
                    & ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ! [Y] :
                              ( ~ r1(X,Y)
                              | ~ p1(Y) ) ) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ~ ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ( ~ ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ~ ( ! [X] :
                                            ( ~ r1(Y,X)
                                            | p3(X) )
                                        | ~ p2(Y) ) )
                              & p2(X)
                              & ~ ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ~ ! [X] :
                                          ( ~ r1(Y,X)
                                          | ~ ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ~ p2(Y) ) ) ) ) )
                    | ( ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ ! [X] :
                                      ( ~ r1(Y,X)
                                      | ! [Y] :
                                          ( ~ r1(X,Y)
                                          | p3(Y) )
                                      | ~ p2(X) ) ) )
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p2(Y) ) ) )
                    | ~ ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ( ! [Y] :
                                  ( ~ r1(X,Y)
                                  | ~ ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ p2(X) ) )
                              & ! [Y] :
                                  ( ~ r1(X,Y)
                                  | ~ ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ ! [Y] :
                                              ( ~ r1(X,Y)
                                              | ! [X] :
                                                  ( ~ r1(Y,X)
                                                  | p3(X) )
                                              | ~ p2(Y) ) ) ) ) )
                    | ( ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p3(Y) )
                          | ~ p2(X) )
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p2(Y) ) ) ) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ~ ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p1(Y) ) )
                    & ! [X] :
                        ( ~ r1(Y,X)
                        | p1(X) ) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | ! [X] :
                  ( ~ r1(Y,X)
                  | ~ ! [Y] :
                        ( ~ r1(X,Y)
                        | p1(Y) ) )
              | ! [X] :
                  ( ~ r1(Y,X)
                  | p1(X) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | ~ ! [X] :
                    ( ~ r1(Y,X)
                    | ~ ! [Y] :
                          ( ~ r1(X,Y)
                          | p2(Y) ) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ~ p1(Y) ) )
                | ~ ! [X] :
                      ( ~ r1(Y,X)
                      | ~ p1(X) ) ) ) ).

%------------------------------------------------------------------------------
