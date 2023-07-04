%------------------------------------------------------------------------------
% File     : SYO609+1 : TPTP v8.1.2. Released v7.0.0.
% Domain   : Syntactic
% Problem  : RM3 problem 8
% Version  : Especial.
% English  :

% Refs     : [Pel16] Pelletier (2016), Email to Geoff Sutcliffe
%          : [PSH17] Pelletier et al. (2017), Automated Reasoning for the D
% Source   : [Pel16]
% Names    : n08.p [Pel16]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.4.0, 0.33 v7.3.0, 0.00 v7.0.0
% Syntax   : Number of formulae    :   12 (   0 unt;   0 def)
%            Number of atoms       :  106 (   0 equ)
%            Maximal formula atoms :   40 (   8 avg)
%            Number of connectives :  126 (  32   ~;  33   |;  55   &)
%                                         (   6 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   14 (   7 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   10 (  10 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   41 (  20   !;  21   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments : Translated from RM3 using the truth evaluation approach [PSH17].
%------------------------------------------------------------------------------
fof(na8_1,axiom,
    ( ! [A] :
      ? [B] : g_true_only(A,B)
    | ( ? [A] :
          ( ? [B] : g_both(A,B)
          & ~ ? [B] : g_true_only(A,B) )
      & ~ ? [A] :
          ! [B] : g_false_only(A,B) ) ) ).

fof(na8_2,axiom,
    ( ! [A,B,C] :
        ( g_false_only(A,B)
        | g_false_only(B,C)
        | g_true_only(A,C) )
    | ( ? [A] :
          ( ? [B] :
              ( ? [C] :
                  ( ( g_both(A,B)
                    | g_both(B,C) )
                  & ~ g_false_only(A,B)
                  & ~ g_false_only(B,C)
                  & g_both(A,C) )
              & ~ ? [C] :
                    ( ( g_true_only(A,B)
                      & g_true_only(B,C)
                      & ( g_both(A,C)
                        | g_false_only(A,C) ) )
                    | ( ( g_both(A,B)
                        | g_both(B,C) )
                      & ~ g_false_only(A,B)
                      & ~ g_false_only(B,C)
                      & g_false_only(A,C) ) ) )
          & ~ ? [B,C] :
                ( ( g_true_only(A,B)
                  & g_true_only(B,C)
                  & ( g_both(A,C)
                    | g_false_only(A,C) ) )
                | ( ( g_both(A,B)
                    | g_both(B,C) )
                  & ~ g_false_only(A,B)
                  & ~ g_false_only(B,C)
                  & g_false_only(A,C) ) ) )
      & ~ ? [A,B,C] :
            ( ( g_true_only(A,B)
              & g_true_only(B,C)
              & ( g_both(A,C)
                | g_false_only(A,C) ) )
            | ( ( g_both(A,B)
                | g_both(B,C) )
              & ~ g_false_only(A,B)
              & ~ g_false_only(B,C)
              & g_false_only(A,C) ) ) ) ) ).

fof(na8_3,axiom,
    ( ! [A] : g_false_only(A,A)
    | ( ? [A] : g_both(A,A)
      & ~ ? [A] : g_true_only(A,A) ) ) ).

fof(nc8,conjecture,
    ( ! [A,B] :
        ( h_false_only(A)
        | h_false_only(B)
        | g_true_only(A,B)
        | g_true_only(B,A) )
    | ( ? [A] :
          ( ? [B] :
              ( ( h_both(A)
                | h_both(B) )
              & ~ h_false_only(A)
              & ~ h_false_only(B)
              & ( g_both(A,B)
                | g_both(B,A) )
              & ~ g_true_only(A,B)
              & ~ g_true_only(B,A) )
          & ~ ? [B] :
                ( ( h_true_only(A)
                  & h_true_only(B)
                  & ( ( ( g_both(A,B)
                        | g_both(B,A) )
                      & ~ g_true_only(A,B)
                      & ~ g_true_only(B,A) )
                    | ( g_false_only(A,B)
                      & g_false_only(B,A) ) ) )
                | ( ( h_both(A)
                    | h_both(B) )
                  & ~ h_false_only(A)
                  & ~ h_false_only(B)
                  & g_false_only(A,B)
                  & g_false_only(B,A) ) ) )
      & ~ ? [A,B] :
            ( ( h_true_only(A)
              & h_true_only(B)
              & ( ( ( g_both(A,B)
                    | g_both(B,A) )
                  & ~ g_true_only(A,B)
                  & ~ g_true_only(B,A) )
                | ( g_false_only(A,B)
                  & g_false_only(B,A) ) ) )
            | ( ( h_both(A)
                | h_both(B) )
              & ~ h_false_only(A)
              & ~ h_false_only(B)
              & g_false_only(A,B)
              & g_false_only(B,A) ) ) ) ) ).

fof(true_only_h,axiom,
    ! [X_1] :
      ( h_true_only(X_1)
    <=> ( h_true(X_1)
        & ~ h_false(X_1) ) ) ).

fof(both_h,axiom,
    ! [X_1] :
      ( h_both(X_1)
    <=> ( h_true(X_1)
        & h_false(X_1) ) ) ).

fof(false_only_h,axiom,
    ! [X_1] :
      ( h_false_only(X_1)
    <=> ( h_false(X_1)
        & ~ h_true(X_1) ) ) ).

fof(exhaustion_h,axiom,
    ! [X_1] :
      ( h_true_only(X_1)
      | h_both(X_1)
      | h_false_only(X_1) ) ).

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
