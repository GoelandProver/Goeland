%------------------------------------------------------------------------------
% File     : LCL641+1.001 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In K, Dum is not provable with instances of Dum4 and A4, size 1
% Version  : Especial.
% English  :

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : k_dum_n [BHS00]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.0.0, 0.33 v6.4.0, 0.00 v6.2.0, 0.11 v6.1.0, 0.20 v6.0.0, 0.29 v5.5.0, 0.14 v5.4.0, 0.20 v5.3.0, 0.23 v5.2.0, 0.25 v5.0.0, 0.44 v4.1.0, 0.33 v4.0.1, 0.00 v4.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :   69 (   0 equ)
%            Maximal formula atoms :   69 (  69 avg)
%            Number of connectives :  135 (  67   ~;  65   |;   3   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   30 (  30 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    2 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   39 (  38   !;   1   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
fof(main,conjecture,
    ~ ? [X] :
        ~ ( ~ ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ( ( ! [Y] :
                            ( ~ r1(X,Y)
                            | ! [X] :
                                ( ~ r1(Y,X)
                                | p1(X) )
                            | ~ p1(Y) )
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | p1(Y) )
                        | ~ p1(X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | ~ ! [X] :
                                  ( ~ r1(Y,X)
                                  | ! [Y] :
                                      ( ~ r1(X,Y)
                                      | p1(Y) )
                                  | ~ p1(X) ) )
                        | ~ ! [Y] :
                              ( ~ r1(X,Y)
                              | ! [X] :
                                  ( ~ r1(Y,X)
                                  | p1(X) )
                              | ~ p1(Y)
                              | ~ ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | p1(X) )
                                        | ~ p1(Y) )
                                    | ~ ( ! [Y] :
                                            ( ~ r1(X,Y)
                                            | p1(Y) )
                                        | ~ p1(X) ) ) ) )
                      & ( ! [Y] :
                            ( ~ r1(X,Y)
                            | p1(Y) )
                        | p1(X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | ~ ! [X] :
                                  ( ~ r1(Y,X)
                                  | p1(X) ) )
                        | ~ ! [Y] :
                              ( ~ r1(X,Y)
                              | p1(Y)
                              | ~ ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | p1(Y) )
                                    | ~ p1(X) ) ) )
                      & ! [Y] :
                          ( ~ r1(X,Y)
                          | ! [X] :
                              ( ~ r1(Y,X)
                              | ! [Y] :
                                  ( ~ r1(X,Y)
                                  | p1(Y) ) )
                          | ~ ! [X] :
                                ( ~ r1(Y,X)
                                | p1(X) ) )
                      & ( ! [Y] :
                            ( ~ r1(X,Y)
                            | ! [X] :
                                ( ~ r1(Y,X)
                                | p1(X)
                                | ~ ! [Y] :
                                      ( ~ r1(X,Y)
                                      | ! [X] :
                                          ( ~ r1(Y,X)
                                          | p1(X) )
                                      | ~ p1(Y) ) ) )
                        | ~ ! [Y] :
                              ( ~ r1(X,Y)
                              | p1(Y)
                              | ~ ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | p1(Y) )
                                    | ~ p1(X) ) ) ) ) ) )
          | ~ ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | ! [X] :
                      ( ~ r1(Y,X)
                      | p1(X)
                      | ! [Y] :
                          ( ~ r1(X,Y)
                          | ~ ! [X] :
                                ( ~ r1(Y,X)
                                | p1(X) ) )
                      | ~ ! [Y] :
                            ( ~ r1(X,Y)
                            | p1(Y)
                            | ~ ! [X] :
                                  ( ~ r1(Y,X)
                                  | ! [Y] :
                                      ( ~ r1(X,Y)
                                      | p1(Y) )
                                  | ~ p1(X) ) ) ) ) ) ).

%------------------------------------------------------------------------------
