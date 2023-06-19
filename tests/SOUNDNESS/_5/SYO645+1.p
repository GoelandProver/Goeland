%------------------------------------------------------------------------------
% File     : SYO645+1 : TPTP v8.1.2. Released v7.2.0.
% Domain   : Syntactic
% Problem  : Decider test 158
% Version  : Especial.
% English  :

% Refs     : [Lam18] Lampert (2018), Email to Geoff Sutcliffe
% Source   : [Lam18]
% Names    : p158.p [Lam18]

% Status   : Satisfiable
% Rating   : 0.00 v7.3.0, 0.67 v7.2.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    6 (   0 equ)
%            Maximal formula atoms :    6 (   6 avg)
%            Number of connectives :    8 (   3   ~;   2   |;   3   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (  10 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 3-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    8 (   5   !;   3   ?)
% SPC      : FOF_SAT_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
fof(axiom_1,axiom,
    ? [Y1] :
      ( ? [Y2] :
          ( ~ f(Y1,Y1,Y2)
          & ~ f(Y1,Y2,Y1) )
      & ? [Y3] :
          ( ! [X1] : f(Y3,X1,Y1)
          & ! [X2] :
              ( ! [X3] : ~ f(X2,Y3,X3)
              | ! [X4] :
                  ( ! [X6] : f(X4,Y3,X6)
                  | f(Y1,X2,X4) ) ) ) ) ).

%------------------------------------------------------------------------------
