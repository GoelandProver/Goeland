%------------------------------------------------------------------------------
% File     : SYO641+1 : TPTP v8.1.2. Released v7.1.0.
% Domain   : Syntactic
% Problem  : Notref3
% Version  : Especial.
% English  :

% Refs     : [Lam17] Lampert (2017), Email to Geoff Sutcliffe
% Source   : [Lam17]
% Names    :

% Status   : Satisfiable
% Rating   : 0.00 v7.1.0, 1.00 v7.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    6 (   0 equ)
%            Maximal formula atoms :    6 (   6 avg)
%            Number of connectives :    9 (   4   ~;   3   |;   2   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (  10 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 3-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   13 (  10   !;   3   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
fof(notref3,axiom,
    ( ? [Y2,Y3] :
      ! [X7] : f(Y2,Y3,X7)
    & ! [X1] :
      ? [Y1] :
      ! [X3] :
        ( f(X3,Y1,Y1)
        | ~ f(X1,X3,Y1) )
    & ! [X2] :
        ( ! [X4,X8] : ~ f(X4,X2,X8)
        | ! [X5] :
            ( ! [X6,X9] : ~ f(X5,X6,X9)
            | ! [X10] : ~ f(X2,X5,X10) ) ) ) ).

%------------------------------------------------------------------------------
