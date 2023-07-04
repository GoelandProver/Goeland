%------------------------------------------------------------------------------
% File     : LCL659+1.001 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In KT, Dum is not provable with instances of Dum4 and A4, size 1
% Version  : Especial.
% English  :

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : kt_dum_n [BHS00]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.0.0, 0.33 v6.4.0, 0.00 v6.2.0, 0.11 v6.1.0, 0.00 v5.5.0, 0.14 v5.4.0, 0.53 v5.3.0, 0.69 v5.2.0, 0.38 v5.0.0, 0.44 v4.1.0, 0.17 v4.0.1, 0.33 v4.0.0
% Syntax   : Number of formulae    :    2 (   1 unt;   0 def)
%            Number of atoms       :   59 (   0 equ)
%            Maximal formula atoms :   58 (  29 avg)
%            Number of connectives :  115 (  58   ~;  54   |;   3   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   27 (  15 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    2 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   33 (  32   !;   1   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
fof(reflexivity,axiom,
    ! [X] : r1(X,X) ).

fof(main,conjecture,
    ~ ? [X] :
        ~ ( ~ ! [Y] :
                ( ~ r1(X,Y)
                | ( ( ! [X] :
                        ( ~ r1(Y,X)
                        | p1(X) )
                    | ~ p1(Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ! [Y] :
                              ( ~ r1(X,Y)
                              | ! [X] :
                                  ( ~ r1(Y,X)
                                  | p1(X) )
                              | ~ p1(Y) ) )
                    | ~ ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p1(Y) )
                          | ~ p1(X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | p1(Y) )
                                    | ~ p1(X) )
                                | ~ ( ! [X] :
                                        ( ~ r1(Y,X)
                                        | p1(X) )
                                    | ~ p1(Y) ) ) ) )
                  & ( p1(Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ! [Y] :
                              ( ~ r1(X,Y)
                              | p1(Y) ) )
                    | ~ ! [X] :
                          ( ~ r1(Y,X)
                          | p1(X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | p1(X) )
                                | ~ p1(Y) ) ) )
                  & ! [X] :
                      ( ~ r1(Y,X)
                      | ! [Y] :
                          ( ~ r1(X,Y)
                          | ! [X] :
                              ( ~ r1(Y,X)
                              | p1(X) ) )
                      | ~ ! [Y] :
                            ( ~ r1(X,Y)
                            | p1(Y) ) )
                  & ( ! [X] :
                        ( ~ r1(Y,X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | p1(Y)
                            | ~ ! [X] :
                                  ( ~ r1(Y,X)
                                  | ! [Y] :
                                      ( ~ r1(X,Y)
                                      | p1(Y) )
                                  | ~ p1(X) ) ) )
                    | ~ ! [X] :
                          ( ~ r1(Y,X)
                          | p1(X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | p1(X) )
                                | ~ p1(Y) ) ) ) ) )
          | ~ ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | p1(Y)
                  | ~ ! [X] :
                        ( ~ r1(Y,X)
                        | p1(X)
                        | ~ ! [Y] :
                              ( ~ r1(X,Y)
                              | ! [X] :
                                  ( ~ r1(Y,X)
                                  | p1(X) )
                              | ~ p1(Y) ) ) ) ) ).

%------------------------------------------------------------------------------
