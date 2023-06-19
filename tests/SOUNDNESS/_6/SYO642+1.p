%------------------------------------------------------------------------------
% File     : SYO642+1 : TPTP v8.1.2. Released v7.2.0.
% Domain   : Syntactic
% Problem  : Decider test 037
% Version  : Especial.
% English  :

% Refs     : [Lam18] Lampert (2018), Email to Geoff Sutcliffe
% Source   : [Lam18]
% Names    : p037.p [Lam18]

% Status   : Satisfiable
% Rating   : 1.00 v7.2.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    4 (   0 equ)
%            Maximal formula atoms :    4 (   4 avg)
%            Number of connectives :    5 (   2   ~;   1   |;   2   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   8 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (   2   !;   1   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
fof(axiom_1,axiom,
    ! [X1] :
    ? [Y1] :
    ! [X2] :
      ( ~ f(X1,X1)
      & f(X1,Y1)
      & ( ~ f(X2,X1)
        | f(X2,Y1) ) ) ).

%------------------------------------------------------------------------------
