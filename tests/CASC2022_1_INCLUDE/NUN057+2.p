%------------------------------------------------------------------------------
% File     : NUN057+2 : TPTP v8.1.0. Released v7.3.0.
% Domain   : Number Theory
% Problem  : Robinson arithmetic: 2+2=4
% Version  : Especial.
% English  :

% Refs     : [BBJ03] Boolos et al. (2003), Computability and Logic
%          : [Smi07] Smith (2007), An Introduction to Goedel's Theorems
%          : [Lam18] Lampert (2018), Email to Geoff Sutcliffe
% Source   : [Lam18]
% Names    : twoplustwoeqfour [Lam18]

% Status   : Theorem
% Rating   : 0.42 v7.5.0, 0.53 v7.4.0, 0.37 v7.3.0
% Syntax   : Number of formulae    :   12 (   0 unt;   0 def)
%            Number of atoms       :   54 (  18 equ)
%            Maximal formula atoms :   10 (   4 avg)
%            Number of connectives :   56 (  14   ~;  10   |;  32   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   8 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   4 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   52 (  23   !;  29   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Translated to FOL with equality.
%------------------------------------------------------------------------------
%------------------------------------------------------------------------------
% File     : NUM008+0 : TPTP v8.1.0. Released v7.3.0.
% Domain   : Number Theory
% Axioms   : Robinson arithmetic with equality
% Version  : Especial.
% English  :

% Refs     : [BBJ03] Boolos et al. (2003), Computability and Logic
%          : [Smi07] Smith (2007), An Introduction to Goedel's Theorems
%          : [Lam18] Lampert (2018), Email to Geoff Sutcliffe
% Source   : [Lam18]
% Names    : 

% Status   : Satisfiable
% Rating   : ? v7.3.0
% Syntax   : Number of formulae    :   11 (   0 unt;   0 def)
%            Number of atoms       :   44 (  17 equ)
%            Maximal formula atoms :    5 (   4 avg)
%            Number of connectives :   47 (  14   ~;  10   |;  23   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   7 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   4 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   43 (  23   !;  20   ?)
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
fof(axiom_1,axiom,
    ? [Y24] :
    ! [X19] :
      ( ( ~ r1(X19)
        & X19 != Y24 )
      | ( r1(X19)
        & X19 = Y24 ) ) ).

fof(axiom_2,axiom,
    ! [X11] :
    ? [Y21] :
    ! [X12] :
      ( ( ~ r2(X11,X12)
        & X12 != Y21 )
      | ( r2(X11,X12)
        & X12 = Y21 ) ) ).

fof(axiom_3,axiom,
    ! [X13,X14] :
    ? [Y22] :
    ! [X15] :
      ( ( ~ r3(X13,X14,X15)
        & X15 != Y22 )
      | ( r3(X13,X14,X15)
        & X15 = Y22 ) ) ).

fof(axiom_4,axiom,
    ! [X16,X17] :
    ? [Y23] :
    ! [X18] :
      ( ( ~ r4(X16,X17,X18)
        & X18 != Y23 )
      | ( r4(X16,X17,X18)
        & X18 = Y23 ) ) ).

%Axioms of Q

fof(axiom_1a,axiom,
    ! [X1,X8] :
    ? [Y4] :
      ( ? [Y5] :
          ( ? [Y15] :
              ( r2(X8,Y15)
              & r3(X1,Y15,Y5) )
          & Y5 = Y4 )
      & ? [Y7] :
          ( r2(Y7,Y4)
          & r3(X1,X8,Y7) ) ) ).

fof(axiom_2a,axiom,
    ! [X2,X9] :
    ? [Y2] :
      ( ? [Y3] :
          ( ? [Y14] :
              ( r2(X9,Y14)
              & r4(X2,Y14,Y3) )
          & Y3 = Y2 )
      & ? [Y6] :
          ( r3(Y6,X2,Y2)
          & r4(X2,X9,Y6) ) ) ).

fof(axiom_3a,axiom,
    ! [X3,X10] :
      ( ! [Y12] :
          ( ! [Y13] :
              ( ~ r2(X3,Y13)
              | Y13 != Y12 )
          | ~ r2(X10,Y12) )
      | X3 = X10 ) ).

fof(axiom_4a,axiom,
    ! [X4] :
    ? [Y9] :
      ( ? [Y16] :
          ( r1(Y16)
          & r3(X4,Y16,Y9) )
      & Y9 = X4 ) ).

fof(axiom_5a,axiom,
    ! [X5] :
    ? [Y8] :
      ( ? [Y17] :
          ( r1(Y17)
          & r4(X5,Y17,Y8) )
      & ? [Y18] :
          ( r1(Y18)
          & Y8 = Y18 ) ) ).

fof(axiom_6a,axiom,
    ! [X6] :
      ( ? [Y19] :
          ( r1(Y19)
          & X6 = Y19 )
      | ? [Y1,Y11] :
          ( r2(Y1,Y11)
          & X6 = Y11 ) ) ).

fof(axiom_7a,axiom,
    ! [X7,Y10] :
      ( ! [Y20] :
          ( ~ r1(Y20)
          | Y20 != Y10 )
      | ~ r2(X7,Y10) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(twoplustwoeqfour,conjecture,
    ? [Y1] :
      ( ? [Y2] :
          ( Y1 = Y2
          & ? [Y3] :
              ( r2(Y3,Y2)
              & ? [Y4] :
                  ( r2(Y4,Y3)
                  & ? [Y6] :
                      ( r2(Y6,Y4)
                      & ? [Y8] :
                          ( r1(Y8)
                          & r2(Y8,Y6) ) ) ) ) )
      & ? [Y5] :
          ( r3(Y5,Y5,Y1)
          & ? [Y7] :
              ( r2(Y7,Y5)
              & ? [Y9] :
                  ( r1(Y9)
                  & r2(Y9,Y7) ) ) ) ) ).

%------------------------------------------------------------------------------
