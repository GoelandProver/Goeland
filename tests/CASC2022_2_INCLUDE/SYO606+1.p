%------------------------------------------------------------------------------
% File     : SYO606+1 : TPTP v8.1.0. Released v7.0.0.
% Domain   : Syntactic
% Problem  : RM3 problem 5
% Version  : Especial.
% English  :

% Refs     : [Pel16] Pelletier (2016), Email to Geoff Sutcliffe
%          : [PSH17] Pelletier et al. (2017), Automated Reasoning for the D
% Source   : [Pel16]
% Names    : n05.p [Pel16]

% Status   : Theorem
% Rating   : 0.27 v8.1.0, 0.21 v7.5.0, 0.33 v7.4.0, 0.25 v7.3.0, 0.29 v7.2.0, 0.17 v7.1.0, 0.00 v7.0.0
% Syntax   : Number of formulae    :    9 (   0 unt;   0 def)
%            Number of atoms       :   65 (   0 equ)
%            Maximal formula atoms :   41 (   7 avg)
%            Number of connectives :   70 (  14   ~;  19   |;  31   &)
%                                         (   6 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   14 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   10 (  10 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   55 (  27   !;  28   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments : Translated from RM3 using the truth evaluation approach [PSH17].
%------------------------------------------------------------------------------
fof(nc5,conjecture,
    ( ( ! [A] :
          ( ! [B] : g_false_only(A,B)
          | ? [B] : h_true_only(A,B) )
      & ! [A,B] :
        ? [C] :
          ( g_false_only(A,B)
          | h_true_only(A,C) ) )
    | ( ? [A] :
          ( ( ? [B] : g_true_only(A,B)
            & ( ( ? [B] : h_both(A,B)
                & ~ ? [B] : h_true_only(A,B) )
              | ! [B] : h_false_only(A,B) ) )
          | ( ? [B] : g_both(A,B)
            & ~ ? [B] : g_true_only(A,B)
            & ! [B] : h_false_only(A,B) ) )
      & ? [A,B] :
        ! [C] :
          ( ( g_true_only(A,B)
            & ( h_both(A,C)
              | h_false_only(A,C) ) )
          | ( g_both(A,B)
            & h_false_only(A,C) ) ) )
    | ( ? [A] :
          ( ? [B] : g_both(A,B)
          & ~ ? [B] : g_true_only(A,B)
          & ? [B] : h_both(A,B)
          & ~ ? [B] : h_true_only(A,B) )
      & ~ ? [A] :
            ( ( ? [B] : g_true_only(A,B)
              & ( ( ? [B] : h_both(A,B)
                  & ~ ? [B] : h_true_only(A,B) )
                | ! [B] : h_false_only(A,B) ) )
            | ( ? [B] : g_both(A,B)
              & ~ ? [B] : g_true_only(A,B)
              & ! [B] : h_false_only(A,B) ) )
      & ? [A] :
          ( ? [B] :
              ( ? [C] :
                  ( g_both(A,B)
                  & h_both(A,C) )
              & ~ ? [C] :
                    ( g_false_only(A,B)
                    | h_true_only(A,C) ) )
          & ~ ? [B] :
              ! [C] :
                ( ( g_true_only(A,B)
                  & ( h_both(A,C)
                    | h_false_only(A,C) ) )
                | ( g_both(A,B)
                  & h_false_only(A,C) ) ) )
      & ~ ? [A,B] :
          ! [C] :
            ( ( g_true_only(A,B)
              & ( h_both(A,C)
                | h_false_only(A,C) ) )
            | ( g_both(A,B)
              & h_false_only(A,C) ) ) ) ) ).

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

fof(true_only_h,axiom,
    ! [X_2,X_1] :
      ( h_true_only(X_2,X_1)
    <=> ( h_true(X_2,X_1)
        & ~ h_false(X_2,X_1) ) ) ).

fof(both_h,axiom,
    ! [X_2,X_1] :
      ( h_both(X_2,X_1)
    <=> ( h_true(X_2,X_1)
        & h_false(X_2,X_1) ) ) ).

fof(false_only_h,axiom,
    ! [X_2,X_1] :
      ( h_false_only(X_2,X_1)
    <=> ( h_false(X_2,X_1)
        & ~ h_true(X_2,X_1) ) ) ).

fof(exhaustion_h,axiom,
    ! [X_2,X_1] :
      ( h_true_only(X_2,X_1)
      | h_both(X_2,X_1)
      | h_false_only(X_2,X_1) ) ).

%------------------------------------------------------------------------------
