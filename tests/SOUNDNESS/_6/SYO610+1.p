%------------------------------------------------------------------------------
% File     : SYO610+1 : TPTP v8.1.2. Released v7.0.0.
% Domain   : Syntactic
% Problem  : RM3 problem 9
% Version  : Especial.
% English  :

% Refs     : [Pel16] Pelletier (2016), Email to Geoff Sutcliffe
%          : [PSH17] Pelletier et al. (2017), Automated Reasoning for the D
% Source   : [Pel16]
% Names    : n09.p [Pel16]

% Status   : CounterSatisfiable
% Rating   : 1.00 v7.0.0
% Syntax   : Number of formulae    :    7 (   0 unt;   0 def)
%            Number of atoms       :   67 (   0 equ)
%            Maximal formula atoms :   35 (   9 avg)
%            Number of connectives :   82 (  22   ~;  20   |;  37   &)
%                                         (   3 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   14 (   8 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   5 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   40 (  16   !;  24   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments : Translated from RM3 using the truth evaluation approach [PSH17].
%------------------------------------------------------------------------------
fof(na9_1,axiom,
    ( ! [A] :
        ( ? [B] : g_true_only(A,B)
        & ? [B] : g_true_only(B,A) )
    | ( ? [A] :
          ( ( ( ? [B] : g_both(A,B)
              & ~ ? [B] : g_true_only(A,B) )
            | ( ? [B] : g_both(B,A)
              & ~ ? [B] : g_true_only(B,A) ) )
          & ~ ! [B] : g_false_only(A,B)
          & ~ ! [B] : g_false_only(B,A) )
      & ~ ? [A] :
            ( ! [B] : g_false_only(A,B)
            | ! [B] : g_false_only(B,A) ) ) ) ).

fof(na9_2,axiom,
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

fof(nc9,conjecture,
    ( ? [A,B] :
        ( g_true_only(A,B)
        & g_true_only(B,A) )
    | ( ? [A] :
          ( ? [B] :
              ( ( g_both(A,B)
                | g_both(B,A) )
              & ~ g_false_only(A,B)
              & ~ g_false_only(B,A) )
          & ~ ? [B] :
                ( g_true_only(A,B)
                & g_true_only(B,A) ) )
      & ~ ? [A,B] :
            ( g_true_only(A,B)
            & g_true_only(B,A) ) ) ) ).

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
