%------------------------------------------------------------------------------
% File     : LCL683+1.001 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In S4, no path through an incomplete labyrinth, size 1
% Version  : Especial.
% English  :

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : s4_path_n [BHS00]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.0.0, 0.33 v6.4.0, 0.00 v6.2.0, 0.11 v6.1.0, 0.10 v6.0.0, 0.00 v5.5.0, 0.29 v5.4.0, 0.33 v5.3.0, 0.46 v5.2.0, 0.25 v5.0.0, 0.33 v4.1.0, 0.17 v4.0.1, 0.00 v4.0.0
% Syntax   : Number of formulae    :    3 (   1 unt;   0 def)
%            Number of atoms       :   73 (   0 equ)
%            Maximal formula atoms :   69 (  24 avg)
%            Number of connectives :  151 (  81   ~;  56   |;  13   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   25 (  11 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   13 (  13 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   42 (  41   !;   1   ?)
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
        ~ ( ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ~ ! [X] :
                          ( ~ r1(Y,X)
                          | p26(X) )
                    | ~ ! [X] :
                          ( ~ r1(Y,X)
                          | p25(X) )
                    | ~ ! [X] :
                          ( ~ r1(Y,X)
                          | p24(X) )
                    | ~ ! [X] :
                          ( ~ r1(Y,X)
                          | p22(X) ) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ! [X] :
                        ( ~ r1(Y,X)
                        | p26(X) )
                    & ~ p16(Y) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ! [X] :
                        ( ~ r1(Y,X)
                        | p26(X) )
                    & ~ p14(Y) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ! [X] :
                        ( ~ r1(Y,X)
                        | p24(X) )
                    & ~ p16(Y) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ! [X] :
                        ( ~ r1(Y,X)
                        | p24(X) )
                    & ~ p14(Y) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ! [X] :
                        ( ~ r1(Y,X)
                        | p22(X) )
                    & ~ p16(Y) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ! [X] :
                        ( ~ r1(Y,X)
                        | p22(X) )
                    & ~ p14(Y) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ! [X] :
                        ( ~ r1(Y,X)
                        | p23(X) )
                    & ~ p15(Y) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ! [X] :
                        ( ~ r1(Y,X)
                        | p21(X) )
                    & ~ p15(Y) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ! [X] :
                        ( ~ r1(Y,X)
                        | p23(X) )
                    & ~ p13(Y) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ! [X] :
                        ( ~ r1(Y,X)
                        | p21(X) )
                    & ~ p13(Y) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ! [X] :
                        ( ~ r1(Y,X)
                        | p23(X) )
                    & ~ p11(Y) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ! [X] :
                        ( ~ r1(Y,X)
                        | p21(X) )
                    & ~ p11(Y) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | ! [X] :
                  ( ~ r1(Y,X)
                  | p15(X) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | ! [X] :
                  ( ~ r1(Y,X)
                  | p13(X) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | ! [X] :
                  ( ~ r1(Y,X)
                  | p12(X) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | ! [X] :
                  ( ~ r1(Y,X)
                  | p11(X) ) ) ) ).

%------------------------------------------------------------------------------
