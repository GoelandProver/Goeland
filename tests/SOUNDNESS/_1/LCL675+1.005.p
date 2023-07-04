%------------------------------------------------------------------------------
% File     : LCL675+1.005 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In S4, the branching formula, size 5
% Version  : Especial.
% English  :

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : s4_branch_n [BHS00]

% Status   : CounterSatisfiable
% Rating   : 0.67 v8.1.0, 0.33 v7.4.0, 0.00 v7.3.0, 0.33 v7.0.0, 0.00 v6.4.0, 0.50 v6.2.0, 0.44 v6.1.0, 0.60 v6.0.0, 0.57 v5.4.0, 0.53 v5.3.0, 0.62 v5.2.0, 0.38 v5.0.0, 0.44 v4.1.0, 0.33 v4.0.1, 0.00 v4.0.0
% Syntax   : Number of formulae    :    3 (   1 unt;   0 def)
%            Number of atoms       :  123 (   0 equ)
%            Maximal formula atoms :  119 (  41 avg)
%            Number of connectives :  226 ( 106   ~;  64   |;  55   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   24 (  11 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   14 (  14 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   28 (  27   !;   1   ?)
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
        ( ! [Y] :
            ( ~ r1(X,Y)
            | ( ( ( ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ( ~ p6(X)
                            & ~ p106(X)
                            & p105(X) ) )
                  & ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ( p6(X)
                            & ~ p106(X)
                            & p105(X) ) ) )
                | ~ ( ~ p105(Y)
                    & p104(Y) ) )
              & ( ( ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ( ~ p5(X)
                            & ~ p105(X)
                            & p104(X) ) )
                  & ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ( p5(X)
                            & ~ p105(X)
                            & p104(X) ) ) )
                | ~ ( ~ p104(Y)
                    & p103(Y) ) )
              & ( ( ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ( ~ p4(X)
                            & ~ p104(X)
                            & p103(X) ) )
                  & ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ( p4(X)
                            & ~ p104(X)
                            & p103(X) ) ) )
                | ~ ( ~ p103(Y)
                    & p102(Y) ) )
              & ( ( ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ( ~ p3(X)
                            & ~ p103(X)
                            & p102(X) ) )
                  & ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ( p3(X)
                            & ~ p103(X)
                            & p102(X) ) ) )
                | ~ ( ~ p102(Y)
                    & p101(Y) ) )
              & ( ( ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ( ~ p2(X)
                            & ~ p102(X)
                            & p101(X) ) )
                  & ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ( p2(X)
                            & ~ p102(X)
                            & p101(X) ) ) )
                | ~ ( ~ p101(Y)
                    & p100(Y) ) )
              & ( ( ( ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p6(X)
                        | ~ p105(X) )
                    | p6(Y) )
                  & ( ! [X] :
                        ( ~ r1(Y,X)
                        | p6(X)
                        | ~ p105(X) )
                    | ~ p6(Y) ) )
                | ~ p105(Y) )
              & ( ( ( ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p5(X)
                        | ~ p104(X) )
                    | p5(Y) )
                  & ( ! [X] :
                        ( ~ r1(Y,X)
                        | p5(X)
                        | ~ p104(X) )
                    | ~ p5(Y) ) )
                | ~ p104(Y) )
              & ( ( ( ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p4(X)
                        | ~ p103(X) )
                    | p4(Y) )
                  & ( ! [X] :
                        ( ~ r1(Y,X)
                        | p4(X)
                        | ~ p103(X) )
                    | ~ p4(Y) ) )
                | ~ p103(Y) )
              & ( ( ( ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p3(X)
                        | ~ p102(X) )
                    | p3(Y) )
                  & ( ! [X] :
                        ( ~ r1(Y,X)
                        | p3(X)
                        | ~ p102(X) )
                    | ~ p3(Y) ) )
                | ~ p102(Y) )
              & ( ( ( ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p2(X)
                        | ~ p101(X) )
                    | p2(Y) )
                  & ( ! [X] :
                        ( ~ r1(Y,X)
                        | p2(X)
                        | ~ p101(X) )
                    | ~ p2(Y) ) )
                | ~ p101(Y) )
              & ( ( ( ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p1(X)
                        | ~ p100(X) )
                    | p1(Y) )
                  & ( ! [X] :
                        ( ~ r1(Y,X)
                        | p1(X)
                        | ~ p100(X) )
                    | ~ p1(Y) ) )
                | ~ p100(Y) )
              & ( p105(Y)
                | ~ p106(Y) )
              & ( p104(Y)
                | ~ p105(Y) )
              & ( p103(Y)
                | ~ p104(Y) )
              & ( p102(Y)
                | ~ p103(Y) )
              & ( p101(Y)
                | ~ p102(Y) )
              & ( p100(Y)
                | ~ p101(Y) ) ) )
        & ~ p101(X)
        & p100(X) ) ).

%------------------------------------------------------------------------------
