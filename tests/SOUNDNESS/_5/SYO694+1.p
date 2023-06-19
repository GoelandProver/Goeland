%------------------------------------------------------------------------------
% File     : SYO694+1 : TPTP v8.1.2. Released v7.4.0.
% Domain   : Syntactic
% Problem  : SuperPostulates problem sp14R2
% Version  : Especial.
% English  :

% Refs     : [Lam20] Lampert (2020), Email to Geoff Sutcliffe
%          : [LN20]  Lampert & Nakano (2020), Deciding Simple Infinity Axio
% Source   : [Lam20]
% Names    : sp14R2.p [Lam20]

% Status   : Satisfiable
% Rating   : 1.00 v7.4.0
% Syntax   : Number of formulae    :    6 (   0 unt;   0 def)
%            Number of atoms       :   17 (   0 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   20 (   9   ~;   6   |;   5   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   7 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   16 (  10   !;   6   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments : Has only infinite models.
%------------------------------------------------------------------------------
fof(axiom_1,axiom,
    ? [Y1] :
      ( f(Y1,Y1)
      & ? [Y2] :
          ( f(Y2,Y1)
          & ~ f(Y2,Y2) ) ) ).

fof(axiom_2,axiom,
    ? [Y1] :
    ! [X1] :
      ( ~ f(X1,Y1)
      | f(X1,X1) ) ).

fof(axiom_3,axiom,
    ! [X1] :
    ? [Y1] :
      ( ? [Y2] : ~ f(Y1,Y2)
      & f(Y1,X1) ) ).

fof(axiom_4,axiom,
    ! [X1] :
    ? [Y1] :
      ( f(X1,Y1)
      & ~ f(Y1,Y1)
      & ! [X2] :
          ( ~ f(X2,X2)
          | ~ f(Y1,X2) ) ) ).

fof(axiom_5,axiom,
    ! [X1,X2,X3] :
      ( ~ f(X2,X1)
      | ~ f(X3,X2)
      | f(X3,X1) ) ).

fof(axiom_6,axiom,
    ! [X1,X2] :
      ( f(X2,X1)
      | ! [X3] :
          ( f(X3,X2)
          | ~ f(X3,X1) ) ) ).

%------------------------------------------------------------------------------
