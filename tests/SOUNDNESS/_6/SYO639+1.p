%------------------------------------------------------------------------------
% File     : SYO639+1 : TPTP v8.1.2. Released v7.1.0.
% Domain   : Syntactic
% Problem  : Addkpairs34
% Version  : Especial.
% English  :

% Refs     : [Lam17] Lampert (2017), Email to Geoff Sutcliffe
% Source   : [Lam17]
% Names    :

% Status   : Satisfiable
% Rating   : 0.00 v7.3.0, 0.67 v7.1.0, 1.00 v7.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    9 (   0 equ)
%            Maximal formula atoms :    9 (   9 avg)
%            Number of connectives :   11 (   3   ~;   3   |;   5   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   9 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    2 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    6 (   4   !;   2   ?)
% SPC      : FOF_SAT_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
fof(addkpairs34,axiom,
    ( ? [Y1,Y2] :
        ( f(Y2,Y1)
        & f(Y2,Y2)
        & ! [X4] :
            ( g(X4,Y1)
            | g(X4,Y2) )
        & g(Y1,Y1)
        & ~ f(Y1,Y2) )
    & ! [X1] :
        ( ! [X2] : f(X1,X2)
        | ! [X3] :
            ( ~ f(X3,X1)
            | ~ g(X3,X1) ) ) ) ).

%------------------------------------------------------------------------------
