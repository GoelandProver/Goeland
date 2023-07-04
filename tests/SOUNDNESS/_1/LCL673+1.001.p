%------------------------------------------------------------------------------
% File     : LCL673+1.001 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In S4, A5 not provable, size 1
% Version  : Especial.
% English  :

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : s4_45_n [BHS00]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.4.0, 0.33 v7.3.0, 0.00 v7.0.0, 0.33 v6.4.0, 0.00 v6.2.0, 0.22 v6.1.0, 0.10 v6.0.0, 0.00 v5.5.0, 0.29 v5.4.0, 0.80 v5.3.0, 0.85 v5.2.0, 0.50 v5.0.0, 0.56 v4.1.0, 0.33 v4.0.1, 0.67 v4.0.0
% Syntax   : Number of formulae    :    3 (   1 unt;   0 def)
%            Number of atoms       :   70 (   0 equ)
%            Maximal formula atoms :   66 (  23 avg)
%            Number of connectives :  141 (  74   ~;  48   |;  18   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   24 (  11 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    3 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   43 (  42   !;   1   ?)
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
        ~ ( ( ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | p2(Y) )
            & ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ( ~ p1(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p1(X) )
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p1(X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | p1(Y) ) ) ) )
            & ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | p1(Y) ) )
          | ( ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | p2(Y) )
            & ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ( ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ ( ~ p1(Y)
                                    & ! [X] :
                                        ( ~ r1(Y,X)
                                        | p1(X) ) ) ) )
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p1(X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | p1(Y) ) ) ) )
            & ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | p1(Y) ) )
          | ( ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | p2(Y) )
            & ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ( ~ p1(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p1(X) ) ) )
            & ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | p1(Y) ) )
          | ( ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | p2(Y) )
            & ~ ! [Y] :
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
            & ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | p1(Y) ) )
          | ( ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | p2(Y) )
            & ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | ~ ( ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | p1(Y) ) )
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p1(X) ) ) )
            & ~ ! [Y] :
                  ( ~ r1(X,Y)
                  | p1(Y) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | p2(Y) )
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
              | p1(Y) ) ) ).

%------------------------------------------------------------------------------
