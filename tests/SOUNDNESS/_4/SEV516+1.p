%------------------------------------------------------------------------------
% File     : SEV516+1 : TPTP v8.1.2. Released v7.0.0.
% Domain   : Set Theory
% Problem  : Condition for no universal set
% Version  : Especial.
% English  : The antecedent says that for every set z there is a subset of 
%            it y containing just those elements x of z that are not elements 
%            of themselves. The consequent says that there is no universal set.

% Refs     : [Pel16] Pelletier (2016), Email to Geoff Sutcliffe
%          : [PSH17] Pelletier et al. (2017), Automated Reasoning for the D
% Source   : [Pel16]
% Names    : 16 [PSH17]
%          : n02.p [Pel16]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.4.0, 0.33 v7.3.0, 0.00 v7.0.0
% Syntax   : Number of formulae    :    5 (   0 unt;   0 def)
%            Number of atoms       :   84 (   0 equ)
%            Maximal formula atoms :   72 (  16 avg)
%            Number of connectives :  100 (  21   ~;  34   |;  42   &)
%                                         (   3 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   17 (   8 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   5 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   27 (  13   !;  14   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments : Translated from RM3 using the truth evaluation approach [PSH17].
%------------------------------------------------------------------------------
fof(nc2,conjecture,
    ( ? [A] :
      ! [B] :
      ? [C] :
        ( ( g_true_only(C,B)
          & ( ( ( g_both(C,A)
                | g_both(C,C) )
              & ~ g_false_only(C,A)
              & ~ g_true_only(C,C) )
            | g_false_only(C,A)
            | g_true_only(C,C) ) )
        | ( g_both(C,B)
          & ( ( g_true_only(C,A)
              & g_false_only(C,C) )
            | g_false_only(C,A)
            | g_true_only(C,C) ) )
        | ( g_false_only(C,B)
          & ( ( g_true_only(C,A)
              & g_false_only(C,C) )
            | ( ( g_both(C,A)
                | g_both(C,C) )
              & ~ g_false_only(C,A)
              & ~ g_true_only(C,C) ) ) ) )
    | ! [D] :
      ? [E] : g_false_only(E,D)
    | ( ? [A] :
          ( ? [B] :
              ( ? [C] :
                  ( g_both(C,B)
                  & ( g_both(C,A)
                    | g_both(C,C) )
                  & ~ g_false_only(C,A)
                  & ~ g_true_only(C,C) )
              & ~ ? [C] :
                    ( ( g_true_only(C,B)
                      & ( ( ( g_both(C,A)
                            | g_both(C,C) )
                          & ~ g_false_only(C,A)
                          & ~ g_true_only(C,C) )
                        | g_false_only(C,A)
                        | g_true_only(C,C) ) )
                    | ( g_both(C,B)
                      & ( ( g_true_only(C,A)
                          & g_false_only(C,C) )
                        | g_false_only(C,A)
                        | g_true_only(C,C) ) )
                    | ( g_false_only(C,B)
                      & ( ( g_true_only(C,A)
                          & g_false_only(C,C) )
                        | ( ( g_both(C,A)
                            | g_both(C,C) )
                          & ~ g_false_only(C,A)
                          & ~ g_true_only(C,C) ) ) ) ) )
          & ~ ? [B] :
              ! [C] :
                ( ( g_true_only(C,B)
                  & g_true_only(C,A)
                  & g_false_only(C,C) )
                | ( g_false_only(C,B)
                  & ( g_false_only(C,A)
                    | g_true_only(C,C) ) ) ) )
      & ~ ? [A] :
          ! [B] :
          ? [C] :
            ( ( g_true_only(C,B)
              & ( ( ( g_both(C,A)
                    | g_both(C,C) )
                  & ~ g_false_only(C,A)
                  & ~ g_true_only(C,C) )
                | g_false_only(C,A)
                | g_true_only(C,C) ) )
            | ( g_both(C,B)
              & ( ( g_true_only(C,A)
                  & g_false_only(C,C) )
                | g_false_only(C,A)
                | g_true_only(C,C) ) )
            | ( g_false_only(C,B)
              & ( ( g_true_only(C,A)
                  & g_false_only(C,C) )
                | ( ( g_both(C,A)
                    | g_both(C,C) )
                  & ~ g_false_only(C,A)
                  & ~ g_true_only(C,C) ) ) ) )
      & ? [D] :
          ( ? [E] : g_both(E,D)
          & ~ ? [E] : g_false_only(E,D) )
      & ~ ? [D] :
          ! [E] : g_true_only(E,D) ) ) ).

fof(true_only_g,axiom,
    ! [X_2,X_1] :
      ( g_true_only(X_2,X_1)
    <=> ( g_true(X_2,X_1)
        & ~ g_false(X_2,X_1) ) ) ).

fof(both_g,axiom,
    ! [X_2,X_1] :
      ( g_both(X_2,X_1)
    <=> ( g_true(X_2,X_1)
        & g_false(X_2,X_1) ) ) ).

fof(false_only_g,axiom,
    ! [X_2,X_1] :
      ( g_false_only(X_2,X_1)
    <=> ( g_false(X_2,X_1)
        & ~ g_true(X_2,X_1) ) ) ).

fof(exhaustion_g,axiom,
    ! [X_2,X_1] :
      ( g_true_only(X_2,X_1)
      | g_both(X_2,X_1)
      | g_false_only(X_2,X_1) ) ).

%------------------------------------------------------------------------------
