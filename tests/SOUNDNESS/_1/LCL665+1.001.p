%------------------------------------------------------------------------------
% File     : LCL665+1.001 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In KT, no path through an incomplete labyrinth, size 1
% Version  : Especial.
% English  :

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : kt_path_n [BHS00]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.4.0, 0.07 v5.3.0, 0.15 v5.2.0, 0.00 v4.0.0
% Syntax   : Number of formulae    :    2 (   1 unt;   0 def)
%            Number of atoms       :   69 (   0 equ)
%            Maximal formula atoms :   68 (  34 avg)
%            Number of connectives :  145 (  78   ~;  55   |;  12   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   28 (  15 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   13 (  13 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   38 (  37   !;   1   ?)
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
                | ! [X] :
                    ( ~ r1(Y,X)
                    | p26(X) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | p25(X) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | p24(X) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | p22(X) ) )
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
              | p15(Y) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | p13(Y) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | p12(Y) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | p11(Y) ) ) ).

%------------------------------------------------------------------------------
