%------------------------------------------------------------------------------
% File     : LCL655+1.001 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In KT, A5 not provable with instances of A4, size 1
% Version  : Especial.
% English  :

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : kt_45_n [BHS00]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.0.0, 0.33 v6.4.0, 0.00 v5.5.0, 0.14 v5.4.0, 0.53 v5.3.0, 0.62 v5.2.0, 0.25 v5.0.0, 0.33 v4.1.0, 0.17 v4.0.1, 0.33 v4.0.0
% Syntax   : Number of formulae    :    2 (   1 unt;   0 def)
%            Number of atoms       :   45 (   0 equ)
%            Maximal formula atoms :   44 (  22 avg)
%            Number of connectives :  101 (  58   ~;  36   |;   7   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   22 (  12 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    2 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   30 (  29   !;   1   ?)
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
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ~ ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | ~ ( ~ p1(Y)
                                  & ~ ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ p1(X) ) ) ) )
                    & ! [X] :
                        ( ~ r1(Y,X)
                        | p1(X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | ~ p1(Y) ) ) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ~ p1(Y)
                    & ! [X] :
                        ( ~ r1(Y,X)
                        | p1(X) ) ) )
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
                  | p1(X) ) ) ) ).

%------------------------------------------------------------------------------
