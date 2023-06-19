%------------------------------------------------------------------------------
% File     : SYO644+1 : TPTP v8.1.2. Released v7.2.0.
% Domain   : Syntactic
% Problem  : Decider test 128
% Version  : Especial.
% English  :

% Refs     : [Lam18] Lampert (2018), Email to Geoff Sutcliffe
% Source   : [Lam18]
% Names    : p128.p [Lam18]

% Status   : Satisfiable
% Rating   : 1.00 v7.2.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    6 (   0 equ)
%            Maximal formula atoms :    6 (   6 avg)
%            Number of connectives :    8 (   3   ~;   2   |;   3   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   9 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    2 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (   2   !;   1   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
fof(axiom_1,axiom,
    ! [Y1] :
    ? [X] :
    ! [Y2] :
      ( p(Y1,Y1)
      & ~ q(Y1,Y1)
      & ( ~ p(Y1,Y2)
        | q(X,Y2) )
      & ( q(X,Y2)
        | ~ q(Y1,Y2) ) ) ).

%------------------------------------------------------------------------------
