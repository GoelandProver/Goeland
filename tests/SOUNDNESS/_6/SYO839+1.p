%------------------------------------------------------------------------------
% File     : SYO839+1 : TPTP v8.1.2. Released v7.4.0.
% Domain   : Syntactic
% Problem  : Weak infinity problem weak19R1
% Version  : Especial.
% English  :

% Refs     : [Lam20] Lampert (2020), Email to Geoff Sutcliffe
%          : [LN20]  Lampert & Nakano (2020), Deciding Simple Infinity Axio
% Source   : [Lam20]
% Names    : weak19R1.p [Lam20]

% Status   : Satisfiable
% Rating   : 1.00 v7.4.0
% Syntax   : Number of formulae    :    2 (   0 unt;   0 def)
%            Number of atoms       :    5 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :    5 (   2   ~;   2   |;   1   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    5 (   4   !;   1   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments : Has only infinite models.
%------------------------------------------------------------------------------
fof(axiom_1,axiom,
    ! [X1] :
    ? [Y1] :
      ( ~ f(X1,Y1)
      & ! [X2] :
          ( f(X2,X1)
          | ~ f(X2,Y1) ) ) ).

fof(axiom_2,axiom,
    ! [X1,X2] :
      ( f(X1,X2)
      | f(X2,X1) ) ).

%------------------------------------------------------------------------------
