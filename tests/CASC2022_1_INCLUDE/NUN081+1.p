%------------------------------------------------------------------------------
% File     : NUN081+1 : TPTP v8.1.0. Released v7.3.0.
% Domain   : Number Theory
% Problem  : Robinson arithmetic: There exists X + Y = 3
% Version  : Especial.
% English  :

% Refs     : [BBJ03] Boolos et al. (2003), Computability and Logic
%          : [Smi07] Smith (2007), An Introduction to Goedel's Theorems
%          : [Lam18] Lampert (2018), Email to Geoff Sutcliffe
% Source   : [Lam18]
% Names    : xplusyidthree [Lam18]

% Status   : Theorem
% Rating   : 0.27 v8.1.0, 0.36 v7.5.0, 0.33 v7.4.0, 0.25 v7.3.0
% Syntax   : Number of formulae    :   19 (   1 unt;   0 def)
%            Number of atoms       :   81 (   0 equ)
%            Maximal formula atoms :    7 (   4 avg)
%            Number of connectives :   96 (  34   ~;  26   |;  36   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   8 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   5 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   74 (  47   !;  27   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments : Translated to FOL without equality.
%------------------------------------------------------------------------------
%------------------------------------------------------------------------------
% File     : NUM009+0 : TPTP v8.1.0. Released v7.3.0.
% Domain   : Number Theory
% Axioms   : Robinson arithmetic without equality
% Version  : Especial.
% English  :

% Refs     : [BBJ03] Boolos et al. (2003), Computability and Logic
%          : [Smi07] Smith (2007), An Introduction to Goedel's Theorems
%          : [Lam18] Lampert (2018), Email to Geoff Sutcliffe
% Source   : [Lam18]
% Names    :

% Status   : Satisfiable
% Rating   : ? v7.3.0
% Syntax   : Number of formulae    :   18 (   1 unt;   0 def)
%            Number of atoms       :   75 (   0 equ)
%            Maximal formula atoms :    7 (   4 avg)
%            Number of connectives :   91 (  34   ~;  26   |;  31   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   8 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   5 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   67 (  47   !;  20   ?)
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
fof(axiom_1,axiom,
    ? [Y24] :
    ! [X19] :
      ( ( id(X19,Y24)
        & r1(X19) )
      | ( ~ r1(X19)
        & ~ id(X19,Y24) ) ) ).

fof(axiom_2,axiom,
    ! [X11] :
    ? [Y21] :
    ! [X12] :
      ( ( id(X12,Y21)
        & r2(X11,X12) )
      | ( ~ r2(X11,X12)
        & ~ id(X12,Y21) ) ) ).

fof(axiom_3,axiom,
    ! [X13,X14] :
    ? [Y22] :
    ! [X15] :
      ( ( id(X15,Y22)
        & r3(X13,X14,X15) )
      | ( ~ r3(X13,X14,X15)
        & ~ id(X15,Y22) ) ) ).

fof(axiom_4,axiom,
    ! [X16,X17] :
    ? [Y23] :
    ! [X18] :
      ( ( id(X18,Y23)
        & r4(X16,X17,X18) )
      | ( ~ r4(X16,X17,X18)
        & ~ id(X18,Y23) ) ) ).

fof(axiom_5,axiom,
    ! [X20] : id(X20,X20) ).

fof(axiom_6,axiom,
    ! [X21,X22] :
      ( ~ id(X21,X22)
      | id(X22,X21) ) ).

fof(axiom_7,axiom,
    ! [X23,X24,X25] :
      ( ~ id(X23,X24)
      | id(X23,X25)
      | ~ id(X24,X25) ) ).

fof(axiom_8,axiom,
    ! [X26,X27] :
      ( ~ id(X26,X27)
      | ( ~ r1(X26)
        & ~ r1(X27) )
      | ( r1(X26)
        & r1(X27) ) ) ).

fof(axiom_9,axiom,
    ! [X28,X29,X30,X31] :
      ( ~ id(X28,X30)
      | ~ id(X29,X31)
      | ( ~ r2(X28,X29)
        & ~ r2(X30,X31) )
      | ( r2(X28,X29)
        & r2(X30,X31) ) ) ).

fof(axiom_10,axiom,
    ! [X32,X33,X34,X35,X36,X37] :
      ( ~ id(X32,X35)
      | ~ id(X33,X36)
      | ~ id(X34,X37)
      | ( ~ r3(X32,X33,X34)
        & ~ r3(X35,X36,X37) )
      | ( r3(X32,X33,X34)
        & r3(X35,X36,X37) ) ) ).

fof(axiom_11,axiom,
    ! [X38,X39,X40,X41,X42,X43] :
      ( ~ id(X38,X41)
      | ~ id(X39,X42)
      | ~ id(X40,X43)
      | ( ~ r4(X38,X39,X40)
        & ~ r4(X41,X42,X43) )
      | ( r4(X38,X39,X40)
        & r4(X41,X42,X43) ) ) ).

%----Axioms of Q
fof(axiom_1a,axiom,
    ! [X1,X8] :
    ? [Y4] :
      ( ? [Y5] :
          ( id(Y5,Y4)
          & ? [Y15] :
              ( r2(X8,Y15)
              & r3(X1,Y15,Y5) ) )
      & ? [Y7] :
          ( r2(Y7,Y4)
          & r3(X1,X8,Y7) ) ) ).

fof(axiom_2a,axiom,
    ! [X2,X9] :
    ? [Y2] :
      ( ? [Y3] :
          ( id(Y3,Y2)
          & ? [Y14] :
              ( r2(X9,Y14)
              & r4(X2,Y14,Y3) ) )
      & ? [Y6] :
          ( r3(Y6,X2,Y2)
          & r4(X2,X9,Y6) ) ) ).

fof(axiom_3a,axiom,
    ! [X3,X10] :
      ( ! [Y12] :
          ( ! [Y13] :
              ( ~ id(Y13,Y12)
              | ~ r2(X3,Y13) )
          | ~ r2(X10,Y12) )
      | id(X3,X10) ) ).

fof(axiom_4a,axiom,
    ! [X4] :
    ? [Y9] :
      ( id(Y9,X4)
      & ? [Y16] :
          ( r1(Y16)
          & r3(X4,Y16,Y9) ) ) ).

fof(axiom_5a,axiom,
    ! [X5] :
    ? [Y8] :
      ( ? [Y17] :
          ( r1(Y17)
          & r4(X5,Y17,Y8) )
      & ? [Y18] :
          ( id(Y8,Y18)
          & r1(Y18) ) ) ).

fof(axiom_6a,axiom,
    ! [X6] :
      ( ? [Y19] :
          ( id(X6,Y19)
          & r1(Y19) )
      | ? [Y1,Y11] :
          ( id(X6,Y11)
          & r2(Y1,Y11) ) ) ).

fof(axiom_7a,axiom,
    ! [X7,Y10] :
      ( ! [Y20] :
          ( ~ id(Y20,Y10)
          | ~ r1(Y20) )
      | ~ r2(X7,Y10) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(xplusyidthree,conjecture,
    ? [Y1,Y2,Y3] :
      ( r3(Y1,Y2,Y3)
      & ? [Y4] :
          ( id(Y3,Y4)
          & ? [Y5] :
              ( r2(Y5,Y4)
              & ? [Y6] :
                  ( r2(Y6,Y5)
                  & ? [Y7] :
                      ( r1(Y7)
                      & r2(Y7,Y6) ) ) ) ) ) ).

%------------------------------------------------------------------------------
